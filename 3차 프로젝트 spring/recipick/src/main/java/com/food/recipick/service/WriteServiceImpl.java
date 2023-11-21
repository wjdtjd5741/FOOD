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
	public List writepage(WriteDTO dto) {
		rDAO.writepage(dto);

		return null;
	}

	@Override
	public int writerview(WriteDTO dto) {
		int result=rDAO.writerview(dto);
		
		return 0;
	}

	@Override
	public List bulletin(WriteDTO dto) {
		List result2=rDAO.bulletin(dto);
		return result2;
	}

}
