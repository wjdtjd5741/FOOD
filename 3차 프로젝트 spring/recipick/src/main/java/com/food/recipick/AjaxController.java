package com.food.recipick;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.recipick.dto.RecipeDTO;
import com.food.recipick.service.MypageService;
import com.food.recipick.service.SearchService;

@Controller
public class AjaxController {
	
	@Autowired
	SearchService searchService;
	@Autowired
	MypageService mypageService;
	
	@RequestMapping("bulletinsection")
//	@ResponseBody
	public String bulletin_pagereload(@RequestParam("page") int page) {
		System.out.println("pagereload");
		return "bulletinsection"+page;
	}

	@RequestMapping("mypagesection")
	public String mypage_pagereload(@RequestParam("page") int page,
			Model model,
    		@ModelAttribute RecipeDTO dto) {
		
		System.out.println("pagereload");
		RecipeDTO recipedto = mypageService.myrecipeselect(dto);
        System.out.println("recipedto : " + recipedto);
        
        model.addAttribute("recipedto", recipedto);
		return "mypagesection"+page;
	}
	
}
