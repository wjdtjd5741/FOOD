package com.food.recipick.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.recipick.dto.RecipeDTO;
<<<<<<< HEAD

=======
>>>>>>> c3f95a19ec6bf1ec503756aa00c8d3c1aefbc4de
@Repository
public class RecipickDAOImpl implements RecipickDAO{

	
	
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public RecipeDTO recipePage1(RecipeDTO dto) {
			sqlSession.selectList("id_recipick.recipe_id", dto);
		return null;
	public List recipePage1(RecipeDTO dto) {
			
		return sqlSession.selectList("id_recipick.recipe_id", dto);
	}

	

	
	
	
	
}
