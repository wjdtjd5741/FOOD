package com.food.recipick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.food.recipick.dto.MemberDTO;

public interface NewsignService {
	
	int newsigninsert(MemberDTO dto);

	MemberDTO loginselect(MemberDTO dto);

	List isDuplicateUname(MemberDTO dto);
	
	int updateMypage(MemberDTO dto);
	
	int memberout(MemberDTO dto);


	
}



