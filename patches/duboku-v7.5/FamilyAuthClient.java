package com.supertws.dubokutv;

import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

/** Short-lived phone-assisted account linking for the TV family panel. */
public final class FamilyAuthClient {
    private static final String BASE = CloudSyncClient.BASE_URL;
    private FamilyAuthClient() { }

    public static JSONObject create(String familyId, String familySecret) throws Exception {
        if (!CloudSyncClient.registerFamily(familyId, familySecret)) throw new IllegalStateException("family_unavailable");
        return request("POST", "/v1/family-auth/sessions?familyId=" + enc(familyId), familySecret, null);
    }

    public static JSONObject status(String sessionId, String pollSecret) throws Exception {
        return request("GET", "/v1/family-auth/sessions/" + enc(sessionId), pollSecret, null);
    }

    public static void cancel(String sessionId, String pollSecret) throws Exception {
        request("POST", "/v1/family-auth/sessions/" + enc(sessionId) + "/cancel", pollSecret, "{}");
    }

    public static JSONObject accounts(String familyId, String familySecret) throws Exception {
        return request("GET", "/v1/families/" + enc(familyId) + "/accounts", familySecret, null);
    }

    private static JSONObject request(String method, String path, String secret, String body) throws Exception {
        HttpURLConnection connection = null;
        try {
            connection = (HttpURLConnection) new URL(BASE + path).openConnection();
            connection.setRequestMethod(method);
            connection.setConnectTimeout(5000);
            connection.setReadTimeout(5000);
            connection.setRequestProperty("Accept", "application/json");
            connection.setRequestProperty("Authorization", "Bearer " + secret);
            if (body != null) {
                connection.setDoOutput(true);
                connection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                OutputStream output = connection.getOutputStream();
                output.write(body.getBytes("UTF-8"));
                output.close();
            }
            int code = connection.getResponseCode();
            InputStream input = code >= 400 ? connection.getErrorStream() : connection.getInputStream();
            if (input == null) throw new IllegalStateException("request_failed");
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int count;
            while ((count = input.read(buffer)) >= 0) output.write(buffer, 0, count);
            input.close();
            String response = output.toString("UTF-8");
            if (code < 200 || code >= 300) throw new IllegalStateException(new JSONObject(response).optString("error", "request_failed"));
            return new JSONObject(response);
        } finally { if (connection != null) connection.disconnect(); }
    }

    private static String enc(String value) throws Exception { return URLEncoder.encode(value, "UTF-8"); }
}
