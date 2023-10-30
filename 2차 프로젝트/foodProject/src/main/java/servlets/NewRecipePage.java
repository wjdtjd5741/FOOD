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
import javax.servlet.http.HttpSession;

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
		String subPic[] = {
				"https://cdn.discordapp.com/attachments/1148541415828246548/1150968861777199154/recipe1.png",
				"https://cdn.discordapp.com/attachments/1148541415828246548/1150969287637471302/recipe2.png",
							};
		String cookiename = "";
		
		RecipesDTO rDTO = new RecipesDTO();
		rDTO.setRecomCount(0);
		List<String> box_num = new ArrayList<>();
		List<String> hash_str = new ArrayList<>();
		List<List<String>> ex_subP = new ArrayList<>();
		List<String> mini_exsub = new ArrayList<>();
//		HttpSession session = request.getSession();
		
		for(int i = 0; i<explanation_context.length; i++) {
			mini_exsub = new ArrayList<>();
			mini_exsub.add(explanation_context[i]);
			mini_exsub.add(subPic[i]);
			ex_subP.add(mini_exsub);
			}
		
		Cookie[] cid = request.getCookies();
		if(cid != null) {
			for(int i =0; i<cid.length; i++) {
				if(cid[i].getName().equals("id")) {
					cookiename = cid[i].getValue();
//					session.setAttribute("cookiename", cookiename);
				}
			}
		}
		
		for(int i = 0; i<bigbox_num.length; i++) {
			String bigbox_num2 = bigbox_num[i];
			box_num.add(bigbox_num2);
		}
		
		for(int i = 0; i<subPic.length; i++) {
			String subpic = subPic[i];
			box_num.add(subpic);
		}
		
		for(int i = 0; i<hashs.length; i++) {
			String hash = hashs[i];
			hash_str.add(hash);
		}
		
		;
		Map<String, String> foodsMap = new HashMap<>();
		System.out.println();
		for(int i = 0 ;i<recipick_content01.length ;i++) {
			String[] strArr = recipick_content01[i].split(":");
			foodsMap.put(strArr[0], strArr[1]);
		}
		
		
		Date dd = new Date();
		
		rDTO.setWriter(cookiename);
		rDTO.setDate(dd.getTime());
		rDTO.setTitle(recipick_title);
		rDTO.setMainPic(mainPic);
		rDTO.setHashtags(hash_str);
		rDTO.setFoods(foodsMap);
		rDTO.setMainText(food_explanation);
		rDTO.setKnowHow(ex_subP);
		rDTO.setRecomCount(0);
		rDTO.setGgimCount(0);

		request.setAttribute("nrp", rDTO);
		
		RequestDispatcher a = request.getRequestDispatcher("recipepage.jsp");
		a.forward(request, response);
		
	}

}
