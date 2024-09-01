package com.novacop.helper;

public class SessionStorage {
	static String userEmail;

	public static String getUserEmail() {
		return userEmail;
	}

	public static void setUserEmail(String userEmail) {
		SessionStorage.userEmail = userEmail;
	}
}
