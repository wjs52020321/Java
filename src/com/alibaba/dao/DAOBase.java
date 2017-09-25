package com.alibaba.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DAOBase {
	// JDBC链接MySQL实现查询 全局变量
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
	private String user = "root";
	private String password = "123qwe";
	// 提取全局
	protected Connection connection = null;
	protected PreparedStatement statement;
	// sql语句
	protected String sql = null;

	public DAOBase() {
		try {
			// 1、加载驱动
			Class.forName(driver);
			// 2、数据库链接
			connection = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 关闭链接，封装起来
	protected void Close() {
		// 7、关闭链接
		try {
			if (connection != null) {
				connection.close();
			}
			if (statement != null) {
				statement.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
