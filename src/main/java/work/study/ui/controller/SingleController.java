package work.study.ui.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import work.study.ui.bean.ArticleInfo;
import work.study.ui.service.ArticleInfoService;

@Controller
@RequestMapping(value="article")
public class SingleController {
	@Autowired
	private ArticleInfoService articleInfoService;
	
	@RequestMapping(value="{id}")
	public ModelAndView article(@PathVariable("id") long id){
		ModelAndView view = new ModelAndView("singlePage");
		ArticleInfo info = articleInfoService.getById(id);
		List<ArticleInfo> popurs = articleInfoService.getPopur(info.getCategoryId());
		articleInfoService.increaseViewCount(id);
		view.addObject("pageIndex", "home");
		view.addObject("article", info);
		view.addObject("popurs", popurs);
		return view;
	}

}
