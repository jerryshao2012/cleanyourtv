package com.supertws.dubokutv;

public final class SyncDecisionTest {
    public static void main(String[] args) {
        assert SyncDecision.requiresCloudUpload(true, true, true);
        assert SyncDecision.requiresCloudUpload(false, false, false);
        assert !SyncDecision.requiresCloudUpload(false, true, true);
        assert SyncDecision.requiresCloudUpload(false, true, false);
        System.out.println("Sync decision tests passed");
    }
}
