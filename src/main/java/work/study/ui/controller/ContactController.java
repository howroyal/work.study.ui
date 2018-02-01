package work.study.ui.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import work.study.ui.bean.ArticleInfo;
import work.study.ui.service.ArticleInfoService;

@Controller
public class ContactController {
	@Autowired
	private ArticleInfoService articleInfoService;
	
	@RequestMapping(value="contact")
	public ModelAndView index(){
		ModelAndView view = new ModelAndView("contact");
		view.addObject("pageIndex", "contact");
		List<ArticleInfo> popurs = articleInfoService.getPopur();
		view.addObject("popurs", popurs);
		return view;
	}
	
	@RequestMapping(value="contact/baidumap")
	public ModelAndView baidumap(){
		ModelAndView view = new ModelAndView("baidumap");
		return view;
	}
}
