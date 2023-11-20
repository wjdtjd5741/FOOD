package com.food.recipick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.food.recipick.dto.RecipeDTO;


public interface RecipickService {
	List recipePage1(RecipeDTO dto);
}
