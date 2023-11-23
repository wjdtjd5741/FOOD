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
	public int insertReview(WriteDTO dto) {
		int insert_write=sqlSession.insert("id_recipick.insertWrite",dto);
		sqlSession.insert("id_recipick.insertHash",dto);
		//select 랑 insert따로 분리하기
		
		return insert_write;
	}

	@Override
	public List selectData_review(WriteDTO dto) {
		System.out.println("dto_DAO:"+dto);
		List selectData_review=sqlSession.selectList("id_recipick.selectData_review",dto);
		System.out.println("selectData_review:"+selectData_review.get(0));
		
		List review_bul_sel=sqlSession.selectList("id_recipick.selectReview",dto);
		return selectData_review;
	}

	@Override
	public List selectData_all(WriteDTO dto) {
		
		
		return sqlSession.selectList("id_recipick.selectAll",dto);
	}

	@Override
	public List select_hash(WriteDTO dto) {
	List select_hash=sqlSession.selectList("id_recipick.select_hash",dto);
		
		return select_hash;
	}

	@Override
	public int update_review(WriteDTO dto) {
		return sqlSession.update("id_recipick.update_review",dto);
	}

	@Override
	public int delete_review(WriteDTO dto) {
		
		int delete_review=sqlSession.delete("id_recipicl.delete_review",dto);
		
		return delete_review;
				
		
	}
	
	
	

}
