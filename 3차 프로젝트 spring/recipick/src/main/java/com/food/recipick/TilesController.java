package com.food.recipick;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.food.recipick.dto.RecipeDTO;

import com.food.recipick.dto.WriteDTO;
import com.food.recipick.service.RecipickService;
import com.food.recipick.service.WriteService;


@Controller
public class TilesController {
	
	@Autowired
	RecipickService recipickservice;

	@Autowired
	WriteService writeService;
	
	@RequestMapping("/main")
	public String main(HttpServletRequest request, HttpServletResponse response
			) throws IOException {
		
		String str = request.getParameter("ck");
		
		// 팝업박스가 체크되면 쿠키popupBox에 off값 추가
		// Redirect 방식으로 다시 이 페이지를 불러옴
		if(str != null && str.equals("1")) {
			//System.out.println("dd");
			Cookie c = new Cookie("popupBox", "off");
			//cookie.setPath()
			c.setMaxAge(60*60*24);
			response.addCookie(c);
			response.sendRedirect("main");
		} else {
				
		}
		return "main";
	}
	
	@RequestMapping("/search")
	public String search() {
		System.out.println("aa");
		return "search";
	}
	
	@RequestMapping("/bulletin")
	public String bulletin(@ModelAttribute RecipeDTO dto, Model m,
			@ModelAttribute WriteDTO wdto,

			HttpServletRequest request) {
		System.out.println("aa");
		System.out.println(dto);
		HttpSession s = request.getSession();
		
		List bul_rec = recipickservice.bulletin(dto);
		System.out.println(bul_rec);
		s.setAttribute("bul_rec", bul_rec);
		
		List write_all = writeService.selectdata_all(wdto);
		s.setAttribute("review_bul_sel",write_all);

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
	@RequestMapping("/writer")
	public String writer() {
		return "writer";
	}
	@RequestMapping("/newrecipe")
	public String newrecipe() {
		return "newrecipe";
	}
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
	@RequestMapping("/write")
	public String write() {
		return "write";
	}
}

