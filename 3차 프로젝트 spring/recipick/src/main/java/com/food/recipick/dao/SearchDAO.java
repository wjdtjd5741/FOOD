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
		return sqlSession.selectList("searchs.searchData", map);
	}
	
	public List goRecipe(String data) {
		return sqlSession.selectList("searchs.searchRecipe",data);
	}
<<<<<<< HEAD
	
	public List comment_load(String data) {
		return sqlSession.selectList("searchs.comment_load", data);
	}
	
	public void insert_comment(Map map) {
		sqlSession.insert("searchs.insert_comment", map);
	}
	public void insert_reple_comment(Map map) {
		sqlSession.insert("searchs.insert_reple_comment", map);
	}
	public void del_comment(String data) {
		sqlSession.delete("searchs.del_comment", data);
	}
}
=======
}
>>>>>>> 6e76e6f499433b2f5b74a7363b990e0173523b27
