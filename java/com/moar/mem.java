package com.moar;

public class mem {

	private String uname,email,confirmpass;

	
	public mem() {
		super();
		// TODO Auto-generated constructor stub
	}


	public mem(String uname, String email, String confirmpass) {
		super();
		this.uname = uname;
		this.email = email;
		this.confirmpass = confirmpass;
	}


	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
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
	
	
	
}
