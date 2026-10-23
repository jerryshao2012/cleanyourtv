package com.gathin.tvhome;

/**
 * Android 5.1 (API 21/22) compatible functional interfaces.
 * Replaces java.util.function to avoid NoSuchMethodError / NoClassDefFoundError on Android 5.
 */
final class Func {
    private Func() {}

    public interface Predicate<T> {
        boolean test(T t);
    }

    public interface Supplier<T> {
        T get();
    }

    public interface ToIntFunction<T> {
        int applyAsInt(T value);
    }

    public interface IntPredicate {
        boolean test(int value);
    }
}
