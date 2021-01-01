package cn.edu.swu.auth;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.edu.swu.tool.DBTools;
import cn.edu.swu.tool.ResultSetHandler;
import cn.edu.swu.user.User;
import cn.edu.swu.user.UserService;

public class AuthService {

	private UserService userService = new UserService();
	
	public boolean authenticate(User user) throws SQLException {
		return user == null ? false : true; 
	}
	
	public boolean authenticate(String name, String pass) throws SQLException {
		User user = this.userService.getByNameAndPass(name, pass);
		return user == null ? false : true; 
	}

}
