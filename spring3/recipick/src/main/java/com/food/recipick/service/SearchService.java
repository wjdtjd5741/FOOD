package com.food.recipick.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.recipick.dao.SearchDAO;
import com.food.recipick.dto.RecipeDTO;

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
	public List comment_load_review(String data) {
		return searchDAO.comment_load_review(data);
	}
	
	public void insert_comment(Map map) {
		searchDAO.insert_comment(map);
	}
	public void insert_comment_review(Map map) {
		searchDAO.insert_comment_review(map);
	}
	
	public void insert_reple_comment(Map map) {
		searchDAO.insert_reple_comment(map);
	}

	public void insert_reple_comment_review(Map map) {
		searchDAO.insert_reple_comment_review(map);
	}
	
	public void del_comment(String data) {
		searchDAO.del_comment(data);
	}
	
	public void update_comment(Map map) {
		searchDAO.update_comment(map);
	}
	
	public RecipeDTO goRecipe_value(String data, RecipeDTO dto) {

		return searchDAO.goRecipe_value(data, dto);
	}
	
	public List recom_main_img() {
		return searchDAO.recom_main_img();
	}
//	public List season_img() {
//		return searchDAO.season_img();
//	}
}
