package search;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import recipes.RecipesDTO;

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
		String data = request.getParameter("data");
		
		RecipesDTO rDTO = new RecipesDTO();
		List<RecipesDTO> dtoList = new ArrayList<>();
		rDTO.setTitle("계란찜");
		rDTO.setMainPic("");
		List<String> strList = new ArrayList<>();
		strList.add("#계란");
		strList.add("#쪽파");
		rDTO.setHashtags(strList);
		dtoList.add(rDTO);
		rDTO = new RecipesDTO();
		rDTO.setTitle("떡볶이");
		rDTO.setMainPic("");
		strList = new ArrayList<>();
		strList.add("#떡");
		strList.add("#어묵");
		strList.add("#고추장");
		rDTO.setHashtags(strList);
		dtoList.add(rDTO);
		
		/* request.setAttribute("data", data); */
		request.setAttribute("rDTOList", dtoList);
		
		RequestDispatcher dis = request.getRequestDispatcher("searchpage.jsp");
		dis.forward(request, response);
		/*
		 * 
			title
			hashtag(ArrayList)
			재료명 수량(map)
			text
			각 페이지()
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
