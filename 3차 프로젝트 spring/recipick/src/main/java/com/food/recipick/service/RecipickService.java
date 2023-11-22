package com.food.recipick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.food.recipick.dto.RecipeDTO;


public interface RecipickService {
	void recipePage1(RecipeDTO dto);
	List bulletin(RecipeDTO dto);
}
