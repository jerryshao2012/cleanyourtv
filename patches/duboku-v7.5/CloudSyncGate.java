package com.supertws.dubokutv;

final class CloudSyncGate {
    private long requested;
    private long completed;

    synchronized void requestRead() { requested++; }
    synchronized long beginRead() { return requested; }
    synchronized boolean isCurrent(long generation) { return generation == requested; }
    synchronized void completeRead(long generation, boolean success) {
        if (success && generation > completed) completed = generation;
    }
    synchronized boolean mayUpload() { return requested == completed; }
}
