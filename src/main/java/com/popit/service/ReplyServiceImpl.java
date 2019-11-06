package com.popit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.popit.domain.ReplyVO;
import com.popit.persistence.ReplyDAO;
import com.popit.persistence.UserDAO;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	private final ReplyDAO replyDAO;
	
	@Inject
	public ReplyServiceImpl(ReplyDAO replyDAO) {
		this.replyDAO = replyDAO;
	}
	
	@Inject
	private UserDAO userdao;

	@Override
	public List<ReplyVO> list(Integer bno) throws Exception {
		return replyDAO.list(bno);
	}

	@Override
	public void create(ReplyVO replyvo) throws Exception {
		replyDAO.create(replyvo);
		userdao.updatePoint(replyvo.getReplyWriter(), 5);
	}

	@Override
	public void update(ReplyVO replyvo) throws Exception {
		replyDAO.update(replyvo);
	}

	@Override
	public void delete(Integer replyNo) throws Exception {
		replyDAO.delete(replyNo);
	}

}
