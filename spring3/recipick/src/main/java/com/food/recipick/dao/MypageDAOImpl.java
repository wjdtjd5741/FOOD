package com.food.recipick.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.recipick.dto.RecipeDTO;

@Repository
public class MypageDAOImpl implements MypageDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List myrecipeselect(RecipeDTO dto) {
		List myrecipeselect = sqlSession.selectList("id_recipick.myrecipeselect", dto);
		System.out.println("myrecipeselect : " + myrecipeselect);
		return myrecipeselect;
	}

	@Override
	public List mylistpage(RecipeDTO dto) {
		System.out.println("dto : " + dto);
		List<RecipeDTO> mylistpage = sqlSession.selectList("id_recipick.mylistpage", dto);
		return mylistpage;
	}

	@Override
	public int mylistpagetotal() {
		int total = sqlSession.selectOne("id_recipick.mylistpagetotal");
		return total;
	}
}
