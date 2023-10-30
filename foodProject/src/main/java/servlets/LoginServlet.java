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
        // ����� �̸��� ��й�ȣ�� ��ȿ���� Ȯ��
        if (mm != null && id.equals(mm.getId()) && pw.equals(mm.getPw())) {
            // �α����� ������ ���
            request.setCharacterEncoding("UTF-8");
            HttpSession session1 = request.getSession();
            session1.setAttribute("id", id);
            session1.setAttribute("pw", pw);
            response.sendRedirect("Recipick"); // ���� �������� �����̷�Ʈ
        } else {
            // �α����� ������ ���
            response.getWriter().println("��ġ���� �ʴ� ���̵� �Ǵ� ��й�ȣ�Դϴ�."); // �޽��� ���
            response.sendRedirect("login.jsp?mag=" + URLEncoder.encode("��ġ���� �ʴ� ���̵� �Ǵ� ��й�ȣ�Դϴ�.", "utf-8")); // �α��� �������� �����̷�Ʈ
        }
    }
}
