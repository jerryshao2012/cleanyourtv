package com.supertws.dubokutv;

public final class ProgressSnapshotUrlTest {
    public static void main(String[] args) throws Exception {
        assert ProgressSnapshot.normalizeUrl("relative/path").isEmpty();
        assert ProgressSnapshot.normalizeUrl("javascript:alert(1)").isEmpty();
        assert ProgressSnapshot.normalizeUrl("https://example.com/show").isEmpty();
        assert ProgressSnapshot.normalizeUrl("https://video.example.org/show").equals("https://video.example.org/show");
        String prefix = "https://video.example.org/";
        String maximum = prefix + new String(new char[2048 - prefix.length()]).replace('\0', 'x');
        assert maximum.length() == 2048;
        assert ProgressSnapshot.normalizeUrl(maximum).equals(maximum);
        assert ProgressSnapshot.isWorkerCompatibleUrl(maximum);
        assert ProgressSnapshot.normalizeUrl("https://video.example.org/" + new String(new char[2048]).replace('\0', 'x')).isEmpty();
        assert !ProgressSnapshot.isWorkerCompatibleUrl("relative/path");
        System.out.println("Progress snapshot URL tests passed");
    }
}
