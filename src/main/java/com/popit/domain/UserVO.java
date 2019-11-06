package com.popit.domain;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;

public class UserVO {
	
	@NotNull
	@Email
	private String email;
	
	@NotNull
	@Length(min=3, max=10)
	private String name;
	
	@NotNull
	@Length(min=6, max=20)
	private String password;
	
	private Integer userpoint;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getUserpoint() {
		return userpoint;
	}
	public void setUserpoint(Integer userpoint) {
		this.userpoint = userpoint;
	}
	
}
