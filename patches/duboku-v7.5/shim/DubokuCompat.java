package com.supertws.dubokutv;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/** API 23 资源及网络兼容层：调用方保持直线字节码（规避 ART 5.1 校验器对分支补丁的拒绝）。 */
public final class DubokuCompat {

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
        return null; /* API22 无此方法；调用方均有 null 处理路径 */
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
        /* API<23: legacy 七参构造 */
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
        if (Build.VERSION.SDK_INT < 26 && url != null && url.startsWith("https://")) {
            return "http://" + url.substring(8);
        }
        return url;
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

    private DubokuCompat() {
    }
}
