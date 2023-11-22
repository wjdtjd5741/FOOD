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
	public List selectReview(WriteDTO dto) {
		sqlSession.insert("id_recipick.insertWrite",dto);
		sqlSession.insert("id_recipick.insertHash",dto);
		List review_bul_sel=sqlSession.selectList("id_recipick.selectReview",dto);

		
		return review_bul_sel;
	}

	@Override
	public List selectData_review(WriteDTO dto) {
		System.out.println("dto_DAO:"+dto);
		List selectData_review=sqlSession.selectList("id_recipick.selectData_review",dto);
		System.out.println("selectData_review:"+selectData_review.get(0));
		return selectData_review;
<<<<<<< HEAD
	}

	@Override
	public List selectData_all(WriteDTO dto) {
		return sqlSession.selectList("id_recipick.selectAll",dto);
=======
>>>>>>> 67848654431e0ffffab14c66cbe1a879ec1f33ce
	}

	@Override
	public List selectData_all(WriteDTO dto) {
		return sqlSession.selectList("id_recipick.selectAll",dto);
	}
	
	
	

}
