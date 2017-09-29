package work.study.ui.controller.backend;

import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class LoginController {
	
	@RequestMapping("/loginSign")
	public void loginSign(HttpServletRequest request, HttpServletResponse response,String inputEmail,String inputPassword){
		try {
			if ("hao.wang".equals(inputEmail) && "wanghao1984".equals(inputPassword)) {
				String userId = UUID.randomUUID().toString();
				Cookie cookie = new Cookie("user_id", userId);
				cookie.setPath("/");
				response.addCookie(cookie);
				request.getSession().setAttribute("user_id", userId);
				response.sendRedirect("article/index.html");
			}else {
				response.sendError(HttpServletResponse.SC_BAD_REQUEST);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
