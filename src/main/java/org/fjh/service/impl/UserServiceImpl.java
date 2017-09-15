package org.fjh.service.impl;

import javax.annotation.Resource;

import org.fjh.dao.UserMapper;
import org.fjh.entity.User;
import org.fjh.service.IUserService;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements IUserService{
	@Resource
	private UserMapper userDao;
	
	
	public boolean checkUname(String uname) {
		User ret =userDao.getByUname(uname);
		return ret==null?false:true;
	}


	public User login(User user) {
		int ret= userDao.getByUnameAndUpass(user);
		if( ret >0 )
			return userDao.getByUname(user.getUname());
		else
			return null;
	}


	public int regist(User user) {
		//1根据用户名查询用户
		User retUser=userDao.getByUname(user.getUname());
		if( retUser!=null){
			return 2;
		} else {
			return userDao.insert(user);
		}
	}


	public int update(User user) {
		// TODO Auto-generated method stub
		return userDao.updateByPrimaryKey(user);
	}
}
