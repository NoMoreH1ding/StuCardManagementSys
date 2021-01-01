package cn.edu.swu.admin;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;

import cn.edu.swu.auth.AuthService;
import cn.edu.swu.user.UserService;

public class SystemInitializer extends HttpServlet {
	
	private AuthService authService = null;
	private UserService userService = null;
	
	@Override
	public void init(ServletConfig config)  {
		this.authService = new AuthService();
		this.userService = new UserService();
		
		ServletContext context = this.getServletContext();
		context.setAttribute("AuthService", authService);
		context.setAttribute("UserService", userService);
	}

}
