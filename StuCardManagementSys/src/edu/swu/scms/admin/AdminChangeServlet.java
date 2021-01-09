package edu.swu.scms.admin;


import edu.swu.scms.tool.DBTools;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/adminchange")
public class AdminChangeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        this.doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("saveid");
        String money = request.getParameter("save");

        try {
            this.adminChange(id, money);
            response.sendRedirect("admin.jsp");
        } catch (SQLException e) {
            throw new IOException(e);
        }

    }

    //jdbc:mysql://localhost:3306/test?user=root&password=&useUnicode=true&characterEncoding=gbk&autoReconnect=true&failOverReadOnly=false


    private int adminChange(String id, String money) throws SQLException {
        String sql = String.format(
                "UPDATE `stucardmanagementsys`.`user`SET `balance`='%s' WHERE `id`='%s';", money,id);
        System.out.println(sql);

        return DBTools.update(sql);
    }
}