package cn.edu.swu.admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Assert;

import cn.edu.swu.tool.DBTools;

@WebServlet("/admin/adduser")
public class AddUserServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		this.doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		request.setCharacterEncoding("UTF-8");
		
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String role = request.getParameter("role");
		
		Assert.assertNotNull("用户为空", user);
		Assert.assertNotNull("密码为空", pass);
		Assert.assertNotNull("姓名为空", name);
		Assert.assertNotNull("角色为空", role);
		
		try {
			this.insertUser(user, pass, name, role);			
			response.sendRedirect("/demo/admin/users");
		} catch (SQLException e) {
			throw new IOException(e);
		}
		
	}
	
	private int insertUser(String user, String pass, String name, String role) throws SQLException {
		String sql = String.format(
			"insert into user(user, pass, name, role) "
			+ "values('%s', md5('%s'), '%s', '%s')", user, pass, name, role);
		
		System.out.println(sql);
		
		return DBTools.update(sql);
	}
}





