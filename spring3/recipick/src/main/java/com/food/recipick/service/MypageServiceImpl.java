package com.food.recipick.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.recipick.dao.MypageDAO;
import com.food.recipick.dto.RecipeDTO;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageDAO mypageDAO;
	
	@Override
	public List myrecipeselect(RecipeDTO dto) {
		List myrecipeselect = mypageDAO.myrecipeselect(dto);
		return myrecipeselect;
	}

	@Override
	public Map getMylistPage(int pageNum, int countPerPage) {
		
		int startNum = 0, endNum = 0;
		
		// 이전 페이지의 마지막 숫자 + 1
		startNum = ( (pageNum-1) * countPerPage) + 1;
		endNum = pageNum * countPerPage;
		
		RecipeDTO dto = new RecipeDTO();
		dto.setStartNum(startNum);
		dto.setEndNum(endNum);
		
		
		// 보여줄 리스트만 뽑음
		List list = mypageDAO.mylistpage(dto);
		
		// 전체 리스트를 뽑음
		int total = mypageDAO.mylistpagetotal();
		
		Map map = new HashMap();
		map.put("list", list);
		map.put("total", total);
		
		return map;
	}
	
}
