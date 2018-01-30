package work.study.ui.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import work.study.ui.service.WebLogService;

@RestController
@RequestMapping(value="weblog")
public class WebLogController {

	@Autowired
	private WebLogService webLogService;
	
	@RequestMapping(value="totalCount")
	public int totalCount(){
		return webLogService.totalCount();
	}
}
