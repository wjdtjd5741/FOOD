package com.food.recipick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.recipick.dao.WriteDAO;
import com.food.recipick.dto.WriteDTO;

@Service
public class WriteServiceImpl implements WriteService {
	@Autowired
	WriteDAO rDAO;


	@Override
	public int insertReview(WriteDTO dto) {
		int insert_write=rDAO.insertReview(dto);
		return insert_write;
	}

	@Override
	public List selectData_review(WriteDTO dto) {
		System.out.println("dto_service:"+dto);
		List selectData_review=rDAO.selectData_review(dto);
		return selectData_review;

	}

	@Override
	public List selectdata_all(WriteDTO dto) {
		return rDAO.selectData_all(dto);
	}

	@Override
	public List select_hash(WriteDTO dto) {
		
		List select_hash=rDAO.select_hash(dto);
		return select_hash;
	}

	@Override
	public int update_review(WriteDTO dto) {
		
		return rDAO.update_review(dto);
		
	}

	@Override
	public void delete_review(WriteDTO dto) {		
		 rDAO.delete_review(dto);
	}

	@Override
	public void review_count(String review_id) {
		rDAO.review_count(review_id);
		
	}



}
