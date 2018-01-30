package work.study.ui.controller.backend;

import java.util.logging.Level;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import work.study.ui.bean.ArticleContentInfo;
import work.study.ui.bean.ArticleInfo;
import work.study.ui.bean.JsonVo;
import work.study.ui.service.ArticleContentService;
import work.study.ui.service.ArticleInfoService;

@Controller
@RequestMapping("backend/article")
public class ArticleManagerController {
	Logger logger = Logger.getLogger("ArticleManagerController");
	
	@Autowired
	private ArticleInfoService articleInfoService;
	
	@Autowired
	private ArticleContentService articleContentService;

	@RequestMapping("index")
	public String index(){
		return "backend/articles_manager";
	}
	
	@ResponseBody
	@RequestMapping(value="articles",method=RequestMethod.GET)
	public Page<ArticleInfo> getArticles(Long type,int pageNum, int pageSize){
		int typeInt = 0;
		if (type != null) {
			typeInt = type.intValue();
		}
		return articleInfoService.getArticleInfos(typeInt,pageNum, pageSize);
	}
	
	@ResponseBody
	@RequestMapping(value="add",method=RequestMethod.POST)
	public JsonVo<String> addArticle(ArticleInfo info){
		boolean success = false;
		String message = "";
		try {
			Long contentId = articleContentService.addByContent(info.getContent());
			info.setContentId(contentId);
			articleInfoService.add(info);
			success = true;
			message = "success";
		} catch (Exception e) {
			message = e.getMessage();
			logger.log(Level.WARNING, message);
		}
		return new JsonVo<String>(success,message);
	}
	
	@ResponseBody
	@RequestMapping(value="deleted",method=RequestMethod.POST)
	public JsonVo<String> deleted(long id, boolean deleted){
		boolean success = false;
		String message = "";
		try {
			ArticleInfo articleInfo = articleInfoService.getById(id);
			
			if (articleInfo == null) {
				return new JsonVo<String>(success,"数据不存在");
			}

			articleInfo.setDeleted(deleted);
			articleInfoService.update(articleInfo);
			success = true;
			message = "success";
		} catch (Exception e) {
			message = e.getMessage();
			logger.log(Level.WARNING, message);
		}
		return new JsonVo<String>(success,message);
	}
	
	@ResponseBody
	@RequestMapping(value="edit", method=RequestMethod.POST)
	public JsonVo<String> edit(ArticleInfo articleInfo){
		boolean success = false;
		String message = "";
		try {
			ArticleInfo db = articleInfoService.getById(articleInfo.getId());
			if (db == null) {
				message = "数据不存在";
			}else {
				//数据转换
				db.setCategoryId(articleInfo.getCategoryId());
				db.setTitle(articleInfo.getTitle());
				db.setImgUrl(articleInfo.getImgUrl());
				db.setTheTop(articleInfo.getTheTop());
				db.setCategoryName(articleInfo.getCategoryName());
				db.setDescr(articleInfo.getDescr());
				db.setContent(articleInfo.getContent());
				db.setDeleted(articleInfo.getDeleted());
				articleInfoService.update(db);
				success = true;
				message = "success";
			}
			
		} catch (Exception e) {
			message = e.getMessage();
			logger.log(Level.WARNING, message);
		}
		return new JsonVo<String>(success,message);
	}
	
	@ResponseBody
	@RequestMapping(value="getContent", method=RequestMethod.GET)
	public String getContent(Long contentId){
		String content = "";
		try {
			ArticleContentInfo info = articleContentService.getByIdForUpdate(contentId);
			if (info != null) {
				content = info.getContent();
			}
		} catch (Exception e) {
			logger.log(Level.WARNING, e.getMessage());
		}
		return content;
	}
}
