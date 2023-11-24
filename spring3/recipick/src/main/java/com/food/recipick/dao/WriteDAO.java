package com.food.recipick.dao;

import java.util.List;

import com.food.recipick.dto.WriteDTO;

public interface WriteDAO {
	
	void review_count(String review_id);
	int insertReview(WriteDTO dto);
	List selectData_all(WriteDTO dto);
	List select_hash(WriteDTO dto);
	List selectData_review(WriteDTO dto);
	int update_review(WriteDTO dto);
	void delete_review(WriteDTO dto);
}
