package com.food.recipick.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List searchRecipe(Map map) {
		System.out.println("data : " + map);
		return sqlSession.selectList("id_recipick.searchData", map);
	}
	
	public List goRecipe(String data) {
		return sqlSession.selectList("id_recipick.searchRecipe",data);
	}
}
