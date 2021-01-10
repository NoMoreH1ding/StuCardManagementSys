package edu.swu.scms.user;


import edu.swu.scms.tool.DBTools;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import static edu.swu.scms.tool.DataUpdate.dataUpdate;

@WebServlet("/usersave")
public class UserSaveServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        this.doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String money = request.getParameter("usersave");
        try {
            this.UserSave(request, money);
            dataUpdate(request);
            response.sendRedirect("user.jsp");
        } catch (SQLException e) {
            throw new IOException(e);
        }

    }

    //jdbc:mysql://localhost:3306/test?user=root&password=&useUnicode=true&characterEncoding=gbk&autoReconnect=true&failOverReadOnly=false


    private int UserSave(HttpServletRequest request, String save) throws SQLException {
        Object id = request.getSession().getAttribute("id");
        Object balance = request.getSession().getAttribute("balance");
        System.out.println(id);
        String sql = String.format(
                "UPDATE `stucardmanagementsys`.`user`SET balance='%s'+'%s' where `id`='%s'", balance, save, id);
        System.out.println(sql);

        return DBTools.update(sql);
    }
}