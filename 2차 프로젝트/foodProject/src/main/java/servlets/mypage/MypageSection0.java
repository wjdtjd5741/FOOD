package servlets.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.MemberDTO;

/**
 * Servlet implementation class MypageSection0
 */
@WebServlet("/MypageSection0")
public class MypageSection0 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageSection0() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		String id = request.getParameter("id");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String birth = request.getParameter("birth");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        System.out.println(id);
        System.out.println(password);
        System.out.println(email);
        System.out.println(birth);
        System.out.println(phone);
        System.out.println(gender);
        
//        id를 가져와서 DTO에 저장한다
        
        if(id == null) {
        	  MemberDTO my = new MemberDTO();
              my.setId(id);
              my.setId(password);
              my.setId(email);
              my.setId(name);
              my.setId(birth);
              my.setId(phone);
              my.setId(gender);
              request.setAttribute("my", my);
       		  session.setAttribute("mb", my);
        } 
        */
		HttpSession session = request.getSession();
		MemberDTO mm = (MemberDTO)session.getAttribute("mb");
		System.out.println("mm : " + mm);
		request.setAttribute("mb",mm);
		
//		System.out.println(mm.getId());
		
		RequestDispatcher dis = request.getRequestDispatcher("assets/component/mypage/section0.jsp");
		dis.forward(request, response);
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}












	
