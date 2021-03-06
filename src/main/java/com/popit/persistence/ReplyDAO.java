package com.popit.persistence;

import java.util.List;

import com.popit.domain.ReplyVO;

public interface ReplyDAO {
	List<ReplyVO> list(Integer bno) throws Exception;
	void create(ReplyVO replyvo) throws Exception;
	void update(ReplyVO replyvo) throws Exception;
	void delete(Integer replyNo) throws Exception;
}
