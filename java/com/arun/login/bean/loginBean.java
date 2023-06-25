package com.arun.login.bean;

public class loginBean {
	private String email;
	private String confirmpass;
	private String uname;
	
	
	public loginBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public loginBean(String email, String confirmpass) {
		super();
		this.email = email;
		this.confirmpass = confirmpass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getConfirmpass() {
		return confirmpass;
	}

	public void setConfirmpass(String confirmpass) {
		this.confirmpass = confirmpass;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}
	
	

}
