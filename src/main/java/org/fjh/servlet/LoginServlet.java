package org.fjh.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.fjh.entity.User;
import org.fjh.util.JdbcHelper;


/**
 * 
 * 登陆流程
 * 1.接收页面参数
 * 2.判断验证码
 * 3.判断用户名与密码(与数据库存中的数据进行比较)
 * 4.如果合法就跳到指定页，如果页面上传来的二周自动登录值为真，那么我们要指示浏览器保存cookie
 * 5.如果登陆失败，就回到登陆页
 *
 */
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = req.getContextPath();
		String basePath = req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+path+"/";
		
		
		//解决POST提交时的中文乱码问题
		req.setCharacterEncoding("utf-8");
		//解决应答时的中文乱码问题
		resp.setContentType("text/html;charset=utf-8");
		
		//取得提交的信息
		String username=req.getParameter("username");
		String pass=req.getParameter("pass");
		String checkcode = req.getParameter( "checkcode");

		//从session中取得以保存的验证码
		String rand = (String) req.getSession().getAttribute("rand");
		
		PrintWriter out = resp.getWriter();

		//判断验证码是否相同
		if( !checkcode.equals(rand)){
			req.getSession().setAttribute("errormsg", "验证码不对，请重试！");
			resp.sendRedirect(basePath+"login.jsp");
			return ;
		}
	
		
		Connection conn = null;
		PreparedStatement pst =null;
		ResultSet rs = null;
		
		try {
			conn = JdbcHelper.getConnection();
			String sql= "select count(*) from tbl_user where uname=? and upass=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1,username );
			pst.setString(2, pass);
			rs=pst.executeQuery();
			
			rs.next();//让光标移支首行
			int ret_row = rs.getInt(1);
			if( ret_row >0 ){
				//有匹配到的记录，登陆成功
				String isautologin= req.getParameter("isautologin");
				System.out.println("isautologin="+isautologin);
				if( isautologin!=null && isautologin.equals("on")){
					//指示浏览器保存用户名与密码到cookie
					Cookie cuname = new Cookie("username", username);
					Cookie cupass = new Cookie("pass",pass);
					cuname.setMaxAge(3600*24*14);
					cupass.setMaxAge(3600*24*14);
					resp.addCookie(cuname);
					resp.addCookie(cupass);
				}
				User loginuser = new User();
				loginuser.setUname(username);
				//保存用户的信息到session级属性
				req.getSession().setAttribute("logineduser", loginuser);
				//成功
				//out.write("<script type='text/javascript'>location.href='/bbs/board-list.html';</script>");
				req.getRequestDispatcher("boardlist.do").forward(req, resp);
			} else {
				//删除用户名与密码的cookie
				Cookie cuname = new Cookie("username",null );
				Cookie cupass = new Cookie("pass",null);
				cuname.setMaxAge(-1);
				cupass.setMaxAge(-1);
				resp.addCookie(cuname);
				resp.addCookie(cupass);
				//失败
				//out.write("<script type='text/javascript'>alert('用户名或密码不对');location.href='/bbs/login.html';</script>");
				//向login.jsp传递信息
				req.getSession().setAttribute("errormsg", "用户名或密码不对，请重试！");
				resp.sendRedirect(basePath+"login.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally{
			try {
				rs.close();
				pst.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		out.flush();
		out.close();
		
		
		
		/*
		//原始代码
		//进行数据比较
		
		ServletConfig sc = this.getServletConfig();
		String init_username = sc.getInitParameter("username");
		String init_password = sc.getInitParameter("password");
		
		if( username.equals(init_username) && pass.equals(init_password)){
			String isautologin= req.getParameter("isautologin");
			System.out.println("isautologin="+isautologin);
			if( isautologin!=null && isautologin.equals("on")){
				//指示浏览器保存用户名与密码到cookie
				Cookie cuname = new Cookie("username", username);
				Cookie cupass = new Cookie("pass",pass);
				cuname.setMaxAge(3600*24*14);
				cupass.setMaxAge(3600*24*14);
				resp.addCookie(cuname);
				resp.addCookie(cupass);
			}
			//成功
			out.write("<script type='text/javascript'>location.href='/bbs/board-list.html';</script>");
			
		} else {
			//删除用户名与密码的cookie
			Cookie cuname = new Cookie("username",null );
			Cookie cupass = new Cookie("pass",null);
			cuname.setMaxAge(-1);
			cupass.setMaxAge(-1);
			resp.addCookie(cuname);
			resp.addCookie(cupass);
			//失败
			out.write("<script type='text/javascript'>alert('用户名或密码不对');location.href='/bbs/login.html';</script>");
		}
		*/

	}
	
}
