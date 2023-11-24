package com.food.recipick.service;

import java.util.List;

import com.food.recipick.dto.WriteDTO;


public interface WriteService {

	int insertReview(WriteDTO dto);
	List select_hash(WriteDTO dto);
	List selectdata_all(WriteDTO dto);
	List selectData_review(WriteDTO dto);
	int update_review(WriteDTO dto);
	void delete_review(WriteDTO dto);
}
