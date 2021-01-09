package edu.swu.scms.auth;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.swu.scms.tool.DBTools;
import edu.swu.scms.tool.ResultSetHandler;
import edu.swu.scms.user.User;
import org.junit.Assert;

import static org.junit.Assert.*;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		this.doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		request.setCharacterEncoding("UTF-8");
		
		String user = request.getParameter("name");
		String pass = request.getParameter("pass");

		try {
			User u = this.authenticate(user, pass);
			if ( u != null ) {
				if (u.getRole().equalsIgnoreCase("admin")) {
					request.getSession().setAttribute("username",u.getUser() );
					request.getSession().setAttribute("id",u.getId() );
					request.getSession().setAttribute("balance",u.getBalance() );
					request.getSession().setAttribute("islost",u.getIsLost() );
					response.sendRedirect("admin.jsp");
				} else {
					request.getSession().setAttribute("username",u.getUser() );
					request.getSession().setAttribute("id",u.getId() );
					request.getSession().setAttribute("balance",u.getBalance() );
					request.getSession().setAttribute("islost",u.getIsLost() );
					response.sendRedirect("user.jsp");
				}				
			} else {
				System.out.println("用户名或密码错误，登录失败！");
				response.sendRedirect("index.jsp");
			}
		} catch (SQLException e) {
			throw new IOException(e);
		}
	}
	

	private User authenticate(String name, String pass) throws SQLException {
		String sql = String.format(
			"select * from user where name='%s' and passwd=md5('%s')",
			name, pass
		);		
		System.out.println(sql);
		
		final List<User> users = new ArrayList<User>();	
		DBTools.query(sql, new ResultSetHandler() {
			@Override
			public void handle(ResultSet rs) throws SQLException {				
				while(rs.next()) {
					User u = new User();
					u.setId(rs.getString("id"));
					u.setUser(rs.getString("name"));
					u.setPass(rs.getString("passwd"));
					u.setRole(rs.getString("role"));
					u.setIsLost(rs.getString("islost"));
					u.setBalance(rs.getFloat("balance"));
					users.add(u);
				}
			}			
		});		
		return users.size() > 0 ? users.get(0) : null;
	}
}
