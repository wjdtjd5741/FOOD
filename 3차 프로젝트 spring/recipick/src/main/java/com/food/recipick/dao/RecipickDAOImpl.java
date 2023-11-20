package com.food.recipick.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.recipick.dto.RecipeDTO;

@Repository
public class RecipickDAOImpl implements RecipickDAO{

	
	
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List recipePage1(RecipeDTO dto) {
			
		return sqlSession.selectList("id_recipick.recipe_id", dto);
	}

	

	
	
	
	
}
