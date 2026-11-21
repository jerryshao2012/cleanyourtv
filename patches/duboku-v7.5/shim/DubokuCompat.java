package com.supertws.dubokutv;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
import javax.net.ssl.SSLSocket;

public final class DubokuCompat {

    private static int sDnsCounter = 0;
    private static File sCacheFile = null;
    private static final Properties sCacheProps = new Properties();
    private static final Object sLock = new Object();
    private static boolean sPropsLoaded = false;

    // Default Seed IPs (Cloudflare & TMDB)
    private static final byte[][] DEFAULT_CF_IPS = new byte[][] {
        new byte[] { (byte) 104, (byte) 26, (byte) 2, (byte) 208 },
        new byte[] { (byte) 104, (byte) 26, (byte) 3, (byte) 208 },
        new byte[] { (byte) 172, (byte) 67, (byte) 73, (byte) 62 }
    };

    private static final byte[][] DEFAULT_TMDB_IPS = new byte[][] {
        new byte[] { (byte) 143, (byte) 244, (byte) 50, (byte) 83 },
        new byte[] { (byte) 143, (byte) 244, (byte) 50, (byte) 88 },
        new byte[] { (byte) 143, (byte) 244, (byte) 50, (byte) 212 },
        new byte[] { (byte) 169, (byte) 150, (byte) 249, (byte) 164 }
    };

    public static void init(Context context) {
        if (context == null) return;
        synchronized (sLock) {
            try {
                File filesDir = context.getFilesDir();
                if (filesDir != null) {
                    sCacheFile = new File(filesDir, "duboku_net_cache.properties");
                    loadPropsLocked();
                }
            } catch (Throwable t) {
                logWarn("init failed: " + t);
            }
        }
    }

