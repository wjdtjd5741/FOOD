package com.food.recipick;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping("/gorecipe")
	public String gorecipe(@RequestParam("reciid") String data) {
		
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
			MemberDTO memberdto = (MemberDTO)session.getAttribute("memberdto");
			map.put("uname", memberdto.getUname());
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
			MemberDTO memberdto = (MemberDTO)session.getAttribute("memberdto");
			map.put("uname", memberdto.getUname());
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
}
