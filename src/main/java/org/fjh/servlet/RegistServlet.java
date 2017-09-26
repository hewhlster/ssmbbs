package org.fjh.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.fjh.util.JdbcHelper;

public class RegistServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String checkcode = req.getParameter( "checkcode");

		//从session中取得以保存的验证码
		String rand = (String) req.getSession().getAttribute("rand");
		
		PrintWriter out = resp.getWriter();

		//判断验证码是否相同
		if( !checkcode.equals(rand)){
			out.write("<script type='text/javascript'>alert('验证码不对，请重试！');location.href='/bbs/regist.html';</script>");
			out.flush();
			out.close();
			return ;
		}
		
		
		//接收页面参数
		String uname=req.getParameter("username");
		String upass=req.getParameter("pass");
		int gender= Integer.parseInt(req.getParameter("gender"));
		String uemail=req.getParameter("email");
		String uqq=req.getParameter("qq");
		String umemo=req.getParameter("umemo");
		
		Date regtime = new Date();//注册日期
		Integer uuid = (int)(Math.random()*100000);//产生主键
		
		//将数据传给数据库
		Connection conn = null;
		PreparedStatement pst=null;
		String sql ="insert into tbl_user values(?,?,?,?,?,?,?,?,?)";
		
		try {
			conn = JdbcHelper.getConnection();
			pst = conn.prepareStatement(sql);
			//绑定参数
			pst.setInt(1,uuid );
			pst.setString(2,uname );
			pst.setString(3,upass );
			pst.setString(4,"???/header" );
			pst.setDate(5,new java.sql.Date(regtime.getTime()) );
			pst.setInt(6,gender );
			pst.setString(7,uemail );
			pst.setString(8,uqq );
			pst.setString(9,umemo );
			//发送sql
			int row=pst.executeUpdate();
			if( row >0){
				//数据插入成功，注册成功
				resp.sendRedirect("/bbs/login.html");
			} else {
				//失败
				out.write("<script type='text/javascript'>alert('删除失败!');location.href='http://127.0.0.1/bbs/regist.html'</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
