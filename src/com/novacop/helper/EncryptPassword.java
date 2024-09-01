package com.novacop.helper;

import org.mindrot.jbcrypt.BCrypt;

public class EncryptPassword {
	public static String encrpytPassword(String password){
		String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
		return hashedPassword;
	}
	public static Boolean checkPassword(String userInputPassword,String password){
		return BCrypt.checkpw(userInputPassword, password);
	}
}
