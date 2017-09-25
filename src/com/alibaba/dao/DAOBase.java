package com.alibaba.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DAOBase {
	// JDBC����MySQLʵ�ֲ�ѯ ȫ�ֱ���
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
	private String user = "root";
	private String password = "123qwe";
	// ��ȡȫ��
	protected Connection connection = null;
	protected PreparedStatement statement;
	// sql���
	protected String sql = null;

	public DAOBase() {
		try {
			// 1����������
			Class.forName(driver);
			// 2�����ݿ�����
			connection = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// �ر����ӣ���װ����
	protected void Close() {
		// 7���ر�����
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
