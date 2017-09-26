package org.fjh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.fjh.entity.Reply;
import org.fjh.entity.ReplyExample;

public interface ReplyMapper {
	
	List<Reply> getByTid(String tid);
	
	
    long countByExample(ReplyExample example);

    int deleteByExample(ReplyExample example);

    int deleteByPrimaryKey(String rid);

    int insert(Reply record);

    int insertSelective(Reply record);

    List<Reply> selectByExample(ReplyExample example);

    Reply selectByPrimaryKey(String rid);

    int updateByExampleSelective(@Param("record") Reply record, @Param("example") ReplyExample example);

    int updateByExample(@Param("record") Reply record, @Param("example") ReplyExample example);

    int updateByPrimaryKeySelective(Reply record);

    int updateByPrimaryKey(Reply record);
}