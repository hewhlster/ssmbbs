package org.fjh.service;

import java.util.List;
import java.util.Map;

import org.fjh.entity.Reply;
import org.fjh.entity.Topic;

public interface ITopicService {
	public List<Topic> getTopicListByBoardId(String boardid);
	public int newTopic(Topic topic);
	public Map<Topic,List<Reply>> getTopicAndReplyById(String topicid);
	public Topic getTopicById(String topicid);
	public int updateReaded(String tid);
	public List<Topic> pager(String bid,Integer index);
	
	public int getPages(String bid);
}
