package org.fjh.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.fjh.entity.Topic;
import org.fjh.service.ITopicService;
import org.fjh.service.impl.TopicServiceImpl;

public class TopicListServlet extends HttpServlet {
	private ITopicService topicService = new TopicServiceImpl();
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	this.doPost(req, resp);
}

@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//1.接收页面参数boardid
		String boardid = req.getParameter("boardid");
		System.out.println("boardid="+boardid);
		//2.根据boardid到数据库中取得此版块的数据
		List<Topic> retList=topicService.getTopicListByBoardId(boardid);
		
		
		//3.将数据以合理的方式保存属性
		req.getSession().setAttribute("topiclist", retList);
		
		//4.跳转到topic-list.jsp
		req.getRequestDispatcher("topic-list.jsp").forward(req, resp);
		
	}
}
