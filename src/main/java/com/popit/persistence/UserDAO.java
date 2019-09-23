package com.popit.persistence;

import com.popit.domain.UserVO;

public interface UserDAO {
	public void insertUser(UserVO vo) throws Exception;
}
