package cn.edu.swu.auth;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Assert;

import cn.edu.swu.tool.DBTools;
import cn.edu.swu.tool.ResultSetHandler;
import cn.edu.swu.user.User;
import cn.edu.swu.user.UserService;

@WebServlet("/login")
public class AuthController extends HttpServlet {

	private static final long serialVersionUID = 9210258949358262359L;
	
	private AuthService authService = null;
	private UserService userService = null;
	
	@Override
	public void init(ServletConfig config)  {
		this.authService = (AuthService) this.getServletContext().getAttribute("AuthService");
		this.userService = (UserService) this.getServletContext().getAttribute("UserService");
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		this.doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String secrete = request.getParameter("secrete");
		
		if (user == null && pass == null && secrete == null) {
			request.getRequestDispatcher("./WEB-INF/pages/login.jsp").forward(request, response);
			return;
		}
		
		
//		Assert.assertNotNull("用户为空", user);
//		Assert.assertNotNull("密码为空", pass);
//		Assert.assertNotNull("验证码为空", secrete);
		
		String secreteInSession = (String)request.getSession().getAttribute(AuthImage.AUTH_SECRETE);
		
		if (secreteInSession == null ) {
			request.getRequestDispatcher("./WEB-INF/pages/login.jsp").forward(request, response);
			return;
		} else {
			if (!secreteInSession.equalsIgnoreCase(secrete)) {
				request.setAttribute("status", Boolean.FALSE);
				request.setAttribute("msg", "验证码错误");
				request.getRequestDispatcher("./WEB-INF/pages/login.jsp").forward(request, response);
				return;
			}
		}
		
		try {
			User u = this.userService.getByNameAndPass(user, pass);
			
			if ( this.authService.authenticate(u) ) {
				HttpSession session = request.getSession(true);
				session.setAttribute(AuthFilter.AUTH_KEY, AuthFilter.AUTH_VAL);
				session.setAttribute(AuthFilter.USER_KEY, u);
				
				if (u.getRole().equalsIgnoreCase("ADMIN")) {
					response.sendRedirect("./admin.jsp");
				} else {
					response.sendRedirect("./index.jsp");
				}				
			} else {
//				response.sendRedirect(
//					"./login.jsp?status=error&msg="
//					+ URLEncoder.encode("用户名秘密错误", "UTF-8"));
				
				request.setAttribute("status", Boolean.FALSE);
				request.setAttribute("msg", "用户名秘密错误");
				request.getRequestDispatcher("./WEB-INF/pages/login.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			throw new IOException(e);
		}
	}
	
}
















