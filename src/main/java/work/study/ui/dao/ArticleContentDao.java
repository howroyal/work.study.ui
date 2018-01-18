package work.study.ui.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import work.study.ui.bean.ArticleContentInfo;

public interface ArticleContentDao extends PagingAndSortingRepository<ArticleContentInfo, Long>,JpaSpecificationExecutor<ArticleContentInfo>{
}
