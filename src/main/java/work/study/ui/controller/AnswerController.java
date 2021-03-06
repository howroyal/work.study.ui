package work.study.ui.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import work.study.ui.bean.ArticleInfo;
import work.study.ui.service.ArticleInfoService;
import work.study.ui.util.PageCode;

/**
 * 问答板块
 * @author hao.wang
 *
 */
@Controller
public class AnswerController {
	private static long categoryId = 3L;
	private static int pageSize = 10;
	
	@Autowired
	private ArticleInfoService articleInfoService;
	
	@RequestMapping(value = "answer/{pageNum}")
	public ModelAndView index(@PathVariable(name="pageNum") int pageNum){
		ModelAndView view = new ModelAndView("answer");
		
		List<ArticleInfo> popurs = articleInfoService.getPopur();
		view.addObject("popurs", popurs);
		view.addObject("pageIndex", "answer");
		Page<ArticleInfo> page = getArticleInfos(pageNum-1);
		view.addObject("articles", page.getContent());
		view.addObject("page", new PageCode(page.getTotalPages(),pageSize,pageNum));
		
		return view;
	}
	
	private Page<ArticleInfo> getArticleInfos(int pageNum){
		ArticleInfo queryInfo = new ArticleInfo();
		queryInfo.setCategoryId(categoryId);
		return articleInfoService.getArticleInfos(queryInfo, pageNum, pageSize);
	}
}
