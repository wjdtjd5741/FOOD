package com.food.recipick.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.food.recipick.dto.RecipeDTO;


public interface RecipickService {
	void recipePage1(MultipartHttpServletRequest files, RecipeDTO dto);
	List bulletin(RecipeDTO dto);
	void recipe_img_download(List list, HttpServletResponse response);
}
