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
	
	public List comment_load(String data) {
		return sqlSession.selectList("searchs.comment_load", data);
	}
	public List comment_load_review(String data) {
		return sqlSession.selectList("searchs.comment_load_review", data);
	}
	
	public void insert_comment(Map map) {
		sqlSession.insert("searchs.insert_comment", map);
	}

	public void insert_comment_review(Map map) {
		sqlSession.insert("searchs.insert_comment_review", map);
	}
	public void insert_reple_comment(Map map) {
		sqlSession.insert("searchs.insert_reple_comment", map);
	}
	public void insert_reple_comment_review(Map map) {
		sqlSession.insert("searchs.insert_reple_comment_review", map);
	}
	public void del_comment(String data) {
		sqlSession.delete("searchs.del_comment", data);
	}

	public void update_comment(Map map) {
		sqlSession.update("searchs.update_comment", map);
	}
}