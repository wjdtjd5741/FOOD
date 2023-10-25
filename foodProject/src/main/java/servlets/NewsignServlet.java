package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.MemberDTO;

@WebServlet("/NewsignServlet")
public class NewsignServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private List<MemberDTO> memberList = new ArrayList<>();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // 회원가입 양식에서 전송된 데이터 가져오기
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String birth = request.getParameter("birth");
        // String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        
        MemberDTO mbDTO = new MemberDTO();
        mbDTO.setId(id);
        mbDTO.setPw(pw);
        mbDTO.setEmail(email);
        mbDTO.setBirth(birth);
        mbDTO.setPhone(phone);
        mbDTO.setName(name);
        
        memberList.add(mbDTO);
        
        request.setAttribute("mb", mbDTO);
        
        Cookie c = new Cookie("pw", mbDTO.getPw());
        c.setMaxAge(365*24*60*60);
        response.addCookie(c);
        response.addCookie(new Cookie("phone", mbDTO.getPhone()));
        response.addCookie(new Cookie("id", mbDTO.getId()));
        
//        RequestDispatcher b = request.getRequestDispatcher("login.jsp");
//        b.forward(request, response);
        
//	}
//        System.out.println(id);
//        System.out.println(password);
//        System.out.println(email);
//        System.out.println(name);
//        System.out.println(birth);
//        System.out.println(phone);
        
        
        if (!id.isEmpty() && !pw.isEmpty() && !name.isEmpty() && !birth.isEmpty() && !phone.isEmpty()) {
            // 모든 필드가 채워져 있으면 login.jsp로 이동
//            System.out.println(id);
//            System.out.println(password);
//            System.out.println(email);
//            System.out.println(name);
//            System.out.println(birth);
//            System.out.println(phone);

        	RequestDispatcher b = request.getRequestDispatcher("login.jsp");
            b.forward(request, response);

        } else {
            // 어느 하나라도 비어있다면 newsign.jsp로 이동
        	 response.sendRedirect("newsign.jsp");
        }
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
