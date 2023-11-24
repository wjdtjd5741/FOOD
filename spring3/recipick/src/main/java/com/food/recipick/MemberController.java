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

import com.food.recipick.dto.MemberDTO;
import com.food.recipick.dto.RecipeDTO;
import com.food.recipick.service.NewsignService;

@Controller
public class MemberController {
	
	@Autowired
	NewsignService newsignService;

	// 로그인
	@RequestMapping("/loginsubmit")
	public String loginsubmit(
			Model model, 
			@ModelAttribute MemberDTO dto,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		
	        // 전달받은 uname, pw를
	    	// db에서 조회하고
	    	// controller에서 판단하고 size가 0인지 아닌지
	    	// 보여줄 페이지 결정
		
		MemberDTO loginList = newsignService.loginselect(dto);
		
	    System.out.println(loginList);
	    
        if (loginList != null) {
            // 로그인이 성공한 경우
        	
        	// 회원 정보를 세션에 저장
    		session.setAttribute("memberdto", loginList);
//    		String str = (String)session.getAttribute("memberdto");
    		
        	return "redirect:/main"; // 메인 페이지로 리다이렉트
        	
        } else {
            // 로그인이 실패한 경우
        	model.addAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다.");
            return "login"; // 로그인 페이지로 이동
        }
	}
	
	// 회원가입
	@RequestMapping("/newsignsubmit")
	public String newsignsubmit(Model model, 
//			@RequestParam("user") String user,
			@ModelAttribute MemberDTO dto) {
		
//		System.out.println("ff");
//		
//		System.out.println("uname : " + dto.getUname());
//		System.out.println("gender : " + dto.getGender());
		
		List isDuplicateUname = newsignService.isDuplicateUname(dto);
		
		 // 필수 항목이 모두 입력되었는지 확인
		if(dto.getUname() != null && dto.getPw() != null 
				&& dto.getEmail() != null && dto.getBirth() != null 
				&& dto.getPhone() != null  && dto.getGender() != null
			) {
			
			// 중복 검사
            if (isDuplicateUname.size() != 0) {
                model.addAttribute("error1", "이미 등록된 회원입니다.");
                return "newsign";
            }

            // 중복된 uname이 없으면 회원 가입 진행
			int result = newsignService.newsigninsert(dto);
			System.out.println("getEmail" + dto.getEmail());
			
			return "login";
			
		} else {
			
			model.addAttribute("error2", "필수 항목을 모두 입력해주세요.");
			return "newsign";
		}
		
		
		// 가입하려는 형식(타입, 서식에 맞는 양식 등..)과 일치한다면 가입가능
		// db에 있는 user(id)와 비교
		// 새로 가입하려는 user(id)가 db에 있는 user(id)명과 일치한다면 가입X
		
		// 새로 가입할 수 있다면 insert로 db에 추가
		// login에 있는 데이터를 insert시켜서 데이터가 쌓이면 select으로 uname에 해당하는
		// 정보 불러오기
		
		// 가입성공하면 login. 실패하면 다시 회원가입 페이지로
		
//		return "redirect:newsign";
	}
	
	    // 로그아웃
	    @RequestMapping("/logout")
	    public String logoutsubmit(HttpServletRequest request) {
	        
	        HttpSession session = request.getSession();
	        
	        session.invalidate(); // 저장된 session 제거
	        
			return "redirect:/main";
	}
	    // 수정
	    @RequestMapping(value="/mypagesubmit", method=RequestMethod.POST)
		public String mypagesubmit(@ModelAttribute MemberDTO dto,
				HttpServletRequest request) {
	    	
	    	HttpSession session = request.getSession();
	    	
//	    	System.out.println("getEmail : " + dto.getEmail());
//	    	System.out.println("getUname : " + dto.getUname());
	    	
	    	int updateMypage = newsignService.updateMypage(dto);
//	    	System.out.println("update 결과 : " + updateMypage);
	    	
//	    	System.out.println("getEmail : " + dto.getEmail());
	    	session.setAttribute("memberdto", dto);
	    	
			return "redirect:/mypage";
	    }
	    
	    // 회원탈퇴
	    @RequestMapping("/memberout")
	    public String memberout(Model model,
	    		@ModelAttribute MemberDTO dto,
	    		HttpServletRequest request) {
	    	
//	    	System.out.println("회원탈퇴 실행");

	    	HttpSession session = request.getSession();
	      

	        // 세션에서 uname 꺼내서
	        // dto에 uname 넣기
	    	MemberDTO memberdto = (MemberDTO) session.getAttribute("memberdto");
	        dto.setUname(memberdto.getUname());
//	        System.out.println("dto.getUname : " + dto.getUname() );
	        
	        // 여기에서 실제 회원탈퇴 로직 수행
	        int result = newsignService.memberout(dto);
//	        System.out.println("회원탈퇴 서비스 실행");
	        
	        model.addAttribute("result", result);
	        
	        session.invalidate(); // 세션 무효화

	        return "redirect:/main"; // 회원탈퇴 후 메인 페이지로 이동
	    }
	    
	
	
}
