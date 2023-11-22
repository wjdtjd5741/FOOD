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
	public MemberDTO loginselect(MemberDTO dto) {
		MemberDTO loginselect = newsignDAO.loginselect(dto);
		return loginselect;
	}

	@Override
	public int newsigninsert(MemberDTO dto) {
		int result = newsignDAO.newsigninsert(dto);
		return result;
		
	}
	
	@Override
	public List isDuplicateUname(MemberDTO dto) {
		List isDuplicateUname = newsignDAO.isDuplicateUname(dto);
		return isDuplicateUname;
	}
	
	@Override
	public int updateMypage(MemberDTO dto) {
		int updateMypage = newsignDAO.updateMypage(dto);
		return updateMypage;
	}

	@Override
	public int memberout(MemberDTO dto) {
		int memberout = newsignDAO.memberout(dto);
		return memberout;
	}
	




	
	
}
