package servlets;

import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import models.MainPageDTO;

/**
 * Servlet implementation class Recipick
 */
@WebServlet("/Recipick")
public class Recipick extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Recipick() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String str = request.getParameter("ck");
		System.out.println(str);
		
		if(str != null && str.equals("1")) {
			System.out.println("dd");
			Cookie c = new Cookie("popupBox", "off");
			//cookie.setPath()
			c.setMaxAge(60);
			response.addCookie(c);
			response.sendRedirect("mainpage.jsp");
		} else {		
		
		MainPageDTO mainpage = new MainPageDTO();
		List<String> strList = new ArrayList<>();
		strList.add("https://cdn.discordapp.com/attachments/1148541415828246548/1148562443900043304/chuseok.jpg");
		strList.add(
				"https://media.istockphoto.com/id/1449032425/ko/%EC%82%AC%EC%A7%84/%ED%8C%8C%EB%9E%80%EC%83%89%EC%97%90-%EA%B1%B4%EA%B0%95-%EC%8B%9D%ED%92%88%EC%9C%BC%EB%A1%9C-%EA%B0%80%EB%93%9D-%EC%B0%AC-%EC%87%BC%ED%95%91%EB%B0%B1.webp?b=1&s=612x612&w=0&k=20&c=_vhyGwUQA_p_2M6jWxBS5ymy1bebyUEw7RGZltC8e0c=");
		mainpage.setTopImg(strList);
		strList = new ArrayList<>();
		strList.add(
				"https://img.freepik.com/free-photo/kimchi-ready-to-eat-in-black-plate_1150-35691.jpg?size=626&ext=jpg&ga=GA1.2.1026167912.1691650236&semt=sph");
		strList.add("πË√ﬂ ±Ëƒ°");

		List<List> lists = new ArrayList<>();
		lists.add(strList);
		mainpage.setFavor(lists);
		strList = new ArrayList<>();
		strList.add(
				"https://img.freepik.com/premium-photo/korean-instant-noodles-with-fried-chicken-or-fried-chicken-ramyeon_1339-175174.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph");
		strList.add("≈Ÿ¥ı∂Û∏È");
		strList = new ArrayList<>();
		strList.add("¥ﬂ∂À¡˝");
		strList.add("∏∂¥√");
		mainpage.setHashtags(strList);
		List recom = new ArrayList();

		List strLista = new ArrayList();
		strLista.add(
				"https://cdn.discordapp.com/attachments/1148541415828246548/1149239367269875772/pancakes-2291908_1280.jpg");
		strLista.add("∂Û¡Ó∫£∏Æ ∆“ƒ…¿Ã≈©");
		strLista.add(mainpage.getHashtags());
		recom.add(strLista);
		String bottomImg = "https://cdn.discordapp.com/attachments/1148541415828246548/1148560521562427402/main.jpg";
		mainpage.setBottomImg(bottomImg);
		mainpage.setRecom(recom);

		request.setAttribute("mainpage", mainpage);
		
		RequestDispatcher dis = request.getRequestDispatcher("mainpage.jsp");
		dis.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
