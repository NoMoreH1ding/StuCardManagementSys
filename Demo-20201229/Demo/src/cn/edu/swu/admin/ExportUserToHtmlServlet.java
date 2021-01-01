package cn.edu.swu.admin;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.swu.user.User;

@WebServlet("/admin/users/toHtml")
public class ExportUserToHtmlServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		this.doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		List<User> users = (List<User>)request.getAttribute("users");
		
		response.setCharacterEncoding("UTF-8");	
		response.setContentType("text/html");
		
		Writer writer = response.getWriter();
		writer.write(this.toHtml(users));
		writer.flush();
		writer.close();
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






