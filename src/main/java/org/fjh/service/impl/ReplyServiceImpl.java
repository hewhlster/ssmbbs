package org.fjh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.fjh.dao.ReplyMapper;
import org.fjh.entity.Reply;
import org.fjh.service.IReplyService;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements IReplyService{
	@Resource
	private ReplyMapper replyDao;
	
	public List<Reply> getReplyListByTopicid(String topicid) {
		return replyDao.getByTid(topicid);
	}

	public Integer newReply(Reply reply) {
		// TODO Auto-generated method stub
		return  replyDao.insert(reply);
	}

}
