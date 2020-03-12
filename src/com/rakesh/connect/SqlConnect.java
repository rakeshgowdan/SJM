package com.rakesh.connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class SqlConnect {

	Connection conn=null;
	public static Connection dbConnector()
	{
	    try {
	    	
	    	String url = "jdbc:mysql://localhost:3306/sjm";
	    	Class.forName ("com.mysql.jdbc.Driver").newInstance ();
	    	Connection conn = DriverManager.getConnection (url, "root", "root");
	    
	    	return conn;
	    	
	    }
	    catch(Exception e)
	    {
	    	System.out.println("Connection Error"+e);
	    	return null; 	
	    }
	}
}
