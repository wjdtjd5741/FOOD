package com.food.recipick;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.food.recipick.dto.MemberDTO;
import com.food.recipick.dto.RecipeDTO;
import com.food.recipick.service.NewsignService;

@Controller
public class MemberController {
	
	@Autowired
	NewsignService newsignService;

	@RequestMapping("/loginsubmit")
	public String loginsubmit(
			Model model, 
			@ModelAttribute MemberDTO dto,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		
	        // ���޹��� uname, pw��
	    	// db���� ��ȸ�ϰ�
	    	// controller���� �Ǵ��ϰ� size�� 0���� �ƴ���
	    	// ������ ������ ����
	    List loginList = newsignService.loginselect(dto);
	    System.out.println(loginList.size());
        if (loginList.size() != 0) {
            // �α����� ������ ���
    		
//    		// model�� ��Ƽ�
    		model.addAttribute("list", loginList);
    		session.setAttribute("memberdto", dto);
//    		String str = (String)session.getAttribute("memberdto");
    		
    		
        	return "main"; // ���� �������� �����̷�Ʈ
        	
        } else {
            // �α����� ������ ���
        	model.addAttribute("error", "���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
            return "login"; // �α��� �������� �̵�
        }
	}
	
	@RequestMapping("/newsignsubmit")
	public String newsignsubmit(Model model, 
//			@RequestParam("user") String user,
			@ModelAttribute MemberDTO dto) {
		System.out.println("ff");
		
		System.out.println("uname : " + dto.getUname());
		System.out.println("gender : " + dto.getGender());
		
		List isDuplicateUname = newsignService.isDuplicateUname(dto);
		
		 // �ʼ� �׸��� ��� �ԷµǾ����� Ȯ��
		if(dto.getUname() != null && dto.getPw() != null 
				&& dto.getEmail() != null && dto.getBirth() != null 
				&& dto.getPhone() != null  && dto.getGender() != null
			) {
			
			// �ߺ� �˻�
            if (isDuplicateUname.size() != 0) {
                model.addAttribute("error1", "�̹� ��ϵ� ȸ���Դϴ�.");
                return "newsign";
            }

            // �ߺ��� uname�� ������ ȸ�� ���� ����
			int result = newsignService.newsigninsert(dto);

			return "login";
			
		} else {
			
			model.addAttribute("error2", "�ʼ� �׸��� ��� �Է����ּ���.");
			return "newsign";
		}
		
		
		// �����Ϸ��� ����(Ÿ��, ���Ŀ� �´� ��� ��..)�� ��ġ�Ѵٸ� ���԰���
		// db�� �ִ� user(id)�� ��
		// ���� �����Ϸ��� user(id)�� db�� �ִ� user(id)��� ��ġ�Ѵٸ� ����X
		
		// ���� ������ �� �ִٸ� insert�� db�� �߰�
		// login�� �ִ� �����͸� insert���Ѽ� �����Ͱ� ���̸� select���� uname�� �ش��ϴ�
		// ���� �ҷ�����
		
		// ���Լ����ϸ� login. �����ϸ� �ٽ� ȸ������ ��������
		
//		return "redirect:newsign";
	}
	
	
}
