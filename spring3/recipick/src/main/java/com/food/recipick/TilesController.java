package com.food.recipick;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.food.recipick.dto.RecipeDTO;
import com.food.recipick.dto.WriteDTO;
import com.food.recipick.service.RecipickService;
import com.food.recipick.service.SearchService;
import com.food.recipick.service.WriteService;


@Controller
public class TilesController {
	
	@Autowired
	RecipickService recipickservice;

	@Autowired
	WriteService writeService;
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping("/main")
	public String main(HttpServletRequest request, HttpServletResponse response
			) throws IOException {
		
		String str = request.getParameter("ck");
		
		// 팝업박스가 체크되면 쿠키popupBox에 off값 추가
		// Redirect 방식으로 다시 이 페이지를 불러옴
		if(str != null && str.equals("1")) {
			//System.out.println("dd");
			Cookie c = new Cookie("popupBox", "off");
			//cookie.setPath()
			c.setMaxAge(60*60*24);
			response.addCookie(c);
			response.sendRedirect("main");
		} else {
			// db에 order 순으로 가져옴
			List l = searchService.recom_main_img();
			for(int i = 0 ; i<l.size() ;i++)
				System.out.println(l.get(i));
		}
		return "main";
	}
	
	@RequestMapping("/search")
	public String search() {
		System.out.println("aa");
		return "search";
	}
	
	@RequestMapping("/bulletin")
	public String bulletin(@ModelAttribute RecipeDTO dto, Model m,
			@ModelAttribute WriteDTO wdto,
			HttpServletResponse response,
			HttpServletRequest request) {
		System.out.println("aa");
		System.out.println(dto);
		HttpSession s = request.getSession();
		
		List bul_rec = recipickservice.bulletin(dto);
		System.err.println("need: "+bul_rec);
		for(int i = 0 ;i<bul_rec.size() ; i++) {
			System.err.println("ff"+i+bul_rec.get(i));
		}
		System.out.println("hrn  "+((RecipeDTO)bul_rec.get(4)).getMainpic());
//		recipickservice.recipe_img_download(bul_rec, response);
		
		s.setAttribute("bul_rec", bul_rec);
		
		List write_all = writeService.selectdata_all(wdto);
		
		s.setAttribute("review_bul_sel",write_all);

		return "bulletin";
	}
	
	@RequestMapping("/img_download")
	public void img_download(@RequestParam("fileName") String fileName, 
			HttpServletRequest request, 
			HttpServletResponse response) {
			String downloadFolder = "C:\\Users\\User\\Documents\\FOOD\\imgs";
			String downloadFile = downloadFolder + System.getProperty("file.separator")+ fileName+".jpg";
			File file = new File(downloadFile);
			try {
				FileInputStream fis = new FileInputStream(file);
				response.setHeader("Cache-Control", "no-cache");
				response.addHeader("Content-disposition", "attachment; fileName="+fileName);
				OutputStream out = response.getOutputStream();
				byte[] buffer = new byte[1024 * 8]; // 8kb
				while(true) {
					int count = fis.read(buffer);
					System.out.println("count: " + count);
					
					if(count == -1)
						break;
					out.write(buffer, 0, count);
				}
				fis.close();
				out.close();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/newsign")
	public String newsign() {
		return "newsign";
	}
	
	@RequestMapping("/recipe")
	public String recipe() {
		return "recipe";
	}
	@RequestMapping("/writer")
	public String writer() {
		return "writer";
	}
	@RequestMapping("/newrecipe")
	public String newrecipe() {
		return "newrecipe";
	}
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
	@RequestMapping("/write")
	public String write() {
		return "write";
	}
	@RequestMapping("/bsadb")
	public String bsadb() {
		return "bsadb";
	}
}

