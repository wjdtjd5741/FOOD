package com.food.recipick.service;

import java.util.List;

import com.food.recipick.dto.WriteDTO;


public interface WriteService {

	
	List selectdata_all(WriteDTO dto);
	List selectReview(WriteDTO dto);
	List selectData_review(WriteDTO dto);
	
<<<<<<< HEAD
=======
	List selectReview(WriteDTO dto);
	List selectData_review(WriteDTO dto);
	
>>>>>>> 67848654431e0ffffab14c66cbe1a879ec1f33ce
}
