package org.fjh.action;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.fjh.entity.User;
import org.fjh.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class UserAction {
	@Resource
	private IUserService userService;
	
	
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	public String regist(User user,
						HttpServletRequest req,
						@RequestParam(value="smallhead",required =false)MultipartFile file) throws IllegalStateException, IOException{		
		//操作用户头像文件信息
		//String headfileurl= req.get;
		//String headfilename = file.getName();
		
		//user.setUhead(user.getUid()+ fileName.substring(fileName.lastIndexOf(".")  ));//注入头像文件路径
		user.setUregtime(new java.util.Date());
		int ret=userService.regist(user);
		switch (ret) {
		case 1:
		//给定路径，取得其在容器下的全路径
        String path = req.getSession().getServletContext().getRealPath("img/head");  
        //拼接出保存文件的全路径
        String fileName = file.getOriginalFilename();  

        path = path+File.separator+user.getUid()+ fileName.substring(fileName.lastIndexOf(".")  );
        File targetFile = new File(path); 
        file.transferTo(targetFile);//将文件传到指定目录
        
        user.setUhead(user.getUid()+fileName.substring(fileName.lastIndexOf(".")));
        //更新头像文件名称 
		userService.update(user);
		return "redirect:login.jsp";

		case 0:
			req.getSession().setAttribute("msg", "注册失败，请重试");
			return "redirect:regist.jsp";
		case 2:
			req.getSession().setAttribute("msg", "请换个用户名试试");
			return "redirect:regist.jsp";
		default:
				return null;	
		}
	}
	
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="uname")String uname,
						@RequestParam(value="upass")String upass,
						HttpServletRequest req){
		
		User user = new User();
		user.setUname(uname);
		user.setUpass(upass);
		
		User loginedUser=userService.login(user);
		if( loginedUser!=null){
			req.getSession().setAttribute("logineduser", loginedUser);
			return "redirect:/boardlist.do";
		} else {
			req.getSession().setAttribute("errormsg", "用户名或密码不对！！");
			return "redirect:/login.jsp";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		//使session失效
		session.invalidate();
		
		return "redirect:login.jsp";
	}
}
