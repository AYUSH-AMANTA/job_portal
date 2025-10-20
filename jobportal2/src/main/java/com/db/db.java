package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class db {
	
	private static Connection  conn;
	
	

	public  static Connection  getconnet() {
		
	
		
		try {
			
			if(conn==null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","TA276450");
			 
		}}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
		
	}
}
