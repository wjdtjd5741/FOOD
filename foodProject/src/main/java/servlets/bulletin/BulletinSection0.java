package servlets.bulletin;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import component.RecipickLib;
import models.RecipesDTO;

/**
 * Servlet implementation class Section0
 */
@WebServlet("/BulletinSection0")
public class BulletinSection0 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BulletinSection0() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<RecipesDTO> recipe_list = new ArrayList<>();
		RecipesDTO bDTO = new RecipesDTO();
		
		bDTO.setDate(1698196098061L);
		bDTO.setTitle("레시피 제목");
		bDTO.setWriter("작성자");
		bDTO.setView(1);
		bDTO.setMainPic("https://cdn.discordapp.com/attachments/1148541415828246548/1149239197144723456/salmon-518032_1280.jpg");

		HttpSession session = request.getSession();
		RecipesDTO rDTO = (RecipesDTO)session.getAttribute("rDTO");
		
		recipe_list.add(rDTO);
		recipe_list.add(bDTO);
		System.out.println(recipe_list);
		
		request.setAttribute("recipe_list", recipe_list);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("assets/component/bulletin/section0.jsp");
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
