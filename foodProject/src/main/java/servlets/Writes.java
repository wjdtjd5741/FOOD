package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.WritesDTO;

/**
 * Servlet implementation class Writes
 */
@WebServlet("/Writes")
public class Writes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Writes() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		Date d = new Date();
//		String date = "" + d.getTime();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
//		String title=request.getParameter("title");
//		String contents = request.getParameter("contents");
		//String[] hashtags = request.getParameterValues("viewhash");
		String[] strArr = request.getParameter("data").split(",");
		System.out.println(strArr[0]);
		System.out.println(strArr[1]);
		System.out.println(strArr[2]);
		
		String updatedReviewText = request.getParameter("updatedReviewText");
		
		String cook ="";
		System.out.println(strArr[0]);
		Cookie[] cookie=request.getCookies();
		if(cookie!=null) {
			for(Cookie c :cookie) {
				if(c.getName().equals("id")) {
					
					cook=c.getValue();
				}
			}
		}
		String[] hashs = strArr[1].split(" ");
		List<String> strList = new ArrayList<>();
		for(int i = 0 ;i<hashs.length ;i++) 
			strList.add(hashs[i]); 
		
//		 System.out.println(strArr[2]);
//		String[] hashtags = request.getParameterValues("viewhash");
//		List<String> hash = new ArrayList<>();s
//		PrintWriter out=response.getWriter();
		WritesDTO write = new WritesDTO();//
		Date dd = new Date();
		
		write.setView(0);
		write.setWriter(cook);
//		System.out.println("¿Ã∏ß"+ strArr[0]);
//		System.out.println(strArr[1]);
//		System.out.println(hash);
		write.setHashtags(strList);
		write.setTitle(strArr[0]);
		write.setText(strArr[2]);
//		write.setPic("pic");
		write.setDate(dd.getTime());

		request.setAttribute("write", write);
		
		/* System.out.println(write.getTitle()); */
		/* response.sendRedirect("test.jsp"); */

		RequestDispatcher dis = request.getRequestDispatcher("writerview.jsp");
		dis.forward(request, response);
	}


}
