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
	public List selectReview(WriteDTO dto) {
		List review_bul_sel=rDAO.selectReview(dto);
		return review_bul_sel;
	}

	@Override
	public List selectData_review(WriteDTO dto) {
		System.out.println("dto_service:"+dto);
		List selectData_review=rDAO.selectData_review(dto);
		return selectData_review;
<<<<<<< HEAD
	}

	@Override
	public List selectdata_all(WriteDTO dto) {
		return rDAO.selectData_all(dto);
=======
>>>>>>> 67848654431e0ffffab14c66cbe1a879ec1f33ce
	}

	@Override
	public List selectdata_all(WriteDTO dto) {
		return rDAO.selectData_all(dto);
	}

}
