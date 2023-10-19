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
		System.out.println("레시피 제목 :" + recipick_title);
		
		String hashs[] = request.getParameterValues("hashs");
		for (String hashtag : hashs) {
		    System.out.println("해시태그 : " + hashtag);
		}
		
		String recipick_content01[] = request.getParameterValues("recipick_content01");
		for(String material_quantity : recipick_content01) {
			System.out.println("재료명수량 : " + material_quantity);			
		}
		
		String food_explanation = request.getParameter("food_explanation");
		System.out.println("음식간단설명 : " + food_explanation);
		
		String explanvation_context = request.getParameter("explanvation_context");
		System.out.println("만드는 방법 설명 : " + explanvation_context);
	}

}
