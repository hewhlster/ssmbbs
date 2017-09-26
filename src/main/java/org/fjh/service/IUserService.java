package org.fjh.service;

import org.fjh.entity.User;

public interface IUserService {
	/**
	 * true:找到此用户 false：没有此用户名
	 */
	public boolean checkUname(String uname);
	
	/**
	 * 0:注册失败 1:注册成功 2:注册失败(以有此用户名)
	 */
	public int regist(User user);
	/**
	 * false:登陆失败 true:登陆成功
	 */
	public User login(User user);
	
	//根据主键更新
	public int update(User user);
}
