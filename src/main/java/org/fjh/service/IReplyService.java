package org.fjh.service;

import java.util.List;

import org.fjh.entity.Reply;

public interface IReplyService {

	public abstract List<Reply> getReplyListByTopicid(String topicid);
	
	public Integer newReply(Reply reply);

}