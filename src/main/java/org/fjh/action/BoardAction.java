package org.fjh.action;

import java.util.Map;

import org.fjh.service.IBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardAction {
	@Autowired
	private IBoardService boardService;

	@RequestMapping("/boardlist")
	public ModelAndView showAllBoard() {
		ModelAndView mv = new ModelAndView("boardlist");
		Map map = boardService.getAll();
		mv.addObject("boardmap", map);
		return mv;
	}

}
