package com.arun.forgot.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.arun.forgot.bean.forgotBean;
import com.changepass.chaglast;



public class forgotDao {
        
	private String dbUrl = "jdbc:mysql://localhost:3306/sigfinal";
	private String dbUname = "root";
	private String dbPassword = "chandramohan";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	static String var=" ";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public boolean validate(forgotBean forgotBean)
	{
		boolean status = false;
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "select * from sigfinal.aut where authentication =? and email=?";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		
		var=forgotBean.getEmail();
		ps.setString(1, forgotBean.getAuthentication());
		ps.setString(2,var);
		ResultSet rs = ps.executeQuery();
		status = rs.next();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	 public String insert(chaglast Change)
	    {
	    	loadDriver(dbDriver);
	    	Connection con = getConnection();
	    	String result = "Password changed successfully";
	    	String sql = "update sigfinal.mem set confirmpass=? where email=?"; 
	    	
	    	PreparedStatement ps;  
	    	try {
	        ps = con.prepareStatement(sql);	
	        
	        ps.setString(1, Change.getConfirmpass());
	        ps.setString(2,var);
	    	    	ps.executeUpdate();
	    	} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				result = "Data not entered";
	    	}	
	    	return result;
	    }
	}
