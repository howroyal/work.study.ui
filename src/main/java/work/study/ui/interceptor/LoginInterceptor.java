package work.study.ui.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean isLogined = false;
		Object userId = request.getSession().getAttribute("user_id");
		if (userId != null) {
			Cookie[] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				String name = cookie.getName();
				String value = cookie.getValue();
				if (name.equals("user_id")) {
					isLogined = userId.toString().equals(value);
					if (isLogined) {
						return true;
					}
				}
			}
		}
		response.sendRedirect("/backend/login.html");
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}

}
