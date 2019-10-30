package com.popit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.popit.domain.BoardVO;
import com.popit.domain.Criteria;
import com.popit.domain.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.popit.mapper.BoardMapper";
	
	@Override
	public void create(BoardVO boardvo) throws Exception {
		session.insert(namespace + ".create", boardvo);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		return session.selectOne(namespace + ".read", bno);
	}

	@Override
	public void update(BoardVO boaradvo) throws Exception {
		session.update(namespace + ".update", boaradvo);
	}
	
	@Override
	public void updateViewCnt(Integer bno) throws Exception{
		session.update(namespace + ".updateViewCnt", bno);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace + ".delete", bno);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		if(page<=0) {
			page = 1;
		}
		page = (page - 1) * 10;
		
		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public List<BoardVO> mainList() throws Exception {
		return session.selectList(namespace + ".mainList");
	}

	@Override
	public List<BoardVO> latestmainList() throws Exception {
		return session.selectList(namespace + ".latestmainList");
	}

	
}
