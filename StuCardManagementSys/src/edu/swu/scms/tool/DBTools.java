package edu.swu.scms.tool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBTools {

	private final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String JDBC_URL = "jdbc:mysql://localhost:3306/stucardmanagementsys?useSSL=false&useUnicode=true&characterEncoding=UTF-8&serverTimezone=Asia/Shanghai";
	private final static String JDBC_USER = "root";
	private final static String JDBC_PASS = "123456";
	
	private static Connection getConnection() throws SQLException {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			throw new SQLException(e);
		}		
		return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
	}
	
	public static void query(String sql, ResultSetHandler handler) throws SQLException {
		try(Connection conn = getConnection()) {
			try(Statement stmt = conn.createStatement()){
				try(ResultSet rs = stmt.executeQuery(sql)){
					handler.handle(rs);
				}
			}
		}
	}
	
	public static int update(String sql) throws SQLException {
		try(Connection conn = getConnection()) {
			try(Statement stmt = conn.createStatement()){
				return stmt.executeUpdate(sql);
			}
		}
	}

	
}






