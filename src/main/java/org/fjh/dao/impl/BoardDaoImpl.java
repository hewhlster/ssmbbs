package org.fjh.dao.impl;

import java.util.List;

import org.fjh.entity.Board;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;


//@Repository
public class BoardDaoImpl {	
	@Autowired
	private SqlSessionTemplate session;
	
	public Board getBoard(Integer boardId) {
		return session.selectOne("sBoard", boardId);
	}

	public List<Board> getMainBoard(Integer parentId) {
		return session.selectList("sMainBoard", parentId);
	}

	public List<Board> getSubBoard(Integer boardid) {
		return session.selectList("sSubBoard", boardid);
	}

	
}
