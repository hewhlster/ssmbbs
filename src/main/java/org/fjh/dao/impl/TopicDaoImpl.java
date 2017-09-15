package org.fjh.dao.impl;

import java.util.List;

import org.fjh.entity.Topic;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

//@Repository
public class TopicDaoImpl {
	@Autowired
	private SqlSessionTemplate session;

	public List<Topic> selectTopicList(String boardid) {
		return session.selectList("sByBoardIdList", boardid);
	}

	public int insert(Topic topic) {
		return session.insert("insert", topic);
	}

	public Topic get(Integer topicid) {
		return session.selectOne("sById", topicid);
	}

}
