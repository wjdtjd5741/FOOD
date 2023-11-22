package com.food.recipick.dao;

import java.util.List;

import com.food.recipick.dto.DetailRecipeDTO;
import com.food.recipick.dto.FoodDTO;
import com.food.recipick.dto.HashtagDTO;
import com.food.recipick.dto.RecipeDTO;


public interface RecipickDAO {

	void recipePage1(RecipeDTO dto);
//	List bulletin(RecipeDTO dto);
	List bulletin(RecipeDTO dto);
}
