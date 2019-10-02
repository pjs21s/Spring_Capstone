package com.popit.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.popit.domain.LoginDTO;
import com.popit.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.popit.mapper.UserMapper";
	
	@Override
	public void insertUser(UserVO uservo) throws Exception {
		session.insert(namespace+ ".insertUser", uservo);
	}

	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		return session.selectOne(namespace+".login", loginDTO);
	}

	
}
