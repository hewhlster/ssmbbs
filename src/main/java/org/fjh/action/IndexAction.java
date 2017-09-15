package org.fjh.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexAction {

	@RequestMapping("/welcome")
	public String welcome(){
		return "forward:/WEB-INF/page/login.html";
	}
}
