package cn.edu.swu.admin;

import java.io.IOException;
import java.io.Writer;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.swu.tool.DBTools;
import cn.edu.swu.tool.ResultSetHandler;
import cn.edu.swu.user.User;

@WebServlet("/admin/exportUsers")
public class ExportUserServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		this.doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");		
		try {
			
			List<User> users = this.getUsers();
			
			String exportType = request.getParameter("exportType");
			
			request.setAttribute("users", users);
			
			RequestDispatcher dispatcher = null;
			
			if (exportType.equalsIgnoreCase("excel")) {
				dispatcher = request.getRequestDispatcher("/admin/users/toExcel");
				dispatcher.forward(request, response);
			} else {
				dispatcher = request.getRequestDispatcher("/admin/users/toHtml");
				dispatcher.forward(request, response);
			}
			
			

		} catch (SQLException e) {			
			e.printStackTrace();
		}				
	}
	
	private List<User> getUsers() throws SQLException {
		String sql = "select * from user";		
		final List<User> users = new ArrayList<User>();	
		DBTools.query(sql, new ResultSetHandler() {
			@Override
			public void handle(ResultSet rs) throws SQLException {				
				while(rs.next()) {
					User u = new User();
					u.setId(rs.getInt("id"));
					u.setUser(rs.getString("user"));
					u.setName(rs.getString("name"));
					u.setPass(rs.getString("pass"));
					u.setRole(rs.getString("role"));					
					users.add(u);
				}
			}			
		});		
		return users;
	}	

}
