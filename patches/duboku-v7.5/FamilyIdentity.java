package com.supertws.dubokutv;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.security.SecureRandom;
import java.util.Set;
import java.util.TreeSet;
import java.util.UUID;

/** App-private stable identity and peer roster for LAN and cloud sync. */
public final class FamilyIdentity {
    private static final String PREFS = "r2_sync_identity";
    private static final String DEVICE = "deviceId";
    private static final String FAMILY = "familyId";
    private static final String SECRET = "familySecret";
    private static final String PEERS = "peers";
    private static final SecureRandom RANDOM = new SecureRandom();
    private final SharedPreferences prefs;

    private FamilyIdentity(Context context) {
        prefs = context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static FamilyIdentity get(Context context) { return new FamilyIdentity(context); }

    public synchronized void ensure() {
        if (!prefs.contains(DEVICE)) prefs.edit().putString(DEVICE, UUID.randomUUID().toString()).apply();
        if (!prefs.contains(FAMILY) || !prefs.contains(SECRET)) {
            byte[] bytes = new byte[32]; RANDOM.nextBytes(bytes);
            prefs.edit().putString(FAMILY, UUID.randomUUID().toString())
                    .putString(SECRET, Base64.encodeToString(bytes, Base64.URL_SAFE | Base64.NO_WRAP | Base64.NO_PADDING))
                    .putLong("familyCreatedAt", System.currentTimeMillis()).apply();
        }
    }

    public String deviceId() { ensure(); return prefs.getString(DEVICE, ""); }
    public String familyId() { ensure(); return prefs.getString(FAMILY, ""); }
    public String familySecret() { ensure(); return prefs.getString(SECRET, ""); }

    public synchronized Set<String> peers() {
        TreeSet<String> peers = new TreeSet<>();
        try {
            JSONArray a = new JSONArray(prefs.getString(PEERS, "[]"));
            for (int i = 0; i < a.length(); i++) {
                String id = a.optString(i, "");
                if (validId(id) && !id.equals(deviceId())) peers.add(id);
            }
        } catch (Exception ignored) { }
        return peers;
    }

    public synchronized boolean adopt(JSONObject offer) {
        String family = offer.optString("familyId", "");
        String secret = offer.optString("familySecret", "");
        String from = offer.optString("from", "");
        if (!validId(family) || !validId(from) || !validSecret(secret)) {
            Log.w("R2Sync", "Family offer rejected: invalid fields");
            return false;
        }
        String current = familyId();
        boolean identityChanged = family.compareTo(current) <= 0
                && (!family.equals(current) || !secret.equals(familySecret()));
        TreeSet<String> oldRoster = new TreeSet<>(peers());
        TreeSet<String> roster = new TreeSet<>(oldRoster);
        JSONArray devices = offer.optJSONArray("devices");
        if (devices != null) for (int i = 0; i < devices.length(); i++) {
            String id = devices.optString(i, ""); if (validId(id) && !id.equals(deviceId())) roster.add(id);
        }
        roster.add(from);
        JSONArray saved = new JSONArray(); for (String id : roster) saved.put(id);
        SharedPreferences.Editor edit = prefs.edit().putString(PEERS, saved.toString());
        if (family.compareTo(current) <= 0) {
            if (identityChanged) {
                edit.remove("cloudAuthRejected").putLong("familyCreatedAt", System.currentTimeMillis());
            }
            edit.putString(FAMILY, family).putString(SECRET, secret);
        }
        edit.apply();
        Log.i("R2Sync", "Family offer accepted: identityChanged=" + identityChanged + " rosterChanged=" + !roster.equals(oldRoster));
        return identityChanged || !roster.equals(oldRoster);
    }

    public synchronized void addPeer(String id) {
        if (!validId(id) || id.equals(deviceId())) return;
        TreeSet<String> roster = new TreeSet<>(peers()); roster.add(id);
        JSONArray saved = new JSONArray(); for (String peer : roster) saved.put(peer);
        prefs.edit().putString(PEERS, saved.toString()).apply();
    }

    public synchronized void join(String family, String secret, JSONArray devices) {
        if (!validId(family) || !validSecret(secret)) throw new IllegalArgumentException("Invalid family credentials");
        TreeSet<String> roster = new TreeSet<>();
        if (devices != null) for (int i = 0; i < devices.length(); i++) {
            String id = devices.optString(i, "");
            if (validId(id) && !id.equals(deviceId())) roster.add(id);
        }
        JSONArray saved = new JSONArray(); for (String id : roster) saved.put(id);
        prefs.edit().putString(FAMILY, family).putString(SECRET, secret).putString(PEERS, saved.toString())
                .putLong("familyCreatedAt", System.currentTimeMillis()).remove("cloudAuthRejected").apply();
    }

    public JSONObject offer(String nonce) throws Exception {
        JSONArray devices = new JSONArray();
        devices.put(deviceId()); for (String peer : peers()) devices.put(peer);
        return new JSONObject().put("action", "FAMILY_OFFER").put("from", deviceId())
                .put("nonce", nonce).put("familyId", familyId()).put("familySecret", familySecret()).put("devices", devices);
    }

    public static boolean validId(String value) {
        try { return value != null && UUID.fromString(value).toString().equals(value); }
        catch (Exception ignored) { return false; }
    }

    public static boolean validSecret(String value) {
        try { return value != null && Base64.decode(value, Base64.URL_SAFE | Base64.NO_WRAP).length == 32; }
        catch (Exception ignored) { return false; }
    }

    public boolean isCloudSyncEnabled() {
        return prefs.getBoolean("cloudSyncEnabled", true);
    }

    public synchronized void setCloudSyncEnabled(boolean enabled) {
        prefs.edit().putBoolean("cloudSyncEnabled", enabled).apply();
    }
}
