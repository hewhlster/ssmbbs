package org.fjh.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.fjh.dao.ReplyMapper;
import org.fjh.dao.TopicMapper;
import org.fjh.entity.Reply;
import org.fjh.entity.Topic;
import org.fjh.service.ITopicService;
import org.fjh.util.CommDefine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TopicServiceImpl implements ITopicService{
	@Resource
	private TopicMapper topicDao;
	@Autowired
	private ReplyMapper replyDao;
	
	public List<Topic> getTopicListByBoardId(String boardid) {
		return topicDao.selectTopicListByBid(boardid);
	}

	public int newTopic(Topic topic) {
		return topicDao.insert(topic);
	}

	public Topic getTopicById(String topicid) {
		return topicDao.selectByPrimaryKey(topicid);
	}

	public Map<Topic, List<Reply>> getTopicAndReplyById(String topicid) {
		Topic topic=topicDao.selectByPrimaryKey(topicid);
		List<Reply> list=replyDao.getByTid(topicid);
		HashMap<Topic, List<Reply>> ret = new HashMap<Topic, List<Reply>>();
		ret.put(topic, list);
		
		return ret;
	}

	public int updateReaded(String tid) {
		// TODO Auto-generated method stub
		return topicDao.updateReadedByPrimaryKey(tid);
	}

	public List<Topic> pager(String bid, Integer pageIndex) {
		int rows = topicDao.getRowCnt(bid);
		
		Integer beginIndex = (pageIndex-1)*CommDefine.PAGE_ROW;
		Integer endIndex = pageIndex*CommDefine.PAGE_ROW;
		
		return topicDao.pager(bid, beginIndex, endIndex);
	}

	public int getPages(String bid) {
		int pages = topicDao.getRowCnt(bid)%CommDefine.PAGE_ROW==0?topicDao.getRowCnt(bid)%CommDefine.PAGE_ROW:
					(topicDao.getRowCnt(bid)<CommDefine.PAGE_ROW?1:topicDao.getRowCnt(bid)%CommDefine.PAGE_ROW+1);
		return pages;
	}

}
