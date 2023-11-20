package com.food.recipick.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.recipick.dao.RecipickDAO;
import com.food.recipick.dto.RecipeDTO;

@Service
public class RecipickServiceImpl implements RecipickService{

	@Autowired
	RecipickDAO recipickdao;

	@Override
	public RecipeDTO recipePage1(RecipeDTO dto) {
			recipickdao.recipePage1(dto);
		return null;
	}

	
	
	
	
}
