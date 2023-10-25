package servlets;

import java.io.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.RecipesDTO;

@WebServlet("/recipePage1")
public class NewRecipePage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String recipick_title = request.getParameter("recipick_title");		
		String hashs[] = request.getParameterValues("hashs");
		String recipick_content01[] = request.getParameterValues("recipick_content01");
		String food_explanation = request.getParameter("food_explanation");
		String explanation_context[] = request.getParameterValues("explanation_context");
		String bigbox_num[] = request.getParameterValues("bigbox_num");
		String mainPic = "https://cdn.discordapp.com/attachments/1148541415828246548/1149239367269875772/pancakes-2291908_1280.jpg";
		RecipesDTO rDTO = new RecipesDTO();
		rDTO.setRecomCount(0);
		List<String> box_num = new ArrayList<>();
		List<String> hash_str = new ArrayList<>();
//		List<String> recipick_content01_str = new ArrayList<>();
//		List<String> explanation_context_str = new ArrayList<>();
		
		for(int i = 0; i<bigbox_num.length; i++) {
			String bigbox_num2 = bigbox_num[i];
			box_num.add(bigbox_num2);
		}
//		System.out.println("만드는방법 숫자 : " + bigbox_num);
		
		for(int i = 0; i<hashs.length; i++) {
			String hash = hashs[i];
			hash_str.add(hash);
		}
		
//		for(int i = 0; i<recipick_content01.length; i++) {
//			String rc_str = recipick_content01[i];
//			recipick_content01_str.add(rc_str);
//		}
		
//		for(int i = 0; i<explanation_context.length; i++) {
//			String ec_str = explanation_context[i];
//			explanation_context_str.add(ec_str);
//		}
		
		rDTO.setMainPic(mainPic);
		rDTO.setTitle(recipick_title);
		rDTO.setHashtags(hash_str);
//		rDTO.setKnowHow(recipick_content01_str);
		rDTO.setMainText(food_explanation);
//		rDTO.setFoods(explanation_context_str);
		
		request.setAttribute("nrp", rDTO);
		
		RequestDispatcher a = request.getRequestDispatcher("recipepage.jsp");
		a.forward(request, response);
		
	}

}
