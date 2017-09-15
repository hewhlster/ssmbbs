package org.fjh.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.fjh.dao.BoardMapper;
import org.fjh.entity.Board;
import org.fjh.service.IBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements IBoardService {
	@Autowired
	private BoardMapper boardDao;
	
	public Board get(String boardId) {
		// TODO Auto-generated method stub
		return boardDao.selectByPrimaryKey(boardId);
	}

	public Map<Board, List<Board>> getAll() {
		Map<Board, List<Board>> map = new HashMap<Board, List<Board>>();
		List<Board> mainList=boardDao.getMainBoard();
		for(Board temp:mainList){
			List<Board> subList=boardDao.getSubBoard(temp.getBid());
			map.put(temp, subList);
			
		}
		return map;
	}

	public Map<Board, List<Board>> getByBoardId(String boardId) {
		Map<Board, List<Board>> map = new HashMap<Board, List<Board>>();
		Board main=boardDao.selectByPrimaryKey(boardId);
		List<Board> subList=boardDao.getSubBoard(main.getBid());
		map.put(main, subList);
		return map;
	}
	
}
