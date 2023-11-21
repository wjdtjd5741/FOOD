package com.food.recipick;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.food.recipick.dto.WriteDTO;
import com.food.recipick.service.WriteService;


@Controller
public class WriteController {

	@Autowired
	WriteService rService;
	
	//reqParam
	//modelAttri 
	
	@RequestMapping("/addPage")
	public String writepage(Model model,
			@ModelAttribute WriteDTO dto) {
		model.addAttribute("dto",dto);
	
		System.out.println("review_title:"+dto.getReview_title());
		System.out.println("review_text:"+dto.getReview_text());
		
		List result=rService.writepage(dto);
		
		return "writerview";
	}
	
	@RequestMapping("/bullet")
	public List bulletin(Model model,
			@ModelAttribute WriteDTO dto) {
		List result2=rService.bulletin(dto);
		model.addAttribute("dto",dto);
		return result2;
		
	}
	
	
}
