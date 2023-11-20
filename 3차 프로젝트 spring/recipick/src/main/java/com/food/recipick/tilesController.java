package com.food.recipick;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class tilesController {
	
	@RequestMapping("/main")
	public String main(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String str = request.getParameter("ck");
		
		// �˾��ڽ��� üũ�Ǹ� ��ŰpopupBox�� off�� �߰�
		// Redirect ������� �ٽ� �� �������� �ҷ���
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
	@RequestMapping("/writer")
	public String writer() {
		return "writer";
	}
}

