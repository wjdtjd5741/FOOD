package writes;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Date d = new Date();
		String date = ""+d.getTime();
		
		WritesDTO write = new WritesDTO();
		write.setTitle((String)request.getParameter("title"));
		write.setPic((String)request.getParameter("pic"));
		write.setDate(date);
		write.setWriter((String)request.getParameter("writer"));
		write.setText((String)request.getParameter("text"));
		request.setAttribute("write",write);
		
		System.out.println(write.getTitle());
		/* response.sendRedirect("test.jsp"); */
		
		 RequestDispatcher dis = request.getRequestDispatcher("test.jsp");
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
