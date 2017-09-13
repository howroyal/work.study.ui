package work.study.ui.service;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import work.study.ui.bean.ArticleInfo;
import work.study.ui.dao.ArticleInfoDao;

@Service
public class ArticleInfoService {

	@Autowired
	private ArticleInfoDao articleInfoDao;
	
	public ArticleInfo getById(Long id){
		return articleInfoDao.findOne(id);
	}
	
	public void add(ArticleInfo info) {
		articleInfoDao.save(info);
	}
	
	@Cacheable(key="#categoryId", value="getPopur")
	public List<ArticleInfo> getPopur(Long categoryId){
		ArticleInfo queryInfo = new ArticleInfo();
		queryInfo.setCategoryId(categoryId);
		queryInfo.setTheTop(true);
		Page<ArticleInfo> page = this.getArticleInfos(queryInfo, 0, 10);
		
		return page.getContent();
	}
	
	public Page<ArticleInfo> getArticleInfos(final int categoryId,int pageNum,int pageSize){
		Sort sort = new Sort(Direction.DESC, "id");
		Pageable pageable = new PageRequest(pageNum, pageSize, sort);
		Specification<ArticleInfo> spec = new Specification<ArticleInfo>() {
			@Override
			public Predicate toPredicate(Root<ArticleInfo> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				Predicate p1 = cb.conjunction();
				if (categoryId != 0) {
					p1 = cb.equal(root.get("categoryId").as(Long.class), categoryId); 
				}
				Predicate p2 = cb.conjunction();
				query.where(cb.and(p1,p2));
				return query.getRestriction();
			}
		};
		return articleInfoDao.findAll(spec,pageable);
	}
	
	@Cacheable(key="#queryInfo.categoryId + '_' + #queryInfo.theTop + '_' +#pageNum +'_' + #pageSize",value="getArticleInfos")
	public Page<ArticleInfo> getArticleInfos(final ArticleInfo queryInfo,int pageNum,int pageSize){
		Sort sort = new Sort(Direction.DESC, "id");
		sort.and(new Sort(Direction.ASC, "theTop"));
		Pageable pageable = new PageRequest(pageNum, pageSize, sort);
		Specification<ArticleInfo> spec = new Specification<ArticleInfo>() {

			@Override
			public Predicate toPredicate(Root<ArticleInfo> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				Predicate p1 = cb.conjunction();
				if (queryInfo.getCategoryId() != null) {
					p1 = cb.equal(root.get("categoryId").as(Long.class), queryInfo.getCategoryId()); 
				}
				Predicate p2 = cb.conjunction();
				if (queryInfo.getTheTop() != null) {
					p2 = cb.equal(root.get("theTop").as(Boolean.class), queryInfo.getTheTop()); 
				}
				query.where(cb.and(p1,p2));
				return query.getRestriction();
			}
		};
		return articleInfoDao.findAll(spec,pageable);
	}

	public void update(ArticleInfo articleInfo) {
		articleInfoDao.save(articleInfo);
	}
	
}


