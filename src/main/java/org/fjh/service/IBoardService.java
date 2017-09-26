package org.fjh.service;

import java.util.List;
import java.util.Map;

import org.fjh.entity.Board;

public interface IBoardService {
	public Map<Board,List<Board>> getAll();
	public Map<Board,List<Board>> getByBoardId(String boardId);
	//public Page page(Page page);
	public Board get(String boardId);
}
