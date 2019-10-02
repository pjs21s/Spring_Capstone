package com.popit.persistence;

import com.popit.domain.LoginDTO;
import com.popit.domain.UserVO;

public interface UserDAO {
	public void insertUser(UserVO uservo) throws Exception;
	
	public UserVO login(LoginDTO loginDTO) throws Exception;
}

