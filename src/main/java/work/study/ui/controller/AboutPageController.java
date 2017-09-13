package work.study.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutPageController {

	@RequestMapping("/about")
	public ModelAndView about(){
		ModelAndView view = new ModelAndView("about");
		view.addObject("pageIndex", "about");
		return view;
	}
}
