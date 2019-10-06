package com.popit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.popit.domain.ReplyVO;
import com.popit.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	private final ReplyDAO replyDAO;
	
	@Inject
	public ReplyServiceImpl(ReplyDAO replyDAO) {
		this.replyDAO = replyDAO;
	}

	@Override
	public List<ReplyVO> list(Integer bno) throws Exception {
		return replyDAO.list(bno);
	}

	@Override
	public void create(ReplyVO replyvo) throws Exception {
		replyDAO.create(replyvo);
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
