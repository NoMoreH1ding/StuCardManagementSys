package cn.edu.swu.admin;

import java.io.IOException;
import java.io.Writer;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.swu.auth.AuthFilter;
import cn.edu.swu.tool.DBTools;
import cn.edu.swu.tool.ResultSetHandler;
import cn.edu.swu.user.User;

@WebServlet("/users")
public class UsersService extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		this.doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		request.setCharacterEncoding("UTF-8");
		
		try {
			List<User> users = this.getUsers();
			response.setCharacterEncoding("UTF-8");
			response.setContentType("Content-Type:application/json");
			try(Writer writer = response.getWriter()) {
				writer.write(this.toJSON(users));
				//writer.write(this.toHtml(users));
				writer.flush();
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
	
	private String toJSON(List<User> users) {		
		StringBuilder sb = new StringBuilder();
		sb.append("{\"users\":[");
		for(int i=0; i<users.size(); i++) {
			User user = users.get(i);			
			if (i != 0) {
				sb.append(",\n");
			}
			sb.append("{");
			sb.append("\"id\":   \"").append(user.getId()).append("\",");
			sb.append("\"name\": \"").append(user.getUser()).append("\",");
			sb.append("\"user\": \"").append(user.getName()).append("\",");
			sb.append("\"role\": \"").append(user.getRole()).append("\"");
			sb.append("}");			
		}		
		sb.append("]}");
		
		return sb.toString();
	}
	
	private String toHtml(List<User> users) {
		StringBuilder sb = new StringBuilder();
		sb.append("<table style='broder:1' width='70%'>");		
		for(User user : users) {
			sb.append("<tr>");
			sb.append("<td>").append(user.getId()).append("</td>");
			sb.append("<td>").append(user.getUser()).append("</td>");
			sb.append("<td>").append(user.getName()).append("</td>");
			sb.append("<td>").append(user.getRole()).append("</td>");
			sb.append("</tr>");			
		}		
		sb.append("</table>");		
		return sb.toString();
	}
	
}







