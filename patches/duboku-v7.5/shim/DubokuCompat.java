package com.supertws.dubokutv;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class DubokuCompat {

    private static int sDnsCounter = 0;

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
        if (url != null && isChinaEnvironment() && url.contains("iyf.tv") && !url.contains("wsrv.nl")) {
            return "https://wsrv.nl/?url=" + url;
        }
        return url;
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
        try {
            okhttp3.i0 resp = com.google.firebase.perf.network.FirebasePerfOkHttpClient.execute(client.a(request));
            if (resp.i() || resp.d == 304) {
                return resp;
            }
            logImageHttpCode(url, resp.d);
            lastResp = resp;
        } catch (java.io.IOException e) {
            logImageError(url, e);
            lastEx = e;
        }

        if (isChinaEnvironment() && url != null) {
            String rawUrl = url;
            int idx = url.indexOf("?url=");
            if (idx > 0) {
                rawUrl = url.substring(idx + 5);
            }
            String[] proxies = new String[] {
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
        }
        return false;
    }

    public static java.net.InetAddress[] resolveHost(String hostname) throws java.net.UnknownHostException {
        boolean isCfHost = hostname != null && (hostname.endsWith(".dbokutv.com") || hostname.equals("dbokutv.com") || hostname.endsWith(".duboku.tv") || hostname.equals("duboku.tv") || hostname.equals("wsrv.nl") || hostname.endsWith(".wsrv.nl") || hostname.endsWith(".weserv.nl") || hostname.endsWith(".iyf.tv"));
        boolean isTmdb = hostname != null && (hostname.equals("image.tmdb.org") || hostname.endsWith(".tmdb.org"));
        if (isChinaEnvironment()) {
            if (isCfHost) {
                return getDubokuCloudflareAddresses(hostname);
            }
            if (isTmdb) {
                return getTmdbAddresses(hostname);
            }
        }
        try {
            java.net.InetAddress[] addrs = java.net.InetAddress.getAllByName(hostname);
            if (addrs != null && addrs.length > 0) {
                return addrs;
            }
        } catch (Throwable ignored) {
        }
        if (isCfHost) {
            return getDubokuCloudflareAddresses(hostname);
        }
        if (isTmdb) {
            return getTmdbAddresses(hostname);
        }
        throw new java.net.UnknownHostException(hostname);
    }

    private static java.net.InetAddress[] getDubokuCloudflareAddresses(String hostname) throws java.net.UnknownHostException {
        java.net.InetAddress[] all = new java.net.InetAddress[] {
            java.net.InetAddress.getByAddress(hostname, new byte[] { (byte) 104, (byte) 26, (byte) 2, (byte) 208 }),
            java.net.InetAddress.getByAddress(hostname, new byte[] { (byte) 104, (byte) 26, (byte) 3, (byte) 208 }),
            java.net.InetAddress.getByAddress(hostname, new byte[] { (byte) 172, (byte) 67, (byte) 73, (byte) 62 })
        };
        int offset = (sDnsCounter++ & 0x7fffffff) % all.length;
        java.net.InetAddress[] rotated = new java.net.InetAddress[all.length];
        for (int i = 0; i < all.length; i++) {
            rotated[i] = all[(i + offset) % all.length];
        }
        return rotated;
    }

    private static java.net.InetAddress[] getTmdbAddresses(String hostname) throws java.net.UnknownHostException {
        java.net.InetAddress[] all = new java.net.InetAddress[] {
            java.net.InetAddress.getByAddress(hostname, new byte[] { (byte) 143, (byte) 244, (byte) 50, (byte) 83 }),
            java.net.InetAddress.getByAddress(hostname, new byte[] { (byte) 143, (byte) 244, (byte) 50, (byte) 88 }),
            java.net.InetAddress.getByAddress(hostname, new byte[] { (byte) 143, (byte) 244, (byte) 50, (byte) 212 }),
            java.net.InetAddress.getByAddress(hostname, new byte[] { (byte) 169, (byte) 150, (byte) 249, (byte) 164 })
        };
        int offset = (sDnsCounter++ & 0x7fffffff) % all.length;
        java.net.InetAddress[] rotated = new java.net.InetAddress[all.length];
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

    private DubokuCompat() {
    }
}
