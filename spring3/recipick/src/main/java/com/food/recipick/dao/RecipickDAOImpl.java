package com.food.recipick.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.recipick.dto.RecipeDTO;

@Repository
public class RecipickDAOImpl implements RecipickDAO{

	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void recipePage1(RecipeDTO dto) {
		sqlSession.insert("id_recipick.insert_recipe", dto); // recipe테이블
		
		List foodnames= dto.getFood_name();
		List foodvalue = dto.getFood_value();
		for(int i =0; i<foodnames.size(); i++) {
			System.out.println(foodnames.get(i));
			System.out.println(foodvalue.get(i));
			
			Map map = new HashMap();
			
			map.put("food_name", foodnames.get(i));
			map.put("food_value", foodvalue.get(i));
			map.put("recipe_id", dto.getRecipe_id());
			sqlSession.insert("id_recipick.insert_food", map); // food테이블
		}
		
		List hashnames = dto.getHash_name();
		for(int i = 0; i<dto.getHash_name().size(); i++) {
			System.out.println(hashnames.get(i));
			Map map = new HashMap();
			
			map.put("hash_name", hashnames.get(i));
			map.put("recipe_id", dto.getRecipe_id());
			sqlSession.insert("id_recipick.insert_hashtag", map); // hashtag 테이블 
		}
		
		
		List detailpic = dto.getDetail_pic();
		List detailtext = dto.getDetail_text();
		
		for(int i = 0; i<dto.getDetail_text().size(); i++) {
			Map map = new HashMap();
			
			dto.setMake_order(i+1);
			map.put("make_order", dto.getMake_order());
			map.put("detail_pic", detailpic.get(i));
			map.put("detail_text", detailtext.get(i));
			map.put("recipe_id", dto.getRecipe_id());
			sqlSession.insert("id_recipick.insert_detailrecipe", map); // detailrecipe 테이블
		}
		
		
//		sqlSession.insert("id_recipick.recommend", dto);
//		sqlSession.insert("id_recipick.ggim", dto);
		
//		List bulletin_rec_sel = sqlSession.selectList("id_recipick.bulletin_rec_sel", dto);
		
		
	}

	@Override
	public List bulletin(RecipeDTO dto) {
		
		
//		sqlSession.selectList("id_recipick.recipe", dto);
//		List hashlist = sqlSession.selectList("id_recipick.hashtag", dto);
//		dto.setHashAll(hashlist);
//		List foodlist = sqlSession.selectList("id_recipick.food", dto);
//		dto.setFoodAll(foodlist);
//	
//		List detaillist = sqlSession.selectList("id_recipick.detailrecipe", dto);
//		dto.setDetailAll(detaillist);
		System.err.println("dao : " + dto);
		return sqlSession.selectList("id_recipick.bulletin_rec_sel", dto);
	}

	@Override
	public RecipeDTO sel_rec(RecipeDTO recipeid) {
		recipeid = sqlSession.selectOne("id_recipick.update_sel_reci", recipeid);
		List up_hash = sqlSession.selectList("id_recipick.update_sel_hash", recipeid);
		recipeid.setHash_name(up_hash);
		List up_detail = sqlSession.selectList("id_recipick.update_sel_detail", recipeid);
		recipeid.setDetail_pic(up_detail);
		List up_food = sqlSession.selectList("id_recipick.update_sel_food", recipeid);
		recipeid.setFood_name(up_food);
		System.out.println("yyyyyyyyy : "+recipeid);
		return recipeid;
	}
	
	@Override
	public void update_reci(RecipeDTO dto) {
		sqlSession.update("id_recipick.update_reci", dto);
		sqlSession.delete("id_recipick.deletehash", dto);
		System.out.println(dto);
		List hashnames = dto.getHash_name();
		for(int i = 0; i<dto.getHash_name().size(); i++) {
			System.out.println(hashnames.get(i));
			Map map = new HashMap();
			map.put("hash_name", hashnames.get(i));
			map.put("recipe_id", dto.getRecipe_id());
			
			
			
			sqlSession.insert("id_recipick.insert_hashtag", map);
			
			System.out.println("jjjjjjjjj : "+hashnames.get(i));
		}
		
		sqlSession.delete("id_recipick.deletefood", dto); 
		List foodnames= dto.getFood_name();
		List foodvalue = dto.getFood_value();
		for(int i =0; i<foodnames.size(); i++) {
			System.out.println(foodnames.get(i));
			System.out.println(foodvalue.get(i));
			
			Map map = new HashMap();
			
			map.put("food_name", foodnames.get(i));
			map.put("food_value", foodvalue.get(i));
			map.put("recipe_id", dto.getRecipe_id());
			sqlSession.insert("id_recipick.insert_food", map);
		}
		
		sqlSession.delete("id_recipick.deletedetail", dto); 
		List detailpic = dto.getDetail_pic();
		List detailtext = dto.getDetail_text();
		for(int i = 0; i<dto.getDetail_text().size(); i++) {
			Map map = new HashMap();
			
			dto.setMake_order(i+1);
			map.put("make_order", dto.getMake_order());
			map.put("detail_pic", detailpic.get(i));
			map.put("detail_text", detailtext.get(i));
			map.put("recipe_id", dto.getRecipe_id());
			sqlSession.insert("id_recipick.insert_detailrecipe", map); // detailrecipe 테이블
		}
	}
	
}
