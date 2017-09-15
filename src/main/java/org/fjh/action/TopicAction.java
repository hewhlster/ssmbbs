package org.fjh.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.fjh.entity.Reply;
import org.fjh.entity.Topic;
import org.fjh.entity.User;
import org.fjh.service.ITopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TopicAction {
	@Autowired
	private ITopicService topicService;
	
	@RequestMapping("/topiclist")
	public ModelAndView showTopicListById(@RequestParam(value="boardid")String boardid,HttpSession session){
		ModelAndView mv = new ModelAndView();
		List<Topic> ret=topicService.getTopicListByBoardId(boardid);
		mv.setViewName("topiclist");
		mv.addObject("topiclist", ret);
		mv.addObject("bid", boardid);
		session.setAttribute("boardid", boardid);
		int pages = topicService.getPages(boardid);
		mv.addObject("pages",pages);
		
		return mv;
	}
	
	@RequestMapping("/newtopicmv")
	public ModelAndView topic(ModelAndView mv){
		mv.setViewName("newtopic");
		return mv;

	}
	
	@RequestMapping("/newtopic")
	public String newTopic(Topic topic,HttpSession session){
		topic.setTpublishdate(new Date());
		topic.setTmodfitydate(new Date());		
		topic.setBid((((String)session.getAttribute("boardid"))));
		topic.setUid( ((User)session.getAttribute("logineduser")).getUid());
		
		
		topicService.newTopic(topic);
		return "redirect:/topiclist.do?boardid="+topic.getBid();
	}
	
	@RequestMapping("/gettopic")
	public String getTopic(@RequestParam("topicid")String topicid,HttpServletRequest req,@RequestParam(defaultValue="1",required=false)Integer pageindex){
		HashMap<Topic, List<Reply>> ret =(HashMap<Topic, List<Reply>>) topicService.getTopicAndReplyById(topicid);
		req.getSession().setAttribute("topicmap", ret);
		
		//更新点击数
		topicService.updateReaded(topicid);
		return "forward:/WEB-INF/page/replylist.jsp";
	}
	
	@RequestMapping("/topicpage")
	public String topicPage(){
		return "forward:/WEB-INF/new-topic.jsp";
	}
	
	@RequestMapping("/pager")
	public ModelAndView pager(HttpSession session,String bid,@RequestParam(defaultValue="1",required=false)int pageindex){
		List<Topic> topiclist=topicService.pager(bid, pageindex);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("topiclist");
		mv.addObject("topiclist", topiclist);
		mv.addObject("bid", bid);
		mv.addObject("pageindex", pageindex);

		session.setAttribute("boardid", bid);
		int pages = topicService.getPages(bid);
		mv.addObject("pages",pages);
		return mv;
	}
}
