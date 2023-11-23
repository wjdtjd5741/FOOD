package com.food.recipick;

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
import com.food.recipick.dto.RecipeDTO;
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
		if(l != null && l.size() != 0) {
		System.out.println("gdg");
		System.out.println(l.get(0).toString());
		m.addAttribute("data", data);
		m.addAttribute("contents", l);
		}
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
			@RequestParam("reciid") String data, Model m) {
		
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

		
		RecipeDTO dto = new RecipeDTO();
		
		System.out.println("in0 : "+ data);
		
		List l = searchService.goRecipe(data);
		System.out.println(l);
		RecipeDTO goRecipe_value = searchService.goRecipe_value(data, dto);
		System.out.println("asdf : " + goRecipe_value);
		m.addAttribute("goRecipe_value", goRecipe_value);
		System.out.println("gorecipe  : " + goRecipe_value);
		comment_load(data);
		return "recipe";
	}
	
	@RequestMapping("/goreview")
	public String goreview() {
		return "writer";
	}
	
	@RequestMapping("/comment_load")
	@ResponseBody
	public List comment_load(@RequestParam("reciid") String data) { //
//		String data = "10001";
		return searchService.comment_load(data);
	}
	
	@RequestMapping("/comment_load_review")
	@ResponseBody
	public List comment_load_review(@RequestParam("review_id") String data) { //
//		String data = "10001";
		return searchService.comment_load_review(data);
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
	
	@RequestMapping("/insert_comment_review")
	public String insert_comment_review(HttpServletRequest request,
			@RequestParam("review_id") String review_id,
			@RequestParam("ctext") String ctext
			) {
		HttpSession session = request.getSession();
		Map map = new HashMap();
//		int recipe_id = Integer.parseInt(reciid);
		map.put("review_id", review_id);
		map.put("comment_text", ctext);
		if(session.getAttribute("memberdto") != null) {
			map.put("uname", ((MemberDTO)session.getAttribute("memberdto")).getUname());
		} else
			map.put("uname", "admin");
		
		
		searchService.insert_comment_review(map);
		
		return "redirect:/goreview?review_id="+review_id;
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
	
	@RequestMapping("/insert_reple_comment_review")
	public String insert_reple_comment_review(HttpServletRequest request,
			@RequestParam("review_id") String review_id,
			@RequestParam("ctext") String ctext,
			@RequestParam("pid") String pid
			) {
		HttpSession session = request.getSession();
		Map map = new HashMap();
		
		map.put("parentcomment_id", pid);
		map.put("review_id", review_id);
		map.put("comment_text", ctext);
		if(session.getAttribute("memberdto") != null) {
			map.put("uname", ((MemberDTO)session.getAttribute("memberdto")).getUname());
		} else
			map.put("uname", "admin");
		searchService.insert_reple_comment_review(map);

		return "redirect:/goreview?review_id="+review_id;
	}
	
	@RequestMapping("/del_comment")
	public String del_comment(@RequestParam("reciid") String reciid,
			@RequestParam("cid") String cid) {
		System.out.println("reciid: "+reciid);
		System.out.println("cid: "+cid);
		
		searchService.del_comment(cid);
		
		return "redirect:/gorecipe?reciid="+reciid;
	}
	
	@RequestMapping("/del_comment_review")
	public String del_comment_review(@RequestParam("review_id") String review_id,
			@RequestParam("cid") String cid) {
		System.out.println("reciid: "+review_id);
		System.out.println("cid: "+cid);
		
		searchService.del_comment(cid);
		
		return "redirect:/goreview?review_id="+review_id;
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
	
	@RequestMapping("/update_comment_review")
	public String update_comment_review(
			@RequestParam("review_id") String review_id,
			@RequestParam("cid") String cid, 
			@RequestParam("ctext") String ctext
			) {
		System.out.println("reciid: "+review_id);
		System.out.println("cid: "+cid);
		System.out.println("ctext: "+ctext);
		Map map = new HashMap();
		map.put("comment_id", cid);
		map.put("comment_text", ctext);
		
		searchService.update_comment(map);
		
		return "redirect:/goreview?review_id="+review_id;
	}
	
}
