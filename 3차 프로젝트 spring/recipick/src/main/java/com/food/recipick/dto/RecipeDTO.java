package com.food.recipick.dto;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class RecipeDTO {

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date recipe_date;
	private String mainpic;
	private String maintext;
	private String uname;
	private String recipe_title;
	private String viewer;
	private int recipe_id;
	private int food_id;
	private int hash_id;
	private int detailrecipe_id;
	private List food_name;
	private List food_value;
	private List hash_name;
	private List detail_pic;
	private List detail_text;
	private int make_order;
	private List hashAll;
	private List foodAll;
	private List detailAll;
	
	public List getHashAll() {
		return hashAll;
	}

	public void setHashAll(List hashAll) {
		this.hashAll = hashAll;
	}

	public List getFoodAll() {
		return foodAll;
	}

	public void setFoodAll(List foodAll) {
		this.foodAll = foodAll;
	}

	public List getDetailAll() {
		return detailAll;
	}

	public void setDetailAll(List detailAll) {
		this.detailAll = detailAll;
	}

	public Date getRecipe_date() {
		return recipe_date;
	}

	public void setRecipe_date(Date recipe_date) {
		this.recipe_date = recipe_date;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getViewer() {
		return viewer;
	}

	public void setViewer(String viewer) {
		this.viewer = viewer;
	}


	
	public int getMake_order() {
		return make_order;
	}

	public void setMake_order(int make_order) {
		this.make_order = make_order;
	}

	public List getDetail_text() {
		return detail_text;
	}

	public void setDetail_text(List detail_text) {
		this.detail_text = detail_text;
	}

	// 이거 getter setter만들어야함
	public List getFood_name() {
		return food_name;
	}

	public void setFood_name(List food_name) {
		this.food_name = food_name;
	}

	public List getFood_value() {
		return food_value;
	}

	public void setFood_value(List food_value) {
		this.food_value = food_value;
	}

	public List getHash_name() {
		return hash_name;
	}

	public void setHash_name(List hash_name) {
		this.hash_name = hash_name;
	}

	
    
	
	public int getRecipe_id() {
		return recipe_id;
	}

	public void setRecipe_id(int recipe_id) {
		this.recipe_id = recipe_id;
	}

	public int getFood_id() {
		return food_id;
	}

	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}

	public int getHash_id() {
		return hash_id;
	}

	public void setHash_id(int hash_id) {
		this.hash_id = hash_id;
	}

	public int getDetailrecipe_id() {
		return detailrecipe_id;
	}

	public void setDetailrecipe_id(int detailrecipe_id) {
		this.detailrecipe_id = detailrecipe_id;
	}

	public List getDetail_pic() {
		return detail_pic;
	}

	public void setDetail_pic(List detail_pic) {
		this.detail_pic = detail_pic;
	}

	



	public String getMainpic() {
		return mainpic;
	}

	public void setMainpic(String mainpic) {
		this.mainpic = mainpic;
	}

	public String getMaintext() {
		return maintext;
	}

	public void setMaintext(String maintext) {
		this.maintext = maintext;
	}



	public String getRecipe_title() {
		return recipe_title;
	}

	public void setRecipe_title(String recipe_title) {
		this.recipe_title = recipe_title;
	}

	@Override
	public String toString() {
		return "RecipeDTO [recipe_date=" + recipe_date + ", mainpic=" + mainpic + ", maintext=" + maintext + ", uname="
				+ uname + ", recipe_title=" + recipe_title + ", viewer=" + viewer + ", recipe_id=" + recipe_id
				+ ", food_id=" + food_id + ", hash_id=" + hash_id + ", detailrecipe_id=" + detailrecipe_id
				+ ", food_name=" + food_name + ", food_value=" + food_value + ", hash_name=" + hash_name
				+ ", detail_pic=" + detail_pic + ", detail_text=" + detail_text + ", make_order=" + make_order
				+ ", hashAll=" + hashAll + ", foodAll=" + foodAll + ", detailAll=" + detailAll + "]";
	}







	
	
	
}
