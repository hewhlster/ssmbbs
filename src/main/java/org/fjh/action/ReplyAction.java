package org.fjh.action;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.fjh.entity.Reply;
import org.fjh.entity.User;
import org.fjh.service.IReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyAction {
	
	@Autowired
	private IReplyService replyService;
	
	
	@RequestMapping("/newreply")
	public String newReply(Reply reply,HttpSession session){
		reply.setTpublishdate(new Date());
		reply.setTmodfitydate(new Date());
		reply.setUid(((User)session.getAttribute("logineduser")).getUid());
				
		Integer ret=replyService.newReply(reply);
		if( ret<0)
			session.setAttribute("msg", "回复帖子失败！");
			
		return "redirect:/gettopic.do?topicid="+reply.getTid();
	}
	
}
