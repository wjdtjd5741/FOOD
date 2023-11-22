package com.food.recipick.dto;

public class DetailRecipeDTO {
	private int detailrecipe_id;
	private String detail_pic;
	private String detail_text;
	private int make_order;
	
	
	public int getDetailrecipe_id() {
		return detailrecipe_id;
	}
	public void setDetailrecipe_id(int detailrecipe_id) {
		this.detailrecipe_id = detailrecipe_id;
	}
	public String getDetail_pic() {
		return detail_pic;
	}
	public void setDetail_pic(String detail_pic) {
		this.detail_pic = detail_pic;
	}
	public String getDetail_text() {
		return detail_text;
	}
	public void setDetail_text(String detail_text) {
		this.detail_text = detail_text;
	}
	public int getMake_order() {
		return make_order;
	}
	public void setMake_order(int make_order) {
		this.make_order = make_order;
	}
}
