package edu.swu.scms.Servlet;

import edu.swu.scms.dao.UserDao;
import edu.swu.scms.tools.MD5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")//请求路径,  如果配置了@WebServlet注解就不配置web.xml，两者二选一
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();

    }
    /**
     * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
     */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /**设置请求编码*/
        request.setCharacterEncoding("UTF-8");
        /**设置响应类型*/
        response.setContentType("text/html");
        /**设置响应编码*/
        response.setCharacterEncoding("UTF-8");

        //获取MD5加密对象
        MD5 pwd = new MD5();
        //获取输入的用户名和密码
        String name = request.getParameter("username");
        String pass = null;
        boolean admin = Boolean.parseBoolean(request.getParameter("isadmin"));
        try {
            pass = pwd.getMD5(request.getParameter("password"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        //初始化dao层
        UserDao userDao = new UserDao();
        /**调用dao层的获取用户的方法*/
        try {
            String user = userDao.findUserByName(name,pass);
            System.out.println(user);

            //获取session,将获取到的数据保存到session中
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            //重定向，跳转到成功页面
            if (admin) response.sendRedirect("user.html");
            else response.sendRedirect("admin.html");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
