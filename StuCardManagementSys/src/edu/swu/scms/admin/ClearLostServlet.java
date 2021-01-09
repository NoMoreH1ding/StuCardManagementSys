package edu.swu.scms.admin;


import edu.swu.scms.tool.DBTools;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/clearlost")
public class ClearLostServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        this.doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        try {
            this.ClearLost();
            response.sendRedirect("admin.jsp");
        } catch (SQLException e) {
            throw new IOException(e);
        }

    }

    //jdbc:mysql://localhost:3306/test?user=root&password=&useUnicode=true&characterEncoding=gbk&autoReconnect=true&failOverReadOnly=false


    private int ClearLost() throws SQLException {
        String sql = String.format(
                "UPDATE `stucardmanagementsys`.`user`SET `islost`='false' WHERE `id`=*;");
        System.out.println(sql);

        return DBTools.update(sql);
    }
}