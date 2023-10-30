package servlets;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.RecipesDTO;

/**
 * Servlet implementation class SearchHash
 */
@WebServlet("/searchHash")
public class SearchHash extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchHash() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String data = request.getParameter("data");
//		request.setAttribute("data", data); 
		
		// 받아온 데이터를 rDTO 객체에 맵핑
		RecipesDTO rDTO = new RecipesDTO();
		List<RecipesDTO> dtoList = new ArrayList<>();
		rDTO.setTitle("계란찜");
		rDTO.setMainPic("https://cdn.discordapp.com/attachments/1148541415828246548/1149236900566138890/korean-food-gyeran-jjim-or-poached-egg.jpg");
		List<String> strList = new ArrayList<>();
		strList.add("#계란");
		strList.add("#쪽파");
		rDTO.setHashtags(strList);
		dtoList.add(rDTO);
		rDTO = new RecipesDTO();
		rDTO.setTitle("떡볶이");
		rDTO.setMainPic("https://cdn.discordapp.com/attachments/1148541415828246548/1149236902130618428/cheesy-tokbokki-korean-traditional-food-on-black-board-background-lunch-dish.jpg");
		strList = new ArrayList<>();
		strList.add("#떡");
		strList.add("#어묵");
		strList.add("#고추장");
		rDTO.setHashtags(strList);
		dtoList.add(rDTO);
		
		// forward 방식으로 searchpage.jsp페이지에 request
		request.setAttribute("rDTOList", dtoList);
		RequestDispatcher dis = request.getRequestDispatcher("searchpage.jsp");
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
