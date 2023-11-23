package com.food.recipick.dao;

import java.util.List;

import com.food.recipick.dto.WriteDTO;

public interface WriteDAO {
	

	int insertReview(WriteDTO dto);
	List selectData_all(WriteDTO dto);
	List select_hash(WriteDTO dto);
	List selectData_review(WriteDTO dto);
	int update_review(WriteDTO dto);
	int delete_review(WriteDTO dto);
}