    private static void loadPropsLocked() {
        if (sPropsLoaded || sCacheFile == null || !sCacheFile.exists()) {
            sPropsLoaded = true;
            return;
        }
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(sCacheFile);
            sCacheProps.load(fis);
            sPropsLoaded = true;
            pruneStaleLocked();
        } catch (Throwable t) {
            logWarn("loadProps failed: " + t);
        } finally {
            if (fis != null) {
                try { fis.close(); } catch (Throwable ignored) {}
            }
        }
    }

    private static void savePropsLocked() {
        if (sCacheFile == null) return;
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(sCacheFile);
            sCacheProps.store(fos, "Duboku Network Cache");
        } catch (Throwable t) {
            logWarn("saveProps failed: " + t);
        } finally {
            if (fos != null) {
                try { fos.close(); } catch (Throwable ignored) {}
            }
        }
    }

    private static void pruneStaleLocked() {
        long now = System.currentTimeMillis();
        long maxAge = 14L * 24L * 3600L * 1000L; // 14 days
        boolean changed = false;
        Enumeration<?> e = sCacheProps.propertyNames();
        List<String> toRemove = new ArrayList<String>();
        while (e.hasMoreElements()) {
            String key = (String) e.nextElement();
            String val = sCacheProps.getProperty(key);
            if (val != null) {
                int pipe = val.indexOf('|');
                if (pipe >= 0) {
                    try {
                        long ts = Long.parseLong(val.substring(pipe + 1).trim());
                        if (now - ts > maxAge) {
                            toRemove.add(key);
                        }
                    } catch (Throwable ignored) {
                        toRemove.add(key);
                    }
                }
            }
        }
        for (String k : toRemove) {
            sCacheProps.remove(k);
            changed = true;
        }
        // Cap total properties to 64 items to avoid unbounded growth
        if (sCacheProps.size() > 64) {
            sCacheProps.clear();
            changed = true;
        }
        if (changed) {
            savePropsLocked();
        }
    }

    public static void evictHost(String hostname) {
        if (hostname == null) return;
        synchronized (sLock) {
            boolean changed = false;
            String key = "dns." + hostname;
            if (sCacheProps.containsKey(key)) {
                sCacheProps.remove(key);
                changed = true;
            }
            if (changed) {
                savePropsLocked();
            }
        }
    }

    public static void markProxyHost(String hostname) {
        if (hostname == null) return;
        synchronized (sLock) {
            sCacheProps.setProperty("proxy." + hostname, String.valueOf(System.currentTimeMillis()));
            savePropsLocked();
        }
    }

    public static boolean isProxyHost(String hostname) {
        if (hostname == null) return false;
        if (hostname.contains("iyf.tv")) return true;
        synchronized (sLock) {
            String val = sCacheProps.getProperty("proxy." + hostname);
            if (val != null) {
                try {
                    long ts = Long.parseLong(val.trim());
                    // Active for 7 days
                    if (System.currentTimeMillis() - ts < 7L * 24L * 3600L * 1000L) {
                        return true;
                    }
                } catch (Throwable ignored) {}
            }
        }
        return false;
    }

    public static Drawable getDrawable(Resources res, int id, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 23) {
            return res.getDrawable(id, theme);
        }
        return res.getDrawable(id);
    }

    public static int getColor(Resources res, int id, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 23) {
            return res.getColor(id, theme);
        }
        return res.getColor(id);
    }

    public static android.net.Network getActiveNetwork(android.net.ConnectivityManager cm) {
        if (Build.VERSION.SDK_INT >= 23) {
            return cm.getActiveNetwork();
        }
        return null;
    }

    public static android.graphics.Point getDisplayModeSize(android.view.Display display) {
        if (Build.VERSION.SDK_INT >= 23) {
            android.view.Display.Mode m = display.getMode();
            return new android.graphics.Point(m.getPhysicalWidth(), m.getPhysicalHeight());
        }
        android.graphics.Point p = new android.graphics.Point();
        display.getRealSize(p);
        return p;
    }

    public static android.media.AudioTrack createAudioTrack(
            android.media.AudioAttributes attrs, int sampleRate, int channelConfig,
            int encoding, int bufferSizeInBytes, int sessionId, int transferMode) {
        if (Build.VERSION.SDK_INT >= 23) {
            android.media.AudioFormat fmt = new android.media.AudioFormat.Builder()
                    .setSampleRate(sampleRate)
                    .setChannelMask(channelConfig)
                    .setEncoding(encoding)
                    .build();
            return new android.media.AudioTrack.Builder()
                    .setAudioAttributes(attrs)
                    .setAudioFormat(fmt)
                    .setTransferMode(transferMode)
                    .setBufferSizeInBytes(bufferSizeInBytes)
                    .setSessionId(sessionId)
                    .build();
        }
        int usage = attrs != null ? attrs.getUsage() : android.media.AudioAttributes.USAGE_MEDIA;
        int streamType = android.media.AudioManager.STREAM_MUSIC;
        if (usage == android.media.AudioAttributes.USAGE_ALARM) {
            streamType = android.media.AudioManager.STREAM_ALARM;
        } else if (usage == android.media.AudioAttributes.USAGE_NOTIFICATION_RINGTONE) {
            streamType = android.media.AudioManager.STREAM_RING;
        } else if (usage == android.media.AudioAttributes.USAGE_NOTIFICATION) {
            streamType = android.media.AudioManager.STREAM_NOTIFICATION;
        } else if (usage == android.media.AudioAttributes.USAGE_VOICE_COMMUNICATION) {
            streamType = android.media.AudioManager.STREAM_VOICE_CALL;
        }
        return new android.media.AudioTrack(streamType, sampleRate, channelConfig,
                encoding, bufferSizeInBytes, transferMode, sessionId);
    }

    public static int writeAudioTrack(android.media.AudioTrack track, java.nio.ByteBuffer buffer, int sizeInBytes, int writeMode) {
        if (Build.VERSION.SDK_INT < 23) {
            writeMode = 0;
        }
        return track.write(buffer, sizeInBytes, writeMode);
    }

    public static String fixImageUrl(String url) {
        url = rewriteChinaImageUrl(url);
        if (Build.VERSION.SDK_INT < 26) {
            if (url != null && url.startsWith("https://")) {
                return "http://" + url.substring(8);
            }
        }
        return url;
    }

    public static String rewriteChinaImageUrl(String url) {
        if (url != null && isChinaEnvironment()) {
            String host = extractHost(url);
            if (isProxyHost(host) && !url.contains("cleanyourtv-img-proxy.netlify.app") && !url.contains("wsrv.nl") && !url.contains("weserv.nl")) {
                return "https://cleanyourtv-img-proxy.netlify.app/img?url=" + url;
            }
        }
        return url;
    }

    private static String extractHost(String url) {
        if (url == null) return null;
        try {
            int start = url.indexOf("://");
            if (start < 0) return null;
            start += 3;
            int end = url.indexOf('/', start);
            int colon = url.indexOf(':', start);
            if (colon >= 0 && (end < 0 || colon < end)) {
                end = colon;
            }
            if (end < 0) end = url.length();
            return url.substring(start, end);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String applySchemeCompat(String url) {
        if (Build.VERSION.SDK_INT < 26 && url != null && url.startsWith("https://")) {
            return "http://" + url.substring(8);
        }
        return url;
    }

    public static okhttp3.i0 executeImageRequest(okhttp3.z client, okhttp3.c0 request, String url) throws java.io.IOException {
        java.io.IOException lastEx = null;
        okhttp3.i0 lastResp = null;
        String curUrl = url;

        // Try direct request with redirect following (up to 3 hops)
        for (int hop = 0; hop < 3; hop++) {
            okhttp3.c0 curReq = request;
            if (!curUrl.equals(url)) {
                okhttp3.b0 b = request.b();
                b.f(curUrl);
                curReq = b.b();
            }
            try {
                okhttp3.i0 resp = com.google.firebase.perf.network.FirebasePerfOkHttpClient.execute(client.a(curReq));
                if (resp.i() || resp.d == 304) {
                    return resp;
                }
                // Handle 301, 302, 307, 308 redirects
                if (resp.d == 301 || resp.d == 302 || resp.d == 307 || resp.d == 308) {
                    String loc = resp.g("Location");
                    if (loc != null && !loc.isEmpty()) {
                        logImageHttpCode(curUrl, resp.d);
                        if (resp.i != null) {
                            try { resp.i.close(); } catch (Throwable ignored) {}
                        }
                        curUrl = applySchemeCompat(loc);
                        continue;
                    }
                }
                // Check 403 or 451 hotlink/geo-blocking
                if ((resp.d == 403 || resp.d == 451) && isChinaEnvironment()) {
                    String h = extractHost(curUrl);
                    if (h != null) {
                        markProxyHost(h);
                    }
                }
                logImageHttpCode(curUrl, resp.d);
                lastResp = resp;
                break;
            } catch (java.io.IOException e) {
                logImageError(curUrl, e);
                lastEx = e;
                String h = extractHost(curUrl);
                if (h != null) {
                    evictHost(h);
                }
                break;
            }
        }

        // Retry via proxy fallbacks on any direct failure
        if (url != null) {
            String rawUrl = url;
            int idx = url.indexOf("?url=");
            if (idx > 0) {
                rawUrl = url.substring(idx + 5);
            }
            String[] proxies = new String[] {
                "https://cleanyourtv-img-proxy.netlify.app/img?url=" + rawUrl,
                "https://wsrv.nl/?url=" + rawUrl,
                "https://images.weserv.nl/?url=" + rawUrl
            };
            for (String p : proxies) {
                String target = applySchemeCompat(p);
                if (target.equals(url)) {
                    continue;
                }
                if (lastResp != null && lastResp.i != null) {
                    try {
                        lastResp.i.close();
                    } catch (Throwable ignored) {
                    }
                    lastResp = null;
                }
                try {
                    okhttp3.b0 b = request.b();
                    b.f(target);
                    okhttp3.i0 retryResp = com.google.firebase.perf.network.FirebasePerfOkHttpClient.execute(client.a(b.b()));
                    if (retryResp.i() || retryResp.d == 304) {
                        String rawHost = extractHost(rawUrl);
                        if (rawHost != null) {
                            markProxyHost(rawHost);
                        }
                        android.util.Log.e("DubokuImg", "RETRY_OK " + target);
                        return retryResp;
                    }
                    logImageHttpCode(target, retryResp.d);
                    lastResp = retryResp;
                } catch (java.io.IOException e2) {
                    logImageError(target, e2);
                    lastEx = e2;
                }
            }
        }

        if (lastResp != null) {
            return lastResp;
        }
        if (lastEx != null) {
            throw lastEx;
        }
        return com.google.firebase.perf.network.FirebasePerfOkHttpClient.execute(client.a(request));
    }

    public static boolean isChinaEnvironment() {
        try {
            String tz = java.util.TimeZone.getDefault().getID();
            if (tz != null && (tz.contains("Shanghai") || tz.contains("Chongqing") || tz.contains("Harbin") || tz.contains("Urumqi") || tz.contains("Asia/Beijing") || tz.contains("PRC") || tz.contains("GMT+08:00") || tz.contains("GMT+8"))) {
                return true;
            }
            String country = java.util.Locale.getDefault().getCountry();
            if (country != null && "CN".equalsIgnoreCase(country)) {
                return true;
            }
        } catch (Throwable ignored) {
            // Ignore reflection / security issues
        }
        return false;
    }

    public static InetAddress[] resolveHost(String hostname) throws UnknownHostException {
        if (hostname == null || hostname.isEmpty()) {
            throw new UnknownHostException("Empty host");
        }

        boolean isCfHost = hostname.endsWith(".dbokutv.com") || hostname.equals("dbokutv.com")
                || hostname.endsWith(".duboku.tv") || hostname.equals("duboku.tv")
                || hostname.equals("wsrv.nl") || hostname.endsWith(".wsrv.nl")
                || hostname.endsWith(".weserv.nl") || hostname.endsWith(".iyf.tv");
        boolean isTmdb = hostname.equals("image.tmdb.org") || hostname.endsWith(".tmdb.org");

        if (isChinaEnvironment()) {
            // 1. Check disk-persisted / memory cache (< 24h)
            InetAddress[] cached = getCachedAddresses(hostname);
            if (cached != null && cached.length > 0) {
                return rotate(cached);
            }

            // 2. Query HTTPDNS (119.29.29.29)
            InetAddress[] httpDnsAddrs = queryHttpDns(hostname);
            if (httpDnsAddrs != null && httpDnsAddrs.length > 0) {
                putCachedAddresses(hostname, httpDnsAddrs);
                return rotate(httpDnsAddrs);
            }

            // 3. Fallback to hardcoded seed IPs if known CF or TMDB domain
            if (isCfHost) {
                return rotate(getSeedAddresses(hostname, DEFAULT_CF_IPS));
            }
            if (isTmdb) {
                return rotate(getSeedAddresses(hostname, DEFAULT_TMDB_IPS));
            }
        }

        // Overseas or non-China: standard system DNS resolution
        try {
            InetAddress[] addrs = InetAddress.getAllByName(hostname);
            if (addrs != null && addrs.length > 0) {
                return addrs;
            }
        } catch (Throwable ignored) {}

        if (isCfHost) {
            return rotate(getSeedAddresses(hostname, DEFAULT_CF_IPS));
        }
        if (isTmdb) {
            return rotate(getSeedAddresses(hostname, DEFAULT_TMDB_IPS));
        }
        throw new UnknownHostException(hostname);
    }

    private static InetAddress[] getCachedAddresses(String hostname) {
        synchronized (sLock) {
            String val = sCacheProps.getProperty("dns." + hostname);
            if (val != null) {
                int pipe = val.indexOf('|');
                if (pipe > 0) {
                    try {
                        long ts = Long.parseLong(val.substring(pipe + 1).trim());
                        // 24-hour DNS TTL
                        if (System.currentTimeMillis() - ts < 24L * 3600L * 1000L) {
                            String[] ipStrs = val.substring(0, pipe).split(",");
                            List<InetAddress> list = new ArrayList<InetAddress>();
                            for (String ipStr : ipStrs) {
                                byte[] ipBytes = parseIpv4Bytes(ipStr.trim());
                                if (ipBytes != null) {
                                    list.add(InetAddress.getByAddress(hostname, ipBytes));
                                }
                            }
                            if (!list.isEmpty()) {
                                return list.toArray(new InetAddress[0]);
                            }
                        }
                    } catch (Throwable ignored) {}
                }
            }
        }
        return null;
    }

    private static void putCachedAddresses(String hostname, InetAddress[] addrs) {
        if (hostname == null || addrs == null || addrs.length == 0) return;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < addrs.length; i++) {
            if (i > 0) sb.append(',');
            sb.append(addrs[i].getHostAddress());
        }
        sb.append('|').append(System.currentTimeMillis());
        synchronized (sLock) {
            sCacheProps.setProperty("dns." + hostname, sb.toString());
            savePropsLocked();
        }
    }

    private static InetAddress[] queryHttpDns(String hostname) {
        HttpURLConnection conn = null;
        try {
            URL u = new URL("http://119.29.29.29/d?dn=" + hostname);
            conn = (HttpURLConnection) u.openConnection();
            conn.setConnectTimeout(1500);
            conn.setReadTimeout(1500);
            conn.setUseCaches(false);
            if (conn.getResponseCode() == 200) {
                BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                String line = reader.readLine();
                reader.close();
                if (line != null && !line.trim().isEmpty()) {
                    String[] parts = line.trim().split(";");
                    List<InetAddress> list = new ArrayList<InetAddress>();
                    for (String part : parts) {
                        byte[] ip = parseIpv4Bytes(part.trim());
                        if (ip != null) {
                            list.add(InetAddress.getByAddress(hostname, ip));
                        }
                    }
                    if (!list.isEmpty()) {
                        return list.toArray(new InetAddress[0]);
                    }
                }
            }
        } catch (Throwable t) {
            logWarn("queryHttpDns failed for " + hostname + ": " + t);
        } finally {
            if (conn != null) {
                try { conn.disconnect(); } catch (Throwable ignored) {}
            }
        }
        return null;
    }

    private static byte[] parseIpv4Bytes(String ipStr) {
        if (ipStr == null) return null;
        String[] parts = ipStr.split("\\.");
        if (parts.length != 4) return null;
        try {
            byte[] b = new byte[4];
            for (int i = 0; i < 4; i++) {
                int val = Integer.parseInt(parts[i]);
                if (val < 0 || val > 255) return null;
                b[i] = (byte) val;
            }
            return b;
        } catch (Throwable t) {
            return null;
        }
    }

    private static InetAddress[] getSeedAddresses(String hostname, byte[][] seedIps) throws UnknownHostException {
        InetAddress[] addrs = new InetAddress[seedIps.length];
        for (int i = 0; i < seedIps.length; i++) {
            addrs[i] = InetAddress.getByAddress(hostname, seedIps[i]);
        }
        return addrs;
    }

    private static InetAddress[] rotate(InetAddress[] all) {
        if (all == null || all.length <= 1) return all;
        int offset = (sDnsCounter++ & 0x7fffffff) % all.length;
        InetAddress[] rotated = new InetAddress[all.length];
        for (int i = 0; i < all.length; i++) {
            rotated[i] = all[(i + offset) % all.length];
        }
        return rotated;
    }

    public static void enableTls12(SSLSocket socket) {
        if (Build.VERSION.SDK_INT < 26) {
            try {
                String[] supported = socket.getSupportedProtocols();
                if (supported != null) {
                    boolean hasTls12 = false;
                    for (String p : supported) {
                        if ("TLSv1.2".equals(p)) {
                            hasTls12 = true;
                            break;
                        }
                    }
                    if (hasTls12) {
                        String[] enabled = socket.getEnabledProtocols();
                        List<String> list = new ArrayList<String>();
                        if (enabled != null) {
                            list.addAll(Arrays.asList(enabled));
                        }
                        if (!list.contains("TLSv1.2")) {
                            list.add("TLSv1.2");
                        }
                        if (!list.contains("TLSv1.1")) {
                            list.add("TLSv1.1");
                        }
                        socket.setEnabledProtocols(list.toArray(new String[0]));
                    }
                }
            } catch (Throwable ignored) {
            }
        }
    }

    public static void logImageError(String url, Throwable t) {
        try {
            android.util.Log.e("DubokuImg", "FAIL url=" + url + " err=" + t);
        } catch (Throwable ignored) {
        }
    }

    public static void logImageHttpCode(String url, int code) {
        try {
            android.util.Log.e("DubokuImg", "HTTP " + code + " url=" + url);
        } catch (Throwable ignored) {
        }
    }

    private static void logWarn(String msg) {
        try {
            android.util.Log.w("DubokuCompat", msg);
        } catch (Throwable ignored) {
        }
    }

    private DubokuCompat() {
    }
}
