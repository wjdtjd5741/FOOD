package com.food.recipick.service;

import java.util.ArrayList;
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
	public List recipePage1(RecipeDTO dto) {
		dto.setMainpic("임시");
		List l = new ArrayList();
		l.add("f");
		l.add("g");
		dto.setDetail_pic(l);
		dto.setView("0");
		dto.setUser("정성");
		
		List bulletin_rec_sel = recipickdao.recipePage1(dto);
		
		
		
		return bulletin_rec_sel;
	}

	
	
	
	
}
