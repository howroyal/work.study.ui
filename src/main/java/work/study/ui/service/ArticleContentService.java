package work.study.ui.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import work.study.ui.bean.ArticleContentInfo;
import work.study.ui.dao.ArticleContentDao;

@Service
public class ArticleContentService {

	@Autowired
	private ArticleContentDao articleContentDao;
	
	/**
	 * 根据内容插入，返回插入的id
	 * @param content
	 * @return
	 */
	public Long addByContent(String content){
		ArticleContentInfo entity = new ArticleContentInfo();
		entity.setContent(content);
		
		add(entity);
		
		return entity.getId();
	}
	
	
	public void add(ArticleContentInfo entity){
		articleContentDao.save(entity);
	}
	
	@Cacheable(key="#id", value="contentgetById")
	public ArticleContentInfo getById(Long id){
		return articleContentDao.findOne(id);
	}
	
	
	
}
