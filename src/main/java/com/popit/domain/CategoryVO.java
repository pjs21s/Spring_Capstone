package com.popit.domain;

public class CategoryVO {
	private String categoryname;

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	@Override
	public String toString() {
		return "CategoryVO [categoryname=" + categoryname + "]";
	}
}
