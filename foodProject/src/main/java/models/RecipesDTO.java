package models;

import java.util.*;

public class RecipesDTO {
	private String writer;
	private String date;
	private String title;
	private String mainPic;
	private String mainText;
	private List<String> hashtags;
	private Map<String,Integer> foods;
	private List<List<String>> knowHow; // pic,text
	private int recomCount;
	private int ggimCount;
	private int view;
	
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public int getRecomCount() {
		return recomCount;
	}
	public void setRecomCount(int recomCount) {
		this.recomCount = recomCount;
	}
	public int getGgimCount() {
		return ggimCount;
	}
	public void setGgimCount(int ggimCount) {
		this.ggimCount = ggimCount;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMainPic() {
		return mainPic;
	}
	public void setMainPic(String mainPic) {
		this.mainPic = mainPic;
	}
	public String getMainText() {
		return mainText;
	}
	public void setMainText(String mainText) {
		this.mainText = mainText;
	}
	public List<String> getHashtags() {
		return hashtags;
	}
	public void setHashtags(List<String> hashtags) {
		this.hashtags = hashtags;
	}
	public Map<String, Integer> getFoods() {
		return foods;
	}
	public void setFoods(Map<String, Integer> foods) {
		this.foods = foods;
	}
	public List<List<String>> getKnowHow() {
		return knowHow;
	}
	public void setKnowHow(List<List<String>> knowHow) {
		this.knowHow = knowHow;
	}
	
	
}
