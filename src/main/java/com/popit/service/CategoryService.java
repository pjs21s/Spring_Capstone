package com.popit.service;

import java.util.List;

import com.popit.domain.CategoryVO;

public interface CategoryService {
	List<CategoryVO> categorylist() throws Exception;
}
