package cn.edu.swu.auth;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/admin/*")
public class AuthFilter extends HttpFilter {
	private static final long serialVersionUID = 6053397495181095836L;
	
	public final static String AUTH_KEY = "AUTH_KEY";
	public final static String AUTH_VAL = "6053ASDF397495181095836ASF";
	
	public final static String USER_KEY = "USER_KEY";

	@Override
	public void doFilter(
			 HttpServletRequest request, 
			 HttpServletResponse response, 
			 FilterChain chain) throws IOException, ServletException {
		
		HttpSession session = request.getSession();
		
		if (session != null && 
			session.getAttribute(AUTH_KEY) != null &&
			session.getAttribute(AUTH_KEY).equals(AUTH_VAL)) {
			chain.doFilter(request, response);
		} else {
			response.sendRedirect("/demo/login.html");
		}		
	}
}







