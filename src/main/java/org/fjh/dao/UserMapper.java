package org.fjh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.fjh.entity.User;
import org.fjh.entity.UserExample;

public interface UserMapper {
	long countByExample(UserExample example);

	int deleteByExample(UserExample example);

	int deleteByPrimaryKey(String uid);

	int insert(User record);

	int insertSelective(User record);

	List<User> selectByExample(UserExample example);

	User selectByPrimaryKey(String uid);

	int updateByExampleSelective(@Param("record") User record,
			@Param("example") UserExample example);

	int updateByExample(@Param("record") User record,
			@Param("example") UserExample example);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	int getUserByUnameAndUpass(User user);
	
	User getByUname(String uname);
}