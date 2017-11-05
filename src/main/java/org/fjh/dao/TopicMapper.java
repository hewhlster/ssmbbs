package org.fjh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.fjh.entity.Topic;
import org.fjh.entity.TopicExample;

public interface TopicMapper {
	
	List<Topic> selectTopicListByBid(String bid);

	
    long countByExample(TopicExample example);

    int deleteByExample(TopicExample example);

    int deleteByPrimaryKey(String tid);

    int insert(Topic record);

    int insertSelective(Topic record);

    List<Topic> selectByExample(TopicExample example);

    Topic selectByPrimaryKey(String tid);

    int updateByExampleSelective(@Param("record") Topic record, @Param("example") TopicExample example);

    int updateByExample(@Param("record") Topic record, @Param("example") TopicExample example);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKey(Topic record);
    
    
    int updateReadedByPrimaryKey(String tid);
    
    List<Topic> pager(@Param("bid")String bid,@Param("beginIndex")Integer beginIndex,@Param("endIndex")Integer endIndex);
    
    int getRowCnt(String bid);
}