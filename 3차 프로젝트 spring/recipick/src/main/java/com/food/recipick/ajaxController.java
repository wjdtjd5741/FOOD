package com.food.recipick;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ajaxController {
	
	@RequestMapping("bulletinsection")
//	@ResponseBody
	public String pagereload(@RequestParam("page") int page) {
		System.out.println("pagereload");
		return "bulletinsection"+page;
	}
}
