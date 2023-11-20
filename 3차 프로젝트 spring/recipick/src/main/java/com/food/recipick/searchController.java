package com.food.recipick;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.recipick.service.SearchService;

@Controller
public class searchController {
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping("/searchHash")
	public String search(Model m , @RequestParam("data") String data) {
		Map map = new HashMap();
		map.put("recipe_title", data);
		List l = searchService.searchRecipe(map);
		System.out.println(l.get(0).toString());
		m.addAttribute("data", data);
		m.addAttribute("contents", l);
		return "search";
	}
	
	@RequestMapping("/gorecipe")
	public String gorecipe(@RequestParam("reciid") String data) {
		
		System.out.println("in0");
		return "recipe";
	}
}
