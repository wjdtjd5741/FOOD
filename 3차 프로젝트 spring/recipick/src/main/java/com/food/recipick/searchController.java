package com.food.recipick;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class searchController {
	
	@RequestMapping("/searchHash")
	public String search(Model m , @RequestParam("data") String data) {
		m.addAttribute("data", data);
		return "search";
	}
}
