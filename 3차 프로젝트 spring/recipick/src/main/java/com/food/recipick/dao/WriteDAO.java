package com.food.recipick.dao;

import java.util.List;

import com.food.recipick.dto.WriteDTO;

public interface WriteDAO {

	
	List writepage(WriteDTO dto);

	int writerview(WriteDTO dto);

	List bulletin(WriteDTO dto);
}
