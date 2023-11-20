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
		
		// ���̵� / ��й�ȣ ��. 
		// ������ main. Ʋ���� �ٽ� �α�����������(redirect)
		
		return "main";
//		return "redirect:login";
	}
	
	@RequestMapping("/newsignsubmit")
	public String newsignsubmit() {
		
		// �����Ϸ��� ����(Ÿ��, ���Ŀ��´� ��� ��..)�� ��ġ�Ѵٸ� ���԰���
		// db�� �ִ� user(id)�� ��
		// ���� �����Ϸ��� user(id)�� db�� �ִ� user(id)��� ��ġ�Ѵٸ� ����X
		// ���� ������ �� �ִٸ� insert�� db�� �߰�
		
		// ���Լ����ϸ� login. �����ϸ� �ٽ� ȸ������ ��������
		
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
