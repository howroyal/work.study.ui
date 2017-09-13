package work.study.ui.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

import work.study.ui.bean.ArticleInfo;
import work.study.ui.service.ArticleInfoService;

@Controller
public class HomePageController {
	@Autowired
	private ArticleInfoService articleInfoService;
	
	@RequestMapping("/index")
	public ModelAndView index(){
		ModelAndView view = new ModelAndView("index");
		view.addObject("pageIndex", "home");
		List<ArticleInfo> popurs = articleInfoService.getPopur(1L);
		view.addObject("popurs", popurs);
		
		//取得首页大图文章
		List<ArticleInfo> firstArticles = getHomeArticles(true,1);
		view.addObject("firstArticles", firstArticles);
		//取得首页其他文章
		List<ArticleInfo> noTopArticles = getHomeArticles(false,10);
		view.addObject("firstArticles", firstArticles);
		if (!CollectionUtils.isEmpty(noTopArticles)) {
			//取得首页并排文章
			int size = noTopArticles.size();
			List<ArticleInfo> secondArticles = Lists.newArrayList();
			List<ArticleInfo> thridArticles = Lists.newArrayList();
			if (size <= 2) {
				secondArticles = noTopArticles;
			}else {
				secondArticles = noTopArticles.subList(0, 2);
				thridArticles = noTopArticles.subList(2, size);
			}
			
			view.addObject("secondArticles", secondArticles);
			view.addObject("thridArticles", thridArticles);
		}
		//取得首页小图文章
		return view;
	}
	
	
	
	/** 取得首页文章
	 * @return
	 */
	private List<ArticleInfo> getHomeArticles(boolean top, int size){
		ArticleInfo queryInfo = new ArticleInfo();
		queryInfo.setCategoryId(6L);
		queryInfo.setTheTop(top);
		Page<ArticleInfo> page = articleInfoService.getArticleInfos(queryInfo, 0, size);
		return page.getContent();
	} 
}
