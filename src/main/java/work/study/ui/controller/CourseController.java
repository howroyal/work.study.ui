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
 * 
 * 课程介绍
 * @author hao.wang
 *
 */
@Controller
public class CourseController {

	@Autowired
	private ArticleInfoService articleInfoService;
	
	@RequestMapping(value="course")
	public ModelAndView index(){
		
		ModelAndView view = new ModelAndView("course");
		//课程介绍
		List<ArticleInfo> popurs = articleInfoService.getPopur(1L);
		view.addObject("popurs", popurs);
		view.addObject("pageIndex", "course");
		Page<ArticleInfo> page = getArticleInfos(10);
		view.addObject("articles", page.getContent());
		
		return view;
	}
	
	
	/**得到课程介绍
	 * @param pageSize
	 * @return
	 */
	private Page<ArticleInfo> getArticleInfos(int pageSize){
		ArticleInfo queryInfo = new ArticleInfo();
		queryInfo.setCategoryId(1L);
		return articleInfoService.getArticleInfos(queryInfo, 0, pageSize);
	}
}
