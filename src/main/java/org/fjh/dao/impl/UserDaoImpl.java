package org.fjh.dao.impl;

import org.fjh.entity.User;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
//@Repository
public class UserDaoImpl  {
	@Autowired
	private SqlSessionTemplate session;
	
	public User getByName(String uname) {
		return session.selectOne("sByUname", uname);
	}
	
	public User getByUnameAndUpass(User user) {
		return session.selectOne("sByUnameAndUpass", user);
	}

	public int insert(User user) {
		return session.insert("iuser", user);
	}
	
 /*
	public boolean getByUnameAndUpass(User user) {
		boolean ret = false;
		try {
			sql = "select count(*) as cnt from tbl_user where uname=? and upass=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, user.getUname());
			pst.setString(2, user.getUpass());
			rs= pst.executeQuery();
			rs.next();
			
			int row = rs.getInt("cnt");
			if( row > 0){
				ret = true;
			} 
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("UserDaoImpl-->getByUnameAndUpass  error!!!");
		} finally{
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return ret;	}
	*/


}
