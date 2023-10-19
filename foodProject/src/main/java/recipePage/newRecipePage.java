package recipePage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/recipePage1")
public class newRecipePage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String recipick_title = request.getParameter("recipick_title");		
		System.out.println("������ ���� :" + recipick_title);
		
		String hashs[] = request.getParameterValues("hashs");
		for (String hashtag : hashs) {
		    System.out.println("�ؽ��±� : " + hashtag);
		}
		
		String recipick_content01[] = request.getParameterValues("recipick_content01");
		for(String material_quantity : recipick_content01) {
			System.out.println("������� : " + material_quantity);			
		}
		
		String food_explanation = request.getParameter("food_explanation");
		System.out.println("���İ��ܼ��� : " + food_explanation);
		
		String explanvation_context = request.getParameter("explanvation_context");
		System.out.println("����� ��� ���� : " + explanvation_context);
	}

}
