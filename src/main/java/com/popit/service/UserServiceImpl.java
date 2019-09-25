package com.popit.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.popit.domain.LoginDTO;
import com.popit.domain.UserVO;
import com.popit.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;
	
	@Override
	public void insertUser(UserVO user) throws Exception {
		dao.insertUser(user);
	}


	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		return dao.login(loginDTO);
	}

}
