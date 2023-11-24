package com.food.recipick.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.recipick.dto.RecipeDTO;

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
	public List ggim_ck(String data) {
		return sqlSession.selectList("searchs.ggim_ck",data);
	}
	public List recom_ck(String data) {
		return sqlSession.selectList("searchs.recom_ck",data);
	}
	
	public List comment_load(String data) {
		return sqlSession.selectList("searchs.comment_load", data);
	}
	public List comment_load_review(String data) {
		return sqlSession.selectList("searchs.comment_load_review", data);
	}
	
	public void insert_heart(Map map) {
		sqlSession.insert("searchs.insert_heart", map);
	}
	public void insert_recom(Map map) {
		sqlSession.insert("searchs.insert_recom", map);
	}
	public void delete_heart(Map map) {
		sqlSession.delete("searchs.delete_heart", map);
	}
	public void delete_recom(Map map) {
		sqlSession.delete("searchs.delete_recom", map);
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
	public RecipeDTO goRecipe_value(String data, RecipeDTO dto) {
		
		dto = sqlSession.selectOne("searchs.goRecipe_value", data);
		List hashlist = sqlSession.selectList("searchs.hashtag", data);
		System.out.println("zzzzzzzzz : " + hashlist.get(0));
		dto.setHash_name(hashlist);

		List foodlist = sqlSession.selectList("searchs.food", data);
		dto.setFood_name(foodlist);
		
		List detaillist = sqlSession.selectList("searchs.detailrecipe", data);
		dto.setDetail_pic(detaillist);
		return dto;
	}
	public List recom_main_img() {
		return sqlSession.selectList("searchs.recom_main_img");
	}
	public List recom_count_img() {
		return sqlSession.selectList("searchs.recom_count_img");
	}
	public List recom_hash(int recipe_id) {
		return sqlSession.selectList("searchs.recom_hash", recipe_id);
	}
	public List season_img() {
		return sqlSession.selectList("searchs.season_img");
	}
}