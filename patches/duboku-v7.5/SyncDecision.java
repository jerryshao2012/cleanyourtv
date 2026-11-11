package com.supertws.dubokutv;

final class SyncDecision {
    private SyncDecision() { }

    static boolean requiresCloudUpload(boolean critical, boolean lanEnabled, boolean acknowledged) {
        return critical || !lanEnabled || !acknowledged;
    }

}
