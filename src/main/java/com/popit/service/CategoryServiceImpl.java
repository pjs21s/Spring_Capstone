package com.popit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.popit.domain.CategoryVO;
import com.popit.persistence.CategoryDAO;

@Service
public class CategoryServiceImpl implements CategoryService{

	private final CategoryDAO categoryDAO;
	
	@Inject
	public CategoryServiceImpl(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}
	
	@Override
	public List<CategoryVO> categorylist() throws Exception {
		return categoryDAO.categorylist();
	}

}
