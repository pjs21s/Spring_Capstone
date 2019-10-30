package com.popit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.popit.domain.CategoryVO;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	
	private static String namespace = "com.popit.mapper.CategoryMapper";
	
	private final SqlSession session;
	
	@Inject
	public CategoryDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<CategoryVO> categorylist() throws Exception {
		return session.selectList(namespace + ".categorylist");
	}

}
