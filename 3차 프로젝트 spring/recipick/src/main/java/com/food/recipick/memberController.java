package com.food.recipick;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tiles.request.servlet.ServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class memberController {

	@RequestMapping("/loginsubmit")
	public String loginsubmit(@RequestParam("id") String id,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		
		// 아이디 / 비밀번호 비교. 
		// 맞으면 main. 틀리면 다시 로그인페이지로(redirect)
		
		return "main";
//		return "redirect:login";
	}
	
	@RequestMapping("/newsignsubmit")
	public String newsignsubmit() {
		
		// 가입하려는 형식(타입, 서식에맞는 양식 등..)과 일치한다면 가입가능
		// db에 있는 user(id)와 비교
		// 새로 가입하려는 user(id)가 db에 있는 user(id)명과 일치한다면 가입X
		// 새로 가입할 수 있다면 insert로 db에 추가
		
		// 가입성공하면 login. 실패하면 다시 회원가입 페이지로
		
		return "login";
//		return "redirect:newsign";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		return "login";
	}
	
}
