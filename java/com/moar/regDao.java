package com.moar;

import com.moar.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.compose.ComposeBean;
import com.mo.aut;

public class regDao {

	private String dbUrl = "jdbc:mysql://localhost:3306/sigfinal";
	private String dbUname = "root";
	private String dbPassword = "chandramohan";
    private String dbDriver = "com.mysql.cj.jdbc.Driver";
    public static String name="";
    
    public void loadDriver(String dbDriver)
    {
    	try {
    		
			Class.forName(dbDriver);
			System.out.println("driver loaded");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("driver not loaded due to error");
		}
    }
    
    public Connection getConnection()
    {
    	Connection con = null;
    	try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
			System.out.println("connection established");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return con;
    }
    
    public boolean validate(mem Mem)
	{
		boolean status = false;
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "select * from sigfinal.mem where email = ?";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		name=Mem.getEmail();
		ps.setString(1, name);
		ResultSet rs = ps.executeQuery();
		status = rs.next();
		
		} catch (SQLException e) {
			// TODO Auto-generated 
          e.printStackTrace();
		}
		return status;
	}
    
    public String insert(mem Sig)
    {
    	loadDriver(dbDriver);
    	Connection con = getConnection();
    	String result = "Data entered successfully";
    	String sql = "insert into mem values(?,?,?)"; 
    
    	
    	PreparedStatement ps;  
    	try {
        ps = con.prepareStatement(sql);	
    	ps.setString(1, Sig.getUname());
    	ps.setString(2, name);
    	ps.setString(3, Sig.getConfirmpass());
    	ps.executeUpdate();
    	} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
    	}	
    	return result;
    }
    
   
    
    public String insert(aut Autmem)
    {
    	loadDriver(dbDriver);
    	Connection con = getConnection();
    	String result = "Data entered successfully";
    	String sql = "insert into aut values(?,?)"; 
    	
    	PreparedStatement ps;  
    	try {
        ps = con.prepareStatement(sql);	
        
        
    	ps.setString(1, Autmem.getAuthentication());
        ps.setString(2, name);
    	
    	
    	ps.executeUpdate();
    	} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
    	}	
    	return result;
    }

}
