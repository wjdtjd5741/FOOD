package com.food.recipick.dao;

import java.util.List;

import com.food.recipick.dto.RecipeDTO;

public interface MypageDAO {
	
	List myrecipeselect(RecipeDTO dto);
	
	List mylistpage(RecipeDTO dto);
	
	int mylistpagetotal();
}
