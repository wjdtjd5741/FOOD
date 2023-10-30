package servlets.bulletin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.WritesDTO;

/**
 * Servlet implementation class Section1
 */
@WebServlet("/BulletinSection1")
public class BulletinSection1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BulletinSection1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession bullsession=request.getSession();
		List<WritesDTO> bullList=new ArrayList<>();
		Date dd = new Date();
		WritesDTO bDTO = new WritesDTO();
		bDTO.setDate(dd.getTime());
		bDTO.setTitle("레시피 제목");
		bDTO.setWriter("작성자");
		bDTO.setView(1);
		WritesDTO bull=(WritesDTO)bullsession.getAttribute("write");
		
		bullList.add(bull);
//		bullList.add(bDTO);
		request.setAttribute("bullList", bullList);
		RequestDispatcher dis = request.getRequestDispatcher("assets/component/bulletin/section1.jsp");
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
