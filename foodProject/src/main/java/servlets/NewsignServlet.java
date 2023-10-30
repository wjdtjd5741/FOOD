package servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // ȸ������ ��Ŀ��� ���۵� ������ ��������
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String birth = request.getParameter("birth");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        //System.out.println(gender);
        
//        RequestDispatcher b = request.getRequestDispatcher("login.jsp");
//        b.forward(request, response);
        
//	}
//        System.out.println(id);
//        System.out.println(password);
//        System.out.println(email);
//        System.out.println(name);
//        System.out.println(birth);
//        System.out.println(phone);
        
        if (!id.isEmpty() && !pw.isEmpty() && !name.isEmpty() && !birth.isEmpty() && !phone.isEmpty() && gender != null) {
            // ��� �ʵ尡 ä���� ������ login.jsp�� �̵�
//            System.out.println(id);
//            System.out.println(password);
//            System.out.println(email);
//            System.out.println(name);
//            System.out.println(birth);
//            System.out.println(phone);
            MemberDTO mbDTO = new MemberDTO();
            mbDTO.setId(id);
            mbDTO.setPw(pw);
            mbDTO.setEmail(email);
            mbDTO.setBirth(birth);
            mbDTO.setPhone(phone);
            mbDTO.setName(name);
            mbDTO.setGender(gender);
            mbDTO.setAdmin("������");
            
            request.setAttribute("mb", mbDTO);
        	Cookie c = new Cookie("id", mbDTO.getId());
        	c.setMaxAge(365*24*60*60);
        	response.addCookie(c);
        	
        	c = new Cookie("admin", mbDTO.getAdmin());
            c.setMaxAge(365*24*60*60);
            response.addCookie(c);

        	RequestDispatcher b = request.getRequestDispatcher("login.jsp");
            b.forward(request, response);

        } else {
            // ��� �ϳ��� ����ִٸ� newsign.jsp�� �̵�
        	request.setCharacterEncoding("utf-8");
            response.setContentType("text/html; charset=utf-8");
            
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('�ʼ� ������ ��� �Է����ּ���.');");
            out.println("location='newsign.jsp';");
            out.println("</script>");
        }
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
