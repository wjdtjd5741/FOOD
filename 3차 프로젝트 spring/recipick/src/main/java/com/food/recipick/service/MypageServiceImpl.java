package com.food.recipick.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.recipick.dao.MypageDAO;
import com.food.recipick.dto.RecipeDTO;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageDAO mypageDAO;
	
	@Override
	public RecipeDTO myrecipeselect(RecipeDTO dto) {
		RecipeDTO myrecipeselect = mypageDAO.myrecipeselect(dto);
		return myrecipeselect;
	}
	
}
