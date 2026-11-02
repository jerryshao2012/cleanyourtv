package com.supertws.dubokutv;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class HandoffProgress {
    static final class Record {
        final String episode, url;
        final long position, modified;
        Record(String episode, long position, String url, long modified) {
            this.episode = episode;
            this.position = position;
            this.url = url;
            this.modified = modified;
        }
    }
    private final HashMap<String, Record> records = new HashMap<>();
    private static final Pattern NUMBER = Pattern.compile("(\\d+)");

    synchronized void offer(String name, String episode, long position, String url, long modified) {
        if (name == null || name.isEmpty() || episode == null || episode.isEmpty() || position < 0 || modified <= 0) return;
        Record previous = records.get(name);
        if (previous == null || modified > previous.modified || (modified == previous.modified && position > previous.position)) {
            records.put(name, new Record(episode, position, url, modified));
        }
    }

    synchronized Record select(String name, String episode, long position) {
        Record remote = records.get(name);
        if (remote == null || episode == null) return null;
        if (remote.episode.equals(episode)) return remote.position > position + 5000 ? remote : null;
        Matcher current = NUMBER.matcher(episode), target = NUMBER.matcher(remote.episode);
        if (!current.find() || !target.find()) return null;
        try {
            return Long.parseLong(target.group(1)) > Long.parseLong(current.group(1)) ? remote : null;
        } catch (NumberFormatException ignored) {
            return null;
        }
    }
}
