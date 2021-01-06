package edu.swu.scms.tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionFactory {
    //准备参数
    private static String url = "jdbc:mysql://localhost:3306/stucaedmanagementsys?useSSL=false";
    private static String user = "root";
    private static String password ="123456";

    //使用静态代码块加载驱动
    static{
        try {
            /**使用类名加载数据库驱动*/
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
            /**创建运行时异常*/
            throw new RuntimeException("数据库驱动加载异常！", e);
        }
    }
    /**提供公共、静态的连接数据库的方法*/
    public static Connection getConnection() throws SQLException{
        Connection conn = DriverManager.getConnection(url, user, password);
        return conn;
    }
}