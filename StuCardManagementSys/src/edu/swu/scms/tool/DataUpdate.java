package edu.swu.scms.tool;

import edu.swu.scms.user.User;

import javax.servlet.http.HttpServletRequest;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DataUpdate {
    public static void dataUpdate(HttpServletRequest request){
        Object name =request.getSession().getAttribute("username");
        Object pass =request.getSession().getAttribute("password");
        System.out.println(name);
        System.out.println(pass);
        String sql = String.format(
                "select * from user where name='%s' and passwd='%s'",
                name, pass
        );
        System.out.println(sql);

        final List<User> users = new ArrayList<User>();
        try {
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
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.getSession().setAttribute("balance", users.get(0).getBalance() );
        request.getSession().setAttribute("islost",users.get(0).getIsLost() );
    }
}


