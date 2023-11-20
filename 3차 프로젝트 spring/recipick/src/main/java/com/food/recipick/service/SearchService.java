package com.food.recipick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.recipick.dao.SearchDAO;

@Service
public class SearchService {
	
	@Autowired
	SearchDAO searchDAO;
	
	public List searchRecipe(String data) {
		return searchDAO.searchRecipe(data);
	}
	
}
