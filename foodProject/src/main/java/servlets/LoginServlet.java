package servlets;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.MemberDTO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	MemberDTO mm = (MemberDTO)session.getAttribute("mb");
    	
        String id = request.getParameter("id");
        String pw= request.getParameter("pw"); 
        System.out.println("id: "+ id+ " pw: "+ pw);
        // 사용자 이름과 비밀번호가 유효한지 확인
        if (mm != null && id.equals(mm.getId()) && pw.equals(mm.getPw())) {
            // 로그인이 성공한 경우
            request.setCharacterEncoding("UTF-8");
            HttpSession session1 = request.getSession();
            session1.setAttribute("id", id);
            session1.setAttribute("pw", pw);
            response.sendRedirect("Recipick"); // 메인 페이지로 리다이렉트
        } else {
            // 로그인이 실패한 경우
            response.getWriter().println("일치하지 않는 아이디 또는 비밀번호입니다."); // 메시지 출력
            response.sendRedirect("login.jsp?mag=" + URLEncoder.encode("일치하지 않는 아이디 또는 비밀번호입니다.", "utf-8")); // 로그인 페이지로 리다이렉트
        }
    }
}
