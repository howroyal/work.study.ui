package work.study.ui.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import work.study.ui.bean.WebLog;
import work.study.ui.dao.WebLogDao;

@Service
public class WebLogService {

	@Autowired
	private WebLogDao webLogDao;
	
	public void add(WebLog wLog){
		webLogDao.save(wLog);
	}
	
	public int totalCount(){
		return webLogDao.totalCount();
	}
}
