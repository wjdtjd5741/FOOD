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
	public List newsign(MemberDTO dto) {
		List newsignList = sqlSession.selectList("id_recipick.selectMember", dto);
		return newsignList;
	}
	
	@Override
	public List loginselect(MemberDTO dto) {
		List loginList = sqlSession.selectList("id_recipick.loginselect", dto);
		return loginList;
	}
	
	@Override
	public List isDuplicateUname(MemberDTO dto) {
		List isDuplicateUname = sqlSession.selectList("id_recipick.isDuplicateUname", dto);
		return isDuplicateUname;
	}


}
