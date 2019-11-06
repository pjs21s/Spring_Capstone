package com.popit.domain;

public class LoginDTO {
	
	private String email;
	private String password;
	private String name;
	private Integer userpoint;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "LoginDTO [email=" + email + ", password=" + password + ", name=" + name + ", userpoint=" + userpoint
				+ "]";
	}
	
	
}
