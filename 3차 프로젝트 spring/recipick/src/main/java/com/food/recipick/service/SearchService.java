package com.food.recipick.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.recipick.dao.SearchDAO;

@Service
public class SearchService {
	
	@Autowired
	SearchDAO searchDAO;
	
	public List searchRecipe(Map map) {
		return searchDAO.searchRecipe(map);
	}
	
	public List goRecipe(String data) {
		return searchDAO.goRecipe(data);
	}
	
	public List comment_load(String data) {
		return searchDAO.comment_load(data);
	}
	
	public void insert_comment(Map map) {
		searchDAO.insert_comment(map);
	}
	
	public void insert_reple_comment(Map map) {
		searchDAO.insert_reple_comment(map);
	}
	
	public void del_comment(String data) {
		searchDAO.del_comment(data);
	}
	
	public void update_comment(Map map) {
		searchDAO.update_comment(map);
	}

}
