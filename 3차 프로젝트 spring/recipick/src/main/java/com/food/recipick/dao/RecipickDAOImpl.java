package com.food.recipick.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.recipick.dto.RecipeDTO;

public class RecipickDAOImpl implements RecipickDAO{

	
	@Autowired
	SqlSession sqlSession;

	@Override
	public RecipeDTO recipePage1(RecipeDTO dto) {
			sqlSession.selectList("id_recipick.recipe_id", dto);
		return null;
	}

	

	
	
	
	
}
