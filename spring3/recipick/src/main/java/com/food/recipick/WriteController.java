package com.food.recipick;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.food.recipick.dto.WriteDTO;
import com.food.recipick.service.WriteService;


@Controller
public class WriteController {

	@Autowired
	WriteService rService;
	
	//reqParam
	//modelAttri 
	
	@RequestMapping("/review_sel")
	public String writepage(Model model,
			@ModelAttribute WriteDTO dto,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
	
		System.out.println("review_title:"+dto.getReview_title());
		System.out.println("review_text:"+dto.getReview_text());
		

		rService.selectReview(dto);
//		session.setAttribute("a", review_bul_sel);

		
		return "bulletin";
		
	}

	@RequestMapping("/writer_view")
	public String writer(@RequestParam("review_id")String review_id,
			@ModelAttribute WriteDTO dto,
			
			HttpServletRequest request) {
		
		System.out.println("dto:"+dto);
		HttpSession session = request.getSession();
		
		List selectData_review = rService.selectData_review(dto);
		System.out.println("selectData_review: "+selectData_review.get(0));
		session.setAttribute("selectData_review", selectData_review);		
		return "writer";
		
	}
	
	
//	@RequestMapping("/bullet")
//	public List bulletin(Model model,
//			@ModelAttribute WriteDTO dto) {
//		List result2=rService.selectReview(dto);
//		model.addAttribute("dto",dto);
//		return result2;
//		
//	}
	
	
}
