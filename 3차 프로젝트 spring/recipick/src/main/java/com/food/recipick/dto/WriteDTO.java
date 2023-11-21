package com.food.recipick.dto;

public class WriteDTO {

	
	private int review_id;
	private int view;
	private String pic;
	private String review_title;
	private String review_date;
	private String review_text;
	private String uname;
	
	
	
	
	@Override
	public String toString() {
		return "WriteDTO [review_id=" + review_id + ", view=" + view + ", pic=" + pic + ", review_title=" + review_title
				+ ", review_date=" + review_date + ", review_text=" + review_text + ", uname=" + uname + "]";
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
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
	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
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
	
	
	
	
}
