package com.food.recipick.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.food.recipick.dto.MemberDTO;

@Repository
public class NewsignDAOImpl implements NewsignDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public int newsigninsert(MemberDTO dto) {
		int result = sqlSession.insert("id_recipick.newsigninsert", dto);
		return result;
	}
	
	@Override
	public MemberDTO loginselect(MemberDTO dto) {
		MemberDTO loginselect = sqlSession.selectOne("id_recipick.loginselect", dto);
		return loginselect;
	}
	
	@Override
	public List isDuplicateUname(MemberDTO dto) {
		List isDuplicateUname = sqlSession.selectList("id_recipick.isDuplicateUname", dto);
		return isDuplicateUname;
	}

	@Override
	public int updateMypage(MemberDTO dto) {
		int updateMypage = sqlSession.update("id_recipick.updateMypage", dto);
		System.out.println("updateMypage : " + updateMypage);
		return updateMypage;
	}


}
