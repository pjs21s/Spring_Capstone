package com.popit.persistence;

import java.util.List;

import com.popit.domain.BoardVO;
import com.popit.domain.Criteria;
import com.popit.domain.SearchCriteria;

public interface BoardDAO {
	public void create(BoardVO boardvo) throws Exception;
	
	public BoardVO read(Integer bno) throws Exception;
	
	public void update(BoardVO boardvo) throws Exception;
	
	void updateViewCnt(Integer bno) throws Exception;
	
	public void delete(Integer bno) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public List<BoardVO> listPage(int page) throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
	
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception;
	
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<BoardVO> mainList() throws Exception;
}
