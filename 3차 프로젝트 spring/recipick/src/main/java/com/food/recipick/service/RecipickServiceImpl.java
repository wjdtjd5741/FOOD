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
		dto.setMainpic("юс╫ц");
		dto.setUser("user");
		List l = new ArrayList();
		l.add("f");
		dto.setDetail_pic(l);
		dto.setView("0");
		return recipickdao.recipePage1(dto);
	}

	
	
	
	
}
