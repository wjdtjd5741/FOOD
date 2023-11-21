package com.food.recipick.service;

import java.util.List;

import com.food.recipick.dto.WriteDTO;


public interface WriteService {

	
	
	
	int writerview(WriteDTO dto);

	List writepage(WriteDTO dto);
	List bulletin(WriteDTO dto);
}
