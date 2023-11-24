package com.food.recipick;

import java.util.List;
import java.util.Map;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.food.recipick.dto.MemberDTO;
import com.food.recipick.dto.RecipeDTO;
import com.food.recipick.service.MypageService;
import com.food.recipick.service.SearchService;

@Controller
public class AjaxController {
	
	@Autowired
	SearchService searchService;
	@Autowired
	MypageService mypageService;
	
	@RequestMapping("bulletinsection")
//	@ResponseBody
	public String bulletin_pagereload(@RequestParam("page") int page) {
		System.out.println("pagereload");
		return "bulletinsection"+page;
	}

	@RequestMapping("mypagesection")
	public String mypage_pagereload(
			@RequestParam("page") int page,
			Model model,
			HttpServletRequest request,
    		@ModelAttribute RecipeDTO dto) {
		
		HttpSession session = request.getSession();
		
		// 세션에서 memberdto 에 있는 uname 꺼내서 dto에 넣기
		
		MemberDTO memberdto = (MemberDTO) session.getAttribute("memberdto");
        dto.setUname(memberdto.getUname());
        System.out.println("dto.getUname : " + dto.getUname() );
		
		
		System.out.println("pagereload:" + dto);
		List recipedto = mypageService.myrecipeselect(dto);
		
        System.out.println("recipedto : " + recipedto);
        
        model.addAttribute("recipedto", recipedto);
        
     // 페이징
     		// 초기 값 지정
     		int pageNum = 1; // 현재 페이지 
     		int countPerPage = 4; // 한 페이지에 몇 개 보여줄지
     		System.out.println("pageNum : " + pageNum);
     		// 넘어 온 페이지 값을 변수에 넣어주기
     		String tmp_pageNum = request.getParameter("pageNum");
     		System.out.println("tmp_pageNum : " + tmp_pageNum);
     		// 그 값이 null이 아니면 숫자로 바꿔서 넣어주기
     		if(tmp_pageNum != null) {
     			// 숫자가 아닌게 들어 올 수도 있으니까 try/catch
     			try {
     				pageNum = Integer.parseInt(tmp_pageNum);
     				
     			} catch(Exception e) {
     				e.printStackTrace();
     			}
     			
     		}
     		
     		String tmp_countPerPage = request.getParameter("countPerPage");
     		
     		if(tmp_pageNum != null) {
     			// 숫자가 아닌게 들어 올 수도 있으니까 try/catch
     			try {
     				countPerPage = Integer.parseInt(tmp_countPerPage);
     				
     			} catch(Exception e) {
     				e.printStackTrace();
     			}
     			
     		}
     		
     		
     		Map map = mypageService.getMylistPage(pageNum, countPerPage);
     		
     		map.put("pageNum", pageNum);
     		map.put("countPerPage", countPerPage);
     		
            model.addAttribute("data", map);
            
            System.out.println("map : " + map);
        
		return "mypagesection"+page;
	}
	
    @RequestMapping(value="/gg" , method= {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void recipePage1(
    		MultipartHttpServletRequest request
            ) {
        List<MultipartFile> files = request.getFiles("file");
        String textData = request.getParameter("textData");
        System.out.println(textData);

    }
	
}
