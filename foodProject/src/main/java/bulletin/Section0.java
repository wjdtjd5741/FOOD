package bulletin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Section0
 */
@WebServlet("/Section0")
public class Section0 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Section0() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BulletinDTO bDTO = new BulletinDTO();
		bDTO.setDate("yyyy-mm-dd");
		bDTO.setTitle("������ ����");
		bDTO.setWriter("�ۼ���");
		bDTO.setView(1);
		bDTO.setImg("https://cdn.discordapp.com/attachments/1148541415828246548/1149239197144723456/salmon-518032_1280.jpg");
		request.setAttribute("bDTO", bDTO);
		System.out.print("fasf");
		
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
