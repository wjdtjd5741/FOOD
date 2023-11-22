package com.food.recipick.dao;

import java.util.List;

import com.food.recipick.dto.WriteDTO;

public interface WriteDAO {
	

	List selectReview(WriteDTO dto);

	List selectData_review(WriteDTO dto);

	
}
