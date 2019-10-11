package com.popit.domain;

public class LoginDTO {
	
	private String email;
	private String password;
	private String name;
	
	private boolean useCookie;
	
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
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	@Override
	public String toString() {
		return "LoginDTO [email=" + email + ", password=" + password + ", name=" + name + ", useCookie=" + useCookie
				+ "]";
	}
}
