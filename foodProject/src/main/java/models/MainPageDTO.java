package models;

import java.util.List;

public class MainPageDTO {
	private List<String> topImg;
	private List<List> favor;
	private List<List> recom;
	private String bottomImg;
	
	public List<List> getFavor() {
		return favor;
	}
	public void setFavor(List<List> favor) {
		this.favor = favor;
	}
	public List<String> getTopImg() {
		return topImg;
	}
	public void setTopImg(List<String> topImg) {
		this.topImg = topImg;
	}

	public List<List> getRecom() {
		return recom;
	}
	public void setRecom(List<List> recom) {
		this.recom = recom;
	}
	public String getBottomImg() {
		return bottomImg;
	}
	public void setBottomImg(String bottomImg) {
		this.bottomImg = bottomImg;
	}
	
}
