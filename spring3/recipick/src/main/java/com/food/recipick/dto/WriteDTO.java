package com.food.recipick.dto;

import java.util.Date;
import java.util.List;

public class WriteDTO {

	
	private int review_id;
	private int viewer;
	private String pic;
	private String review_title;
	private Date review_date;
	private String review_text;
	private String uname;
	private int hash_id;
	private String tag_type;
	private int recipe_id;
	private List hash_name; 


	public int getHash_id() {
		return hash_id;
	}

	public void setHash_id(int hash_id) {
		this.hash_id = hash_id;
	}

	public String getTag_type() {
		return tag_type;
	}

	public void setTag_type(String tag_type) {
		this.tag_type = tag_type;
	}

	public int getRecipe_id() {
		return recipe_id;
	}

	public void setRecipe_id(int recipe_id) {
		this.recipe_id = recipe_id;
	}
	public List getHash_name() {
		return hash_name;
	}

	public void setHash_name(List hash_name) {
		this.hash_name = hash_name;
	}

	public int getViewer() {
		return viewer;
	}
	

	public void setViewer(int viewer) {
		this.viewer = viewer;
	}

	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public String getReview_text() {
		return review_text;
	}
	public void setReview_text(String review_text) {
		this.review_text = review_text;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}

	@Override
	public String toString() {
		return "WriteDTO [review_id=" + review_id + ", viewer=" + viewer + ", pic=" + pic + ", review_title="
				+ review_title + ", review_date=" + review_date + ", review_text=" + review_text + ", uname=" + uname
				+ ", hash_id=" + hash_id + ", tag_type=" + tag_type + ", recipe_id=" + recipe_id + ", hash_name="
				+ hash_name + "]";
	}
	
	
	
	
}
