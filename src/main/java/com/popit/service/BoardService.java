package com.popit.service;

import java.util.List;

import com.popit.domain.BoardVO;
import com.popit.domain.Criteria;
import com.popit.domain.SearchCriteria;


public interface BoardService {
	public void regist(BoardVO boardvo) throws Exception;

	public BoardVO read(Integer bno) throws Exception;

	public void modify(BoardVO boardvo) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<BoardVO> listAll() throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public int listCountCriteria(Criteria cri) throws Exception;
	
	public List<BoardVO> listSearchCriteria(SearchCriteria cri)  throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<BoardVO> mainList() throws Exception;
}
