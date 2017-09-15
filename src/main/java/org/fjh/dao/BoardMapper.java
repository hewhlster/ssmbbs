package org.fjh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.fjh.entity.Board;
import org.fjh.entity.BoardExample;

public interface BoardMapper {
	
	List<Board> getMainBoard();

    List<Board> getSubBoard(String bid);

    ////////////////////////////////////////////////
    //以下为自动生成
    long countByExample(BoardExample example);

    int deleteByExample(BoardExample example);

    int deleteByPrimaryKey(String bid);

    int insert(Board record);

    int insertSelective(Board record);

    List<Board> selectByExample(BoardExample example);

    Board selectByPrimaryKey(String bid);

    int updateByExampleSelective(@Param("record") Board record, @Param("example") BoardExample example);

    int updateByExample(@Param("record") Board record, @Param("example") BoardExample example);

    int updateByPrimaryKeySelective(Board record);

    int updateByPrimaryKey(Board record);
    
}