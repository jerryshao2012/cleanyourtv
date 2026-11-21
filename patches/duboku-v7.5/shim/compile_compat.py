#!/usr/bin/env python3
import subprocess, tempfile, os, shutil, zipfile

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
PATCH_DIR = os.path.dirname(SCRIPT_DIR)
JAVA_SRC = os.path.join(SCRIPT_DIR, "DubokuCompat.java")
SMALI_DEST = os.path.join(PATCH_DIR, "smali_classes3/com/supertws/dubokutv/DubokuCompat.smali")
ANDROID_JAR = os.environ.get("ANDROID_JAR", "/opt/homebrew/share/android-commandlinetools/platforms/android-34/android.jar")

def build():
    with tempfile.TemporaryDirectory() as td:
        src_dir = os.path.join(td, "src")
        def write_src(pkg, cls, code):
            p = os.path.join(src_dir, *pkg.split("."))
            os.makedirs(p, exist_ok=True)
            with open(os.path.join(p, cls + ".java"), "w") as f:
                f.write(f"package {pkg};\n{code}\n")

        write_src("okhttp3", "i", "public interface i {}")
        write_src("okhttp3", "j0", "public class j0 { public void close() {} }")
        write_src("okhttp3", "i0", "public class i0 { public int d; public j0 i; public String g(String n) { return null; } public boolean i() { return false; } }")
        write_src("okhttp3", "b0", "public class b0 { public void f(String s) {} public c0 b() { return null; } }")
        write_src("okhttp3", "c0", "public class c0 { public b0 b() { return null; } }")
        write_src("okhttp3.internal.connection", "i", "public class i implements okhttp3.i {}")
        write_src("okhttp3", "z", "public class z { public okhttp3.internal.connection.i a(c0 c) { return null; } }")
        write_src("com.google.firebase.perf.network", "FirebasePerfOkHttpClient", "public class FirebasePerfOkHttpClient { public static okhttp3.i0 execute(okhttp3.i i) throws java.io.IOException { return null; } }")

        java_files = []
        for root, _, files in os.walk(src_dir):
            for f in files:
                if f.endswith(".java"):
                    java_files.append(os.path.join(root, f))

        stub_bin = os.path.join(td, "stub_bin")
        os.makedirs(stub_bin)
        subprocess.run(["javac", "-source", "1.8", "-target", "1.8", "-d", stub_bin] + java_files, check=True)
        subprocess.run(["jar", "cf", td + "/stubs.jar", "-C", stub_bin, "."], check=True)

        compat_bin = os.path.join(td, "compat_bin")
        os.makedirs(compat_bin)
        subprocess.run(["javac", "-cp", f"{ANDROID_JAR}:{td}/stubs.jar", "-source", "1.8", "-target", "1.8", "-d", compat_bin, JAVA_SRC], check=True)

        dex_dir = os.path.join(td, "dex")
        os.makedirs(dex_dir)
        subprocess.run(["d8", "--lib", ANDROID_JAR, "--classpath", td + "/stubs.jar", "--output", dex_dir, os.path.join(compat_bin, "com/supertws/dubokutv/DubokuCompat.class")], check=True)

        apk_path = os.path.join(td, "dummy.apk")
        with zipfile.ZipFile(apk_path, "w") as z:
            z.write(os.path.join(dex_dir, "classes.dex"), "classes.dex")

        smali_out = os.path.join(td, "smali_out")
        subprocess.run(["apktool", "d", apk_path, "-o", smali_out], check=True)
        gen_smali = os.path.join(smali_out, "smali/com/supertws/dubokutv/DubokuCompat.smali")
        os.makedirs(os.path.dirname(SMALI_DEST), exist_ok=True)
        shutil.copyfile(gen_smali, SMALI_DEST)
        print(f"Successfully compiled {JAVA_SRC} -> {SMALI_DEST} ({os.path.getsize(SMALI_DEST)} bytes)")

if __name__ == "__main__":
    build()
