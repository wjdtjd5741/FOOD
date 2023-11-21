package com.food.recipick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.recipick.dao.NewsignDAO;
import com.food.recipick.dto.MemberDTO;

@Service
public class NewsignServiceImpl implements NewsignService {
	
	@Autowired
	NewsignDAO newsignDAO;

	@Override
	public List newsignlist(MemberDTO dto) {
		List newsignlist = newsignDAO.newsign(dto);
		return newsignlist;
	}

	@Override
	public int newsigninsert(MemberDTO dto) {
		int result = newsignDAO.newsigninsert(dto);
		return result;
		
	}
	
	@Override
	public List loginselect(MemberDTO dto) {
		List loginlist = newsignDAO.loginselect(dto);
		return loginlist;
	}

	@Override
	public List isDuplicateUname(MemberDTO dto) {
		List isDuplicateUname = newsignDAO.loginselect(dto);
		return isDuplicateUname;
	}

	
	
}
