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
		sqlSession.insert("id_recipick.insert_recipe", dto);
		
		sqlSession.insert("id_recipick.�ٸ�sql��", dto); //�ؽ��±�

		sqlSession.insert("id_recipick.�ٸ�sql��", dto); //�ؽ��±�

		sqlSession.insert("id_recipick.�ٸ�sql��", dto); //�ؽ��±�
		
		
//		System.out.println("ggg : "+l.get(0));
		return sqlSession.selectList("select��");
	}

	

	
	
	
	
}
