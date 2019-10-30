package com.popit.persistence;

import java.util.List;

import com.popit.domain.CategoryVO;

public interface CategoryDAO {
	List<CategoryVO> categorylist() throws Exception;
}
