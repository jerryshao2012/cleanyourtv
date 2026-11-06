package com.supertws.dubokutv;

public final class FamilyIdentityTest {
    public static void main(String[] args) {
        assert FamilyIdentity.validId("00000000-0000-0000-0000-000000000001");
        assert !FamilyIdentity.validId("not-a-uuid");
        assert !FamilyIdentity.validId("00000000-0000-0000-0000-00000000000A");
        assert ProgressSnapshot.winsEqualTimestamp(7, 6, 0, 999);
        assert ProgressSnapshot.winsEqualTimestamp(7, 7, 1001, 1000);
        assert !ProgressSnapshot.winsEqualTimestamp(6, 7, 9999, 0);
        assert !ProgressSnapshot.winsEqualTimestamp(7, 7, 1000, 1000);
    }
}
