package com.popit.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.popit.domain.UserVO;
import com.popit.persistence.UserDAO;
import com.popit.start.UserController;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;
	
	
	@Override
	public void insertUser(UserVO user) throws Exception {
		dao.insertUser(user);
	}

}
