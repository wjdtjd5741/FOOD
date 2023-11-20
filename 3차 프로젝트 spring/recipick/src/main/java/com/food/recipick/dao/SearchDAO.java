package com.food.recipick.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List searchRecipe(String data) {
		return sqlSession.selectList("id_recipick.searchData", data);
	}
}
