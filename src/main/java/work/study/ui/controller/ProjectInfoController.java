package work.study.ui.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import work.study.ui.bean.ArticleInfo;
import work.study.ui.service.ArticleInfoService;

/**
 * 项目介绍
 * @author hao.wang
 *
 */
@Controller
public class ProjectInfoController {

	@Autowired
	private ArticleInfoService articleInfoService;

	@RequestMapping(value = "projects")
	public ModelAndView index(){
		ModelAndView view = new ModelAndView("projects");
		List<ArticleInfo> popurs = articleInfoService.getPopur();
		
		List<ArticleInfo> articles = getArticles(10);
		view.addObject("popurs", popurs);
		view.addObject("articles", articles);
		view.addObject("pageIndex", "projects");
		return view;
	}
	
	/** 取得首页文章
	 * @return
	 */
	private List<ArticleInfo> getArticles(int size){
		ArticleInfo queryInfo = new ArticleInfo();
		queryInfo.setCategoryId(2L);
		Page<ArticleInfo> page = articleInfoService.getArticleInfos(queryInfo, 0, size);
		return page.getContent();
	} 
}
