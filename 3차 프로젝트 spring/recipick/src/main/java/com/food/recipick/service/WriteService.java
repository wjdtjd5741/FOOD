package com.food.recipick.service;

import java.util.List;

import com.food.recipick.dto.WriteDTO;


public interface WriteService {

	
	
	List selectReview(WriteDTO dto);
	List selectData_review(WriteDTO dto);
	
}
