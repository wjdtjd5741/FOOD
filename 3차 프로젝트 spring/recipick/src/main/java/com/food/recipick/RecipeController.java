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

import com.food.recipick.dto.MemberDTO;
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
		if(session.getAttribute("memberdto") != null) {
			dto.setUname(((MemberDTO)session.getAttribute("memberdto")).getUname());
		} else
			dto.setUname("admin");
		
		
		recipickservice.recipePage1(dto);
		System.out.println(dto);
//		session.setAttribute("bul_rec_sel", bulletin_rec_sel);
		
		// 조회하는 컨트롤러로 보내자
		// 레시피아이디도 보내자
		// 일단 전체목록으로 가자
		return "redirect:/bulletin";
		
	}
	
	/*
	 * @RequestMapping("/bulletin2") public String bulletin(@ModelAttribute
	 * RecipeDTO dto, Model m) {
	 * 
	 * RecipeDTO bul_rec = recipickservice.bulletin(dto); m.addAttribute("bul_rec",
	 * bul_rec);
	 * 
	 * return "bulletin"; }
	 */
	
}
