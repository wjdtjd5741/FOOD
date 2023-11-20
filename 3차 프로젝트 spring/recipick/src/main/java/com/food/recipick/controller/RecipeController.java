package com.food.recipick.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.recipick.dto.RecipeDTO;
import com.food.recipick.service.RecipickService;

@Controller
public class RecipeController {

	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);

	@Autowired
	RecipickService recipickservice;
	
	@RequestMapping(value= "/recipePage1", method= {RequestMethod.POST, RequestMethod.GET})
	public String recipePage1(
			@ModelAttribute RecipeDTO dto,
			@RequestParam(value="food_name", required=false)List<String> food_name,
			@RequestParam(value="food_value", required=false)List<String> food_value,
			@RequestParam(value="hash_name", required=false)List<String> hash_name,
			@RequestParam(value="detail_pic", required=false)List<String> detail_pic,
			@RequestParam(value="detail_text", required=false)List<String> detail_text
			) {
		List list = recipickservice.recipePage1(dto);
		
		System.out.println(dto);
		return "newrecipepage";
		
	}
	@RequestMapping("/newrecipepage")
	public String newrecipepage() {
		
		return "newrecipepage.do";
	}
	
	
	
}
