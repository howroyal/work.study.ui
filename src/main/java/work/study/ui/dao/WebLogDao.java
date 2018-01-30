package work.study.ui.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import work.study.ui.bean.WebLog;

public interface WebLogDao extends JpaRepository<WebLog,Long>{
	
	@Query("select count(*) from WebLog")
	int totalCount();
}
