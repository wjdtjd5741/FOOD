package com.food.recipick.dto;

import java.util.List;

public class MainpageDTO {
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
		return "MainpageDTO [topimg=" + topimg + ", botimg=" + botimg + "]";
	}
	
	
	// 이미지 리스트 2개
}
