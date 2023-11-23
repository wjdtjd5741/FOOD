package com.food.recipick.dto;

public class CommentDTO {
	private int comment_id;
	private String uname;
	private int review_id;
	private int recipe_id;
	private String comment_text;
	private int parentcomment_id;
	
	private int lv;
	private int order_depth;
	
	public int getLv() {
		return lv;
	}

	public void setLv(int lv) {
		this.lv = lv;
	}

	public int getOrder_depth() {
		return order_depth;
	}

	public void setOrder_depth(int order_depth) {
		this.order_depth = order_depth;
	}

	@Override
	public String toString() {
		return "CommentDTO [comment_id=" + comment_id + ", uname=" + uname + ", review_id=" + review_id + ", recipe_id="
				+ recipe_id + ", comment_text=" + comment_text + ", parentcomment_id=" + parentcomment_id + "]";
	}
	
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public int getRecipe_id() {
		return recipe_id;
	}
	public void setRecipe_id(int recipe_id) {
		this.recipe_id = recipe_id;
	}
	public String getComment_text() {
		return comment_text;
	}
	public void setComment_text(String comment_text) {
		this.comment_text = comment_text;
	}
	public int getParentcomment_id() {
		return parentcomment_id;
	}
	public void setParentcomment_id(int parentcomment_id) {
		this.parentcomment_id = parentcomment_id;
	}
	
}
