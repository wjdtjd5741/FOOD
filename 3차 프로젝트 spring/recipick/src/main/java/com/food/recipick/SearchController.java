package com.food.recipick;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.recipick.dto.MemberDTO;
import com.food.recipick.service.SearchService;

@Controller
public class SearchController {
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping("/searchHash")
	public String search(Model m , @RequestParam("data") String data,
			@RequestParam("order") String order) {
		Map map = new HashMap();
		map.put("recipe_title", data);
		map.put("order", order);
		List l = searchService.searchRecipe(map);
		System.out.println(l.get(0).toString());
		m.addAttribute("data", data);
		m.addAttribute("contents", l);
		return "search";
	}
	
	public Cookie makeCookie(int i, String data) {
		Cookie c = new Cookie("latest_contents"+i, data);
//		c.setMaxAge(365*60*60*24);
		System.out.println("c.getMaxAge() : "+ c.getMaxAge());
		return c;
	}
	
	@RequestMapping("/gorecipe")
	public String gorecipe(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("reciid") String data) {
		
		String value = "";
		Cookie[] cs = request.getCookies();
		
		for (Cookie c : cs) {
			if(c.getName().equals("latest_contents1")) 
				value = c.getValue();
		}
		
		if(!value.isEmpty() && !data.equals(value)) {
//			System.out.println("ffd");
			response.addCookie(makeCookie(2,value));
			response.addCookie(makeCookie(1,data));
		} else if(!data.equals(value)){
			response.addCookie(makeCookie(1,data));
		}
			
		// data(recipe_id)를 db로 보낸후 where recipe_id = #{_parameter}
		// 가져온것을 m에 담아서 jsp에서 처리
<<<<<<< HEAD
		
=======
<<<<<<< HEAD
		
=======

>>>>>>> 67848654431e0ffffab14c66cbe1a879ec1f33ce
>>>>>>> ca95fe4743dfb60860b3eb18c3af1a6f97d69cb4
		
		System.out.println("in0 : "+ data);
		
		List l = searchService.goRecipe(data);
		System.out.println(l);
		comment_load(data);
		return "recipe";
	}
	
	@RequestMapping("/comment_load")
	@ResponseBody
	public List comment_load(@RequestParam("reciid") String data) { //
//		String data = "10001";
		return searchService.comment_load(data);
	}
	
	@RequestMapping("/insert_comment")
	public String insert_comment(HttpServletRequest request,
			@RequestParam("reciid") String reciid,
			@RequestParam("ctext") String ctext
			) {
		HttpSession session = request.getSession();
		Map map = new HashMap();
//		int recipe_id = Integer.parseInt(reciid);
		map.put("recipe_id", reciid);
		map.put("comment_text", ctext);
		if(session.getAttribute("memberdto") != null) {
			map.put("uname", ((MemberDTO)session.getAttribute("memberdto")).getUname());
		} else
			map.put("uname", "admin");
		
		
		searchService.insert_comment(map);
		
		return "redirect:/gorecipe?reciid="+reciid;
	}
	
	@RequestMapping("/insert_reple_comment")
	public String insert_reple_comment(HttpServletRequest request,
			@RequestParam("reciid") String reciid,
			@RequestParam("ctext") String ctext,
			@RequestParam("pid") String pid
			) {
		HttpSession session = request.getSession();
		Map map = new HashMap();

		map.put("parentcomment_id", pid);
		map.put("recipe_id", reciid);
		map.put("comment_text", ctext);
		if(session.getAttribute("memberdto") != null) {
			map.put("uname", ((MemberDTO)session.getAttribute("memberdto")).getUname());
		} else
			map.put("uname", "admin");
		
		searchService.insert_reple_comment(map);
		
		System.err.println(map.get("uname"));
		return "redirect:/gorecipe?reciid="+reciid;
	}
	
	@RequestMapping("/del_comment")
	public String del_comment(@RequestParam("reciid") String reciid,
			@RequestParam("cid") String cid) {
		System.out.println("reciid: "+reciid);
		System.out.println("cid: "+cid);
		
		searchService.del_comment(cid);
		
		return "redirect:/gorecipe?reciid="+reciid;
	}
	
	@RequestMapping("/update_comment")
	public String update_comment(
			@RequestParam("reciid") String reciid,
			@RequestParam("cid") String cid, 
			@RequestParam("ctext") String ctext
		) {
		System.out.println("reciid: "+reciid);
		System.out.println("cid: "+cid);
		System.out.println("ctext: "+ctext);
		Map map = new HashMap();
		map.put("comment_id", cid);
		map.put("comment_text", ctext);
		searchService.update_comment(map);
		
		return "redirect:/gorecipe?reciid="+reciid;
	}
	
}
