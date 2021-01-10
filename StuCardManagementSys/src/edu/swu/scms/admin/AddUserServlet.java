package edu.swu.scms.admin;


import edu.swu.scms.tool.DBTools;
import org.junit.Assert;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/adduser")
public class AddUserServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        this.doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        String role = request.getParameter("role");

        try {
            this.insertUser(name, pass, role);
            response.sendRedirect("admin.jsp");
        } catch (SQLException e) {
            throw new IOException(e);
        }

    }

    //jdbc:mysql://localhost:3306/test?user=root&password=&useUnicode=true&characterEncoding=gbk&autoReconnect=true&failOverReadOnly=false


    private int insertUser(String name, String pass, String role) throws SQLException {
        String sql = String.format(
                "insert into user(name, passwd, role) "
                        + "values('%s', md5('%s'),'%s')", name, pass, role);

        System.out.println(sql);

        return DBTools.update(sql);
    }
}





