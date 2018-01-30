package work.study.ui;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import work.study.ui.interceptor.LoginInterceptor;

/**
 * 登录拦截器验证
 * @author hao.wang
 *
 */
@Configuration
public class LoginConfiger extends WebMvcConfigurerAdapter{

	@Override
	public void addInterceptors(InterceptorRegistry registry){
		registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/backend/**");
		super.addInterceptors(registry);
	}
}
