package com.supertws.dubokutv;
public class HandoffProgressTest {
    public static void main(String[] args) {
        HandoffProgress p = new HandoffProgress();
        p.offer("show", "第2集", 60000, "episode2", 20);
        p.offer("show", "第2集", 30000, "old", 10);
        assert p.select("show", "第2集", 10000) != null;
        assert p.select("show", "第2集", 61000) == null;
        assert p.select("other", "第2集", 0) == null;
        assert p.select("show", "第3集", 0) == null;
        assert p.select("show", "第1集", 0) != null;
        assert p.select("show", "第2集", 59000) == null;
        System.out.println("Handoff progress tests passed");
    }
}
