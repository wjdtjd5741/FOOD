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
			response.sendRedirect("Recipick");
		} else {		
		
		MainPageDTO mainpage = new MainPageDTO();
		
		List<String> strList = new ArrayList<>();
		strList.add("https://cdn.pixabay.com/photo/2016/11/29/05/07/breads-1867459_640.jpg");
		strList.add("https://cdn.pixabay.com/photo/2017/03/27/13/54/bread-2178874_640.jpg");
		strList.add("https://cdn.pixabay.com/photo/2020/05/19/20/54/waffles-5192625_640.jpg");
		mainpage.setTopImg(strList);
		
		String[] favorImgArr = { "https://img.freepik.com/free-photo/kimchi-ready-to-eat-in-black-plate_1150-35691.jpg?size=626&ext=jpg&ga=GA1.2.1026167912.1691650236&semt=sph"
							,"https://img.freepik.com/premium-photo/korean-instant-noodles-with-fried-chicken-or-fried-chicken-ramyeon_1339-175174.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph"
							,"https://img.freepik.com/premium-photo/korean-instant-noodle-and-tteokbokki-in-korean-spicy-sauce-rabokki-korean-food-style_1339-143780.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph"
							,"https://img.freepik.com/premium-photo/traditional-food-chicken-soup-with-ginseng_1205-8406.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph"};
		
		String[] favorNameArr = {"πË√ﬂ ±Ëƒ°","≈Ÿ≈Õ ∂Û∏È","∂Û∫∫¿Ã","¥©∑Ó¡ˆ ªÔ∞Ë≈¡"};
		
		List<List> favorlists = new ArrayList<>();
		List favor = new ArrayList();
		for(int i = 0 ;i<favorImgArr.length ;i++) {
			favor = new ArrayList();
			favor.add(favorImgArr[i]);
			favor.add(favorNameArr[i]);
			favorlists.add(favor);
		}
		mainpage.setFavor(favorlists);
		
		
		List recom = new ArrayList();
		List recomContents = new ArrayList();
		String[] recomeImgArr = {"https://cdn.discordapp.com/attachments/1148541415828246548/1149239367269875772/pancakes-2291908_1280.jpg"
								,"https://cdn.discordapp.com/attachments/1148541415828246548/1149239197144723456/salmon-518032_1280.jpg"
								,"https://img.freepik.com/premium-photo/traditional-food-chicken-soup-with-ginseng_1205-8406.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph"
								,"https://img.freepik.com/premium-photo/korean-instant-noodle-and-tteokbokki-in-korean-spicy-sauce-rabokki-korean-food-style_1339-143780.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph"
								,"https://img.freepik.com/premium-photo/korean-instant-noodles-with-fried-chicken-or-fried-chicken-ramyeon_1339-175174.jpg?size=626&ext=jpg&ga=GA1.1.1026167912.1691650236&semt=sph"
								,"https://cdn.discordapp.com/attachments/1148541415828246548/1149236901425987715/side-view-grilled-lamb-liver-with-potato-and-greens.jpg"};
		String[] recomeNameArr = {"∂Û¡Ó∫£∏Æ ∆“ƒ…¿Ã≈©","ø¨æÓ Ω∫≈◊¿Ã≈© & ª¯∑ØµÂ","¥©∑Ó¡ˆ ªÔ∞Ë≈¡","∂Û∫∫¿Ã","ƒ°≈≤ ∂Û∏È","√∂∆« ¥ﬂ∂À¡˝±∏¿Ã"};
		String[] recomeHashTagArr = {"«÷ƒ…¿Ã≈©,Ω√≥™∏Û,∫Í∑±ƒ°","","","","","¥ﬂ∂À¡˝,∏∂¥√"};
		for(int i = 0 ;i<recomeImgArr.length ;i++) {
			recomContents = new ArrayList();
			recomContents.add(recomeImgArr[i]);
			recomContents.add(recomeNameArr[i]);
			recomContents.add(recomeHashTagArr[i]);
			recom.add(recomContents);
		}
		
		String bottomImg = "https://cdn.pixabay.com/photo/2017/08/10/14/09/restaurant-2623071_640.jpg";
		
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
