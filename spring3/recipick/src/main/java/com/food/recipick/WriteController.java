package com.food.recipick;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value="/review_sel", method= {RequestMethod.POST, RequestMethod.GET})
	public String writepage(Model model,
			@ModelAttribute WriteDTO dto,
			HttpServletRequest request,
			@RequestParam("hash_name2")List<String> hash_name
			) {
		System.out.println("hash_name:"+hash_name);
		HttpSession session = request.getSession();
		dto.setHash_name(hash_name);
		System.out.println("review_title:"+dto.getReview_title());
		System.out.println("review_text:"+dto.getHash_name().get(0));
		System.out.println("dto:"+dto);

		rService.insertReview(dto);
//		session.setAttribute("a", review_bul_sel);

		
		return "redirect:/bulletin";
		
	}

	@RequestMapping("/writer_view")
	public String writer(@RequestParam("review_id")String review_id,
			@ModelAttribute WriteDTO dto,
			
			HttpServletRequest request) {
		
		System.out.println("dto:"+dto);
		HttpSession session = request.getSession();
		
		List selectData_review = rService.selectData_review(dto);
		List select_hash=rService.select_hash(dto);
		System.out.println("selectData_review: "+selectData_review.get(0));
		System.out.println("select_hash:"+select_hash.get(0));
		session.setAttribute("selectData_review", selectData_review);	
		session.setAttribute("select_hash", select_hash);
		session.setAttribute("review_id", review_id);
		
		return "writer";
		
	}
	//수정
	@RequestMapping("/writer_modify")
	public String modify_review(@RequestParam("review_id")String review_id,
			@ModelAttribute WriteDTO dto,
			HttpServletRequest request) {
		System.out.println("update확인:"+ review_id);
		HttpSession session=request.getSession();
		int update=	rService.update_review(dto);
		session.setAttribute("update_review",update); 
		System.out.println("update:"+update);
		return "redirect:/writer_view?review_id="+review_id;
	}
	//삭제
	@RequestMapping("/delete_review")
	public String delete_review(@ModelAttribute WriteDTO dto,
			@RequestParam("review_id")int review_id) {
		System.out.println("ㅈㅁ더ㅏㅣㄹㅈㅁ더ㅏㅣ럼ㅈㄹ다ㅣ");
		System.out.println("review_id:"+review_id);
		rService.delete_review(dto);
		
		return "redirect:/bulletin";
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
