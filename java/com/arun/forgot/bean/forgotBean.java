package com.arun.forgot.bean;

public class forgotBean {
	
	private String authentication;
	private String email;
	
	public forgotBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public forgotBean(String authentication, String email) {
		super();
		this.email = email;
		this.authentication = authentication;
	}

	

	public String getAuthentication() {
		return authentication;
	}

	public void setAuthentication(String authentication) {
		this.authentication = authentication;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	

}
