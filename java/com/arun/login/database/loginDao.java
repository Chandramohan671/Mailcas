package com.arun.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.arun.login.bean.loginBean;
import com.compose.ComposeBean;
import com.moar.mem;

public class loginDao {
	
	private String dbUrl = "jdbc:mysql://localhost:3306/sigfinal";
	private String dbUname = "root";
	private String dbPassword = "chandramohan";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	static String email="";
	public String time = new SimpleDateFormat("yyyy.MM.dd HH.mm.ss").format(new java.util.Date());
	
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
	
	public boolean validate(loginBean loginBean)
	{
		boolean status = false;
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "select * from sigfinal.mem where email = ? and confirmpass =?";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		email=loginBean.getEmail();
		ps.setString(1, email);
		ps.setString(2, loginBean.getConfirmpass());
		ResultSet rs = ps.executeQuery();
		status = rs.next();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	
public String insert(ComposeBean composeBean) {
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result="Data entered successfully";
		String sql="insert into message values(null,?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1,email);
		ps.setString(2,composeBean.getRecieverid());
		ps.setString(3,composeBean.getSubject());
		ps.setString(4,composeBean.getComposemail());
		ps.setString(5,composeBean.getFile());
		ps.setString(6, time);
	
		
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="Data not entered";
		}
		return result;
	}


public List<ComposeBean> InboxView() {
	PreparedStatement prps=null;
	ResultSet prrs=null;
	Connection con = getConnection();
	
	
	List<ComposeBean> inboxList=new ArrayList<ComposeBean>();
	String querry="select * from sigfinal.message where recieverid=? order by msid desc";
	try {
		
		prps=con.prepareStatement(querry);
		prps.setString(1, email);
		prrs=prps.executeQuery();
		
		while(prrs.next()) {
			ComposeBean inboxbean=new ComposeBean();
	
			
			inboxbean.setSenderid(prrs.getString("senderid"));
			inboxbean.setSubject(prrs.getString("subject"));
			inboxbean.setComposemail(prrs.getString("composemail"));
			inboxbean.setMsid(prrs.getString("msid"));
			inboxbean.setFile(prrs.getString("file"));
			inboxbean.setTime(prrs.getString("time"));
			
			
			inboxList.add(inboxbean);
			System.out.println(inboxList);
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return inboxList;
}
	
public List<loginBean> profileView() {
	PreparedStatement prps=null;
	ResultSet prrs=null;
	Connection con = getConnection();
	
	
	List<loginBean> list=new ArrayList<loginBean>();
	String querry="select * from sigfinal.mem where email=?";
	try {
		
		prps=con.prepareStatement(querry);
		prps.setString(1, email);
		prrs=prps.executeQuery();
		
		while(prrs.next()) {
			loginBean profilebean=new loginBean();
	
			
			profilebean.setEmail(prrs.getString("email"));
			profilebean.setUname(prrs.getString("uname"));
			
			
			list.add(profilebean);
			System.out.println(list);
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return list;
}

public List<ComposeBean> SentboxView() {
	PreparedStatement prps=null;
	ResultSet prrs=null;
	Connection con = getConnection();
	
	
	List<ComposeBean> inboxList=new ArrayList<ComposeBean>();
	String querry="select * from sigfinal.message where senderid=? order by msid desc";
	try {
		
		prps=con.prepareStatement(querry);
		prps.setString(1, email);
		prrs=prps.executeQuery();
		
		while(prrs.next()) {
			ComposeBean inboxbean=new ComposeBean();
	
			
			inboxbean.setSenderid(prrs.getString("recieverid"));
			inboxbean.setSubject(prrs.getString("subject"));
			inboxbean.setComposemail(prrs.getString("composemail"));
			inboxbean.setFile(prrs.getString("file"));
			inboxbean.setTime(prrs.getString("time"));
			
			inboxList.add(inboxbean);
			System.out.println(inboxList);
			
	
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return inboxList;
}


}
