package com.novacop.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectToDB {
	static Connection con = null;
	public static Connection connect(){
		if(con==null){
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vidhyarachna","root","");
			} catch (Exception e) {
				System.err.println("Something Went Wrong");
				e.printStackTrace();
			}
		}
		return con;
	}
	
}
