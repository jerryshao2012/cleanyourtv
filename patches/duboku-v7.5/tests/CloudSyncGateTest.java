package com.supertws.dubokutv;

public final class CloudSyncGateTest {
    public static void main(String[] args) {
        CloudSyncGate gate = new CloudSyncGate();
        gate.requestRead();
        assert !gate.mayUpload();
        long first = gate.beginRead();
        assert gate.isCurrent(first);
        gate.requestRead();
        assert !gate.isCurrent(first);
        gate.completeRead(first, true);
        assert !gate.mayUpload();
        long second = gate.beginRead();
        gate.completeRead(second, false);
        assert !gate.mayUpload();
        gate.completeRead(gate.beginRead(), true);
        assert gate.mayUpload();
        gate.requestRead();
        long pending = gate.beginRead();
        gate.completeRead(pending, false);
        assert !gate.mayUpload();
        gate.requestRead();
        gate.completeRead(pending, true);
        assert !gate.mayUpload();
        gate.completeRead(gate.beginRead(), true);
        assert gate.mayUpload();
        System.out.println("Cloud sync gate tests passed");
    }
}
