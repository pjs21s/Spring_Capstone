package com.popit.persistence;

import java.util.HashMap;
import java.util.Map;

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
		session.insert(namespace + ".insertUser", uservo);
	}

	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		return session.selectOne(namespace + ".login", loginDTO);
	}

	@Override
	public void modify(LoginDTO loginDTO) throws Exception {
		session.update(namespace + ".modify", loginDTO);
	}

	@Override
	public void withdrawal(LoginDTO loginDTO) throws Exception {
		session.delete(namespace + ".withdrawal", loginDTO);
	}

	@Override
	public void updatePoint(String name, int userpoint) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("userpoint", userpoint);
		session.update(namespace + ".updatePoint", map);
	}

	
}
