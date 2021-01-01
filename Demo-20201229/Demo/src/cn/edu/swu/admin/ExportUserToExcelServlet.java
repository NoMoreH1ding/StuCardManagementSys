package cn.edu.swu.admin;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.swu.user.User;

@WebServlet("/admin/users/toExcel")
public class ExportUserToExcelServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		this.doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		List<User> users = (List<User>)request.getAttribute("users");
		
		response.setCharacterEncoding("UTF-8");	
		response.setContentType("application/vnd.ms-excel");
		
		Writer writer = response.getWriter();
		writer.write(this.toCSV(users));
		writer.flush();
		writer.close();
	}
	
	
	private String toCSV(List<User> users) {
		StringBuilder sb = new StringBuilder();
		for(User user : users) {
			sb.append(user.getId()).append(",");
			sb.append(user.getUser()).append(",");
			sb.append(user.getName()).append(",");
			sb.append(user.getRole()).append("\n");
		}		

		return sb.toString();
	}
	
}






