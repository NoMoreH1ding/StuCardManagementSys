package cn.edu.swu.user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.edu.swu.tool.DBTools;
import cn.edu.swu.tool.ResultSetHandler;

public class UserService {

	
	public User getByNameAndPass(String name, String pass) throws SQLException {
		String sql = String.format("select * from user where user='%s' and pass=md5('%s')", name, pass);
		System.out.println(sql);

		final List<User> users = new ArrayList<User>();
		DBTools.query(sql, new ResultSetHandler() {
			@Override
			public void handle(ResultSet rs) throws SQLException {
				while (rs.next()) {
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
		return users.size() > 0 ? users.get(0) : null;
	}
	
}
