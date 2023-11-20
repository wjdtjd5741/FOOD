package com.food.recipick.dao;

import org.springframework.stereotype.Repository;

import com.food.recipick.dto.RecipeDTO;

@Repository

public interface RecipickDAO {

	RecipeDTO recipePage1(RecipeDTO dto);
}
