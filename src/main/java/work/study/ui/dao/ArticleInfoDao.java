package work.study.ui.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import work.study.ui.bean.ArticleInfo;

public interface ArticleInfoDao extends PagingAndSortingRepository<ArticleInfo, Long>,JpaSpecificationExecutor<ArticleInfo>{
}
