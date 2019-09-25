package com.popit.service;

import com.popit.domain.LoginDTO;
import com.popit.domain.UserVO;

public interface UserService {
	public void insertUser(UserVO user) throws Exception;
	
	public UserVO login(LoginDTO loginDTO) throws Exception;
}
