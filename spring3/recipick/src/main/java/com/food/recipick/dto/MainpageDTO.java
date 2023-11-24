package com.food.recipick.dto;

import java.util.List;

public class MainpageDTO {
	private String recipe_id;
	private String recom_count;
	public String getRecipe_id() {
		return recipe_id;
	}
	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}
	public String getRecom_count() {
		return recom_count;
	}
	public void setRecom_count(String recom_count) {
		this.recom_count = recom_count;
	}
	private List<String> topimg;
	private String botimg;
	
	
	
	public List<String> getTopimg() {
		return topimg;
	}
	public void setTopimg(List<String> topimg) {
		this.topimg = topimg;
	}
	public String getBotimg() {
		return botimg;
	}
	public void setBotimg(String botimg) {
		this.botimg = botimg;
	}
	@Override
	public String toString() {
		return "MainpageDTO [recipe_id=" + recipe_id + ", recom_count=" + recom_count + ", topimg=" + topimg
				+ ", botimg=" + botimg + "]";
	}

	
	
	// 이미지 리스트 2개
}
