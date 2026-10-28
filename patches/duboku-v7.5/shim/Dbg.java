package com.supertws.dubokutv;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

/**
 * Android 5.1 blind-debug beacon for com.supertws.dubokutv (temporary probe build).
 * Sends startup-stage breadcrumbs and crash stack traces to the dev workstation
 * over plain HTTP GET so we can diagnose without adb. No-op if anything fails.
 */
public final class Dbg {

    /** Dev workstation on the same LAN. */
    private static final String EP = "http://192.168.87.39:8899/d?m=";

    public static void install() {
        try {
            Thread hb = new Thread(new Runnable() {
                public void run() {
                    int i = 0;
                    while (i < 180) {
                        try {
                            Thread.sleep(1000);
                        } catch (Throwable ignored) {
                        }
                        i++;
                        Runtime rt = Runtime.getRuntime();
                        long used = (rt.totalMemory() - rt.freeMemory()) / 1048576L;
                        long heapMax = rt.maxMemory() / 1048576L;
                        long nativeHeap = android.os.Debug.getNativeHeapAllocatedSize() / 1048576L;
                        long pss = -1;
                        try {
                            android.os.Debug.MemoryInfo mi = new android.os.Debug.MemoryInfo();
                            android.os.Debug.getMemoryInfo(mi);
                            pss = mi.getTotalPss() / 1024;
                        } catch (Throwable ignored2) {
                        }
                        final int fi = i;
                        int imp = -9;
                        try {
                            android.app.ActivityManager.RunningAppProcessInfo info =
                                    new android.app.ActivityManager.RunningAppProcessInfo();
                            android.app.ActivityManager.getMyMemoryState(info);
                            imp = info.importance;
                        } catch (Throwable ignored4) {
                        }
                        report("HB" + i + " java=" + used + "M/" + heapMax + "M native=" + nativeHeap + "M pss=" + pss + "M imp=" + imp, false);
                        // 帧率计：主线程 Choreographer 帧计数（窗口是否还在产出帧）
                        try {
                            final android.view.Choreographer ch = android.view.Choreographer.getInstance();
                            final java.util.concurrent.atomic.AtomicInteger frames = new java.util.concurrent.atomic.AtomicInteger(0);
                            final android.view.Choreographer.FrameCallback cb = new android.view.Choreographer.FrameCallback() {
                                public void doFrame(long t) {
                                    frames.incrementAndGet();
                                    ch.postFrameCallback(this);
                                }
                            };
                            new android.os.Handler(android.os.Looper.getMainLooper()).post(new Runnable() {
                                public void run() {
                                    ch.postFrameCallback(cb);
                                }
                            });
                            Thread.sleep(1000);
                            new android.os.Handler(android.os.Looper.getMainLooper()).post(new Runnable() {
                                public void run() {
                                    ch.removeFrameCallback(cb);
                                }
                            });
                            report("FPS" + fi + "=" + frames.get(), false);
                        } catch (Throwable ignored3) {
                        }
                        if (i % 5 == 0) {
                            StringBuilder msb = new StringBuilder("MAIN-STACK t=");
                            msb.append(i).append('\n');
                            try {
                                java.util.Map<Thread, StackTraceElement[]> all = Thread.getAllStackTraces();
                                for (java.util.Map.Entry<Thread, StackTraceElement[]> en : all.entrySet()) {
                                    if ("main".equals(en.getKey().getName())) {
                                        StackTraceElement[] st = en.getValue();
                                        int lim = Math.min(st.length, 25);
                                        for (int k = 0; k < lim; k++) {
                                            msb.append("  at ").append(st[k].toString()).append('\n');
                                        }
                                    }
                                }
                            } catch (Throwable ignored3) {
                            }
                            report(msb.toString(), false);
                        }
                    }
                }
            }, "dbg-heartbeat");
            hb.setDaemon(true);
            hb.start();
        } catch (Throwable ignored) {
        }
        try {
            java.io.File cf = new java.io.File("/sdcard/duboku_crash.txt");
            if (cf.exists()) {
                StringBuilder sb = new StringBuilder("PREVCRASH:");
                java.io.BufferedReader br = new java.io.BufferedReader(new java.io.FileReader(cf));
                String ln;
                int cnt = 0;
                sb.append('\n');
                while ((ln = br.readLine()) != null && cnt < 40) {
                    sb.append(ln).append('\n');
                    cnt++;
                }
                br.close();
                report(sb.toString(), false);
                cf.delete();
            }
        } catch (Throwable ignored2) {
        }
        try {
            final Thread.UncaughtExceptionHandler prev =
                    Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
                public void uncaughtException(Thread t, Throwable e) {
                    report("CRASH thread=" + t.getName() + "\n" + stack(e), true);
                    if ("main".equals(t.getName())) {
                        if (prev != null) {
                            prev.uncaughtException(t, e);
                        }
                    }
                    /* 非 main 线程：吞掉（进程存活，广告/SDK 功能降级运行） */
                }
            });
            stage("install-ok");
        } catch (Throwable ignored) {
        }
    }

    public static void stage(String s) {
        report("STAGE " + s + " sdk=" + android.os.Build.VERSION.SDK_INT
                + " proc=" + android.os.Process.myPid(), false);
    }

    public static void stage(String s, int v) {
        report("STAGE " + s + "=" + v + " sdk=" + android.os.Build.VERSION.SDK_INT, false);
    }

    public static String stack(Throwable e) {
        StringWriter sw = new StringWriter();
        e.printStackTrace(new PrintWriter(sw));
        return sw.toString();
    }

    private static void report(final String msg, boolean sync) {
        Thread th = new Thread(new Runnable() {
            public void run() {
                HttpURLConnection c = null;
                try {
                    String p = URLEncoder.encode(msg, "UTF-8");
                    if (p.length() > 6000) {
                        p = p.substring(0, 6000);
                    }
                    c = (HttpURLConnection) new URL(EP + p).openConnection();
                    c.setConnectTimeout(2000);
                    c.setReadTimeout(2000);
                    c.setRequestMethod("GET");
                    c.getResponseCode();
                } catch (Throwable ignored) {
                } finally {
                    if (c != null) {
                        try {
                            c.disconnect();
                        } catch (Throwable ignored2) {
                        }
                    }
                }
            }
        }, "dbg-report");
        th.setDaemon(true);
        th.start();
        if (sync) {
            try {
                th.join(3000);
            } catch (Throwable ignored) {
            }
        }
    }

    private Dbg() {
    }
}
