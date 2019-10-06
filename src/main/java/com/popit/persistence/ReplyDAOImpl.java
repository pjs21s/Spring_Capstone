package com.popit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.popit.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	
	private static String namespace = "com.popit.mapper.ReplyMapper";
	
	private final SqlSession session;
	
	@Inject
	public ReplyDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ReplyVO> list(Integer bno) throws Exception {
		return session.selectList(namespace +".list", bno);
	}

	@Override
	public void create(ReplyVO replyvo) throws Exception {
		session.insert(namespace + ".create", replyvo);
	}

	@Override
	public void update(ReplyVO replyvo) throws Exception {
		session.update(namespace + ".update", replyvo);
	}

	@Override
	public void delete(Integer replyno) throws Exception {
		session.delete(namespace + ".delete", replyno);
	}

}
