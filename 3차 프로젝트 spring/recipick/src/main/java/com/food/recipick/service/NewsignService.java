package com.food.recipick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.food.recipick.dto.MemberDTO;

public interface NewsignService {
	
	List newsignlist(MemberDTO dto);

	int newsigninsert(MemberDTO dto);

	List loginselect(MemberDTO dto);

	List isDuplicateUname(MemberDTO dto);


	
}



