package com.food.recipick;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
			@RequestParam(value="detail_text", required=false)List<String> detail_text,
			HttpServletRequest request,
			Model m
			) {
		
		HttpSession session = request.getSession();
		
		dto.setUser((String)session.getAttribute("memberdto"));
		System.out.println(dto);
		
		RecipeDTO bulletin_rec_sel = (RecipeDTO)recipickservice.recipePage1(dto);
		
		m.addAttribute("bul_rec_sel", bulletin_rec_sel);
		
		return "bulletinsection0";
		
	}
	
	@RequestMapping(value="/bulletin_rec_sel")
	public String bulletin_rec_sel(@ModelAttribute RecipeDTO dto) {
		
			
		
		return "bulletin";
	}
	
	
	
	
	
	
}
