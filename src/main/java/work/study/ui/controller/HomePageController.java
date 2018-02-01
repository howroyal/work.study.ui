package work.study.ui.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import work.study.ui.bean.ArticleInfo;
import work.study.ui.service.ArticleInfoService;

@Controller
public class HomePageController {
	@Autowired
	private ArticleInfoService articleInfoService;
	
	@RequestMapping("/")
	public ModelAndView index(){
		ModelAndView view = new ModelAndView("index");
		view.addObject("pageIndex", "home");
		List<ArticleInfo> popurs = articleInfoService.getPopur();
		view.addObject("popurs", popurs);
		
		//取得banner列表
		List<ArticleInfo> banners = getBanner();
		view.addObject("banners", banners);
		//取得首页大图文章
		List<ArticleInfo> firstArticles = getHomeArticles(10);
		view.addObject("firstArticles", firstArticles);

		return view;
	}
	
	
	
	/** 取得首页文章
	 * @return
	 */
	private List<ArticleInfo> getHomeArticles(int size){
		ArticleInfo queryInfo = new ArticleInfo();
		queryInfo.setCategoryId(6L);
		Page<ArticleInfo> page = articleInfoService.getArticleInfos(queryInfo, 0, size);
		return page.getContent();
	}
	
	/** 取得首页文章
	 * @return
	 */
	private List<ArticleInfo> getBanner(){
		ArticleInfo queryInfo = new ArticleInfo();
		queryInfo.setCategoryId(7L);
		Page<ArticleInfo> page = articleInfoService.getArticleInfos(queryInfo, 0, 10);
		return page.getContent();
	} 
}
