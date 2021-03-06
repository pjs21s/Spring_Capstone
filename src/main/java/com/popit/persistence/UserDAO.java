package com.popit.persistence;

import com.popit.domain.LoginDTO;
import com.popit.domain.UserVO;

public interface UserDAO {
	public void insertUser(UserVO uservo) throws Exception;
	
	public UserVO login(LoginDTO loginDTO) throws Exception;
	
	public void modify(LoginDTO loginDTO) throws Exception;
	
	public void withdrawal(LoginDTO loginDTO) throws Exception;
	
	public void updatePoint(String name, int userpoint) throws Exception;
	
}

