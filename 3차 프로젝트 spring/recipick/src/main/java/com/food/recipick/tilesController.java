package com.food.recipick;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class tilesController {
	
	@RequestMapping("/main")
	public String main() {
		System.out.println("ff");
		return "main";
	}
	
	@RequestMapping("/search")
	public String search() {
		System.out.println("aa");
		return "search";
	}
	
	@RequestMapping("/bulletin")
	public String bulletin() {
		System.out.println("aa");
		return "bulletin";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/newsign")
	public String newsign() {
		return "newsign";
	}
	
	@RequestMapping("/recipe")
	public String recipe() {
		return "recipe";
	}
}

