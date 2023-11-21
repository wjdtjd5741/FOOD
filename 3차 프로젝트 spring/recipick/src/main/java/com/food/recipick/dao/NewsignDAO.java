package com.food.recipick.dao;

import java.util.List;

import com.food.recipick.dto.MemberDTO;

public interface NewsignDAO {

	int newsigninsert(MemberDTO dto);
	MemberDTO loginselect(MemberDTO dto);
	List isDuplicateUname(MemberDTO dto);
	int updateMypage(MemberDTO dto);


	
}
