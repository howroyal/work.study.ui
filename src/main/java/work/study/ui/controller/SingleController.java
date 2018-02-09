package work.study.ui.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import work.study.ui.bean.ArticleContentInfo;
import work.study.ui.bean.ArticleInfo;
import work.study.ui.service.ArticleContentService;
import work.study.ui.service.ArticleInfoService;

@Controller
@RequestMapping(value="article")
public class SingleController {
	@Autowired
	private ArticleInfoService articleInfoService;
	@Autowired
	private ArticleContentService articleContentService;
	
	@RequestMapping(value="{id}")
	public ModelAndView article(@PathVariable("id") long id){
		ModelAndView view = new ModelAndView("singlePage");
		ArticleInfo info = articleInfoService.getById(id);
		if (info != null) {
			ArticleContentInfo ac = articleContentService.getById(info.getContentId());
			if (ac != null) {
				info.setContent(ac.getContent());
			}
		}
		
		List<ArticleInfo> popurs = articleInfoService.getPopur();
		articleInfoService.increaseViewCount(id);
		
		
		view.addObject("pageIndex", getIndex(info));
		view.addObject("article", info);
		view.addObject("popurs", popurs);
		return view;
	}

	/**
	 * 取到页签
	 * @param info
	 * @return
	 */
	private String getIndex(ArticleInfo info) {
		String index = "home";
		if (index != null) {
			Long category = info.getCategoryId();
			if (category != null) {
				switch (category.intValue()) {
				case 1:
					index = "course";
					break;
				case 2:
					index = "projects";
					break;
				case 3:
					index = "answer";
					break;
				case 4:
					index = "technology";
					break;
				case 5:
					index = "book";
					break;
				default:
					break;
				}
			}
		}
		return index;
	}

}
