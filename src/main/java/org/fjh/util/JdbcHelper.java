package org.fjh.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcHelper {
	private static String url="jdbc:mysql://127.0.0.1:3306/bbs?useUnicode=true&characterEncoding=UTF8";
	private  static String driver="com.mysql.jdbc.Driver";
	private static  String username="root";
	private  static String password="123456";
	private static  Connection conn = null;
	
	public static Connection getConnection(){
		try {
			Class.forName(driver);
			if( conn==null || conn.isClosed()){
				conn=DriverManager.getConnection(url, username, password);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	
}
