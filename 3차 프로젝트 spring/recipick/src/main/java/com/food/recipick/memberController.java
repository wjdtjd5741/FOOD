package com.food.recipick;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class memberController {

	@RequestMapping("/loginsubmit")
	public String loginsubmit() {
		
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
	
	
}
