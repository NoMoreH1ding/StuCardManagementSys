package edu.swu.scms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import edu.swu.scms.tools.ConnectionFactory;
public class UserDao {

    public String findUserByName(String name, String pass) throws Exception {
        /**获取连接，因为连接工厂设置的静态方法，可以指定使用类名调用方法*/
        Connection conn = ConnectionFactory.getConnection();
        /**拼接sql语句*/
        String sql = "select * from user where name= ? and passwd = ?";
        /**预编译sql语句，这样是为了防止sql语句攻击*/
        PreparedStatement statement = conn.prepareStatement(sql);
        /**set参数,1表示第一个参数，2表示第二个参数*/
        statement.setString(1, name);
        statement.setString(2, pass);
        //执行sql语句，返回结果集
        ResultSet rs = statement.executeQuery();
        /**判断结果集是否有数据*/
        if(rs.last()){
            /**返回用户真实姓名*/
            return rs.getString("realname");
        }else{
            return "查询失败！";
        }
    }
}