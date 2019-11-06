package com.popit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.popit.domain.BoardVO;
import com.popit.domain.Criteria;
import com.popit.domain.SearchCriteria;
import com.popit.persistence.BoardDAO;
import com.popit.persistence.UserDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO boarddao;
	
	@Inject
	private UserDAO userdao;

	@Override
	public void regist(BoardVO boardvo) throws Exception {
		boarddao.create(boardvo);
		userdao.updatePoint(boardvo.getWriter(), 15);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		boarddao.updateViewCnt(bno);
		return boarddao.read(bno);
	}

	@Override
	public void modify(BoardVO boardvo) throws Exception {
		boarddao.update(boardvo);
	}
	
	@Override
	public void remove(Integer bno) throws Exception {
		boarddao.delete(bno);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return boarddao.listAll();
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return boarddao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return boarddao.countPaging(cri);
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return boarddao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return boarddao.listSearchCount(cri);
	}

	@Override
	public List<BoardVO> mainList() throws Exception {
		return boarddao.mainList();
	}

	@Override
	public List<BoardVO> latestmainList() throws Exception {
		return boarddao.latestmainList();
	}

}
