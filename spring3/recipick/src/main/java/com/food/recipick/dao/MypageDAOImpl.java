package com.food.recipick.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.recipick.dto.RecipeDTO;

@Repository
public class MypageDAOImpl implements MypageDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public RecipeDTO myrecipeselect(RecipeDTO dto) {
		RecipeDTO myrecipeselect = sqlSession.selectOne("id_recipick.myrecipeselect", dto);
		System.out.println("myrecipeselect : " + myrecipeselect);
		return myrecipeselect;
	}
}
