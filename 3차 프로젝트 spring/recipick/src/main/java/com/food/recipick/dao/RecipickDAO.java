package com.food.recipick.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.food.recipick.dto.RecipeDTO;


public interface RecipickDAO {

	List recipePage1(RecipeDTO dto);
}
