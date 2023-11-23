package com.food.recipick.service;

import java.util.List;
import java.util.Map;

import com.food.recipick.dto.RecipeDTO;

public interface MypageService {

	List myrecipeselect(RecipeDTO dto);
	
	Map getMylistPage(int pageNum, int countPerPage);
}
