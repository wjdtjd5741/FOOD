package com.food.recipick.dto;

public class HashtagDTO {
	private int hashtag_id;
	private String hash_name;
	private String tag_type;
	
	
	public int getHashtag_id() {
		return hashtag_id;
	}
	public void setHashtag_id(int hashtag_id) {
		this.hashtag_id = hashtag_id;
	}
	public String getHash_name() {
		return hash_name;
	}
	public void setHash_name(String hash_name) {
		this.hash_name = hash_name;
	}
	public String getTag_type() {
		return tag_type;
	}
	public void setTag_type(String tag_type) {
		this.tag_type = tag_type;
	}
}
