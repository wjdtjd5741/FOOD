package com.food.recipick;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.recipick.service.SearchService;

@Controller
public class AjaxController {
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping("bulletinsection")
//	@ResponseBody
	public String bulletin_pagereload(@RequestParam("page") int page) {
		System.out.println("pagereload");
		return "bulletinsection"+page;
	}

	@RequestMapping("mypagesection")
	public String mypage_pagereload(@RequestParam("page") int page) {
		System.out.println("pagereload");
		return "mypagesection"+page;
	}
	
}
