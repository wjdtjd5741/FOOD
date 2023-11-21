package com.food.recipick.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.recipick.dto.WriteDTO;


@Repository
public class WriteDAOImpl implements WriteDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List writepage(WriteDTO dto) {
		
		sqlSession.insert("id_recipick.insertWrite",dto);
//		System.out.println("writepage.size :"+writepage.size());
//		System.out.println("writepage.get(0) :"+writepage.get(0));
		return null;
	}

	@Override
	public int writerview(WriteDTO dto) {
		
		int result = sqlSession.insert("id_recipick.insertWrite",dto);
		
		
		return result;
	}

	@Override
	public List bulletin(WriteDTO dto) {
		List result2=sqlSession.selectList("id_recipick.selectWrite",dto);
		
		return result2;
	}
	
	

}
