package org.fjh.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.fjh.service.IUserService;
import org.fjh.service.impl.UserServiceImpl;

public class CheckUnameServlet extends HttpServlet{
	private IUserService userService = new UserServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//接收用户传来的参数
		String uname = req.getParameter("username");
		//调用service
		boolean ret=userService.checkUname(uname);
		//向浏览器应答
		PrintWriter out = resp.getWriter();
		//对结果取反
		out.print(!ret);
		out.flush();
		out.close();
	}
}
