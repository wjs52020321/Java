package com.alibaba.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.alibaba.entity.Employee;
import com.mysql.jdbc.CallableStatement;
import java.util.List;
import java.util.ArrayList;
//import java.util.Date;

public class EmployeeDAO {
	
	public List<Employee> getAllData() {
		// JDBC����MySQLʵ�ֲ�ѯ
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "123qwe";
		
		List<Employee> list = new ArrayList<Employee>();
		try {
			// 1����������
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url, user, password);
			// 3��SQL���
			String sql = "call getAllEmployee";
			// 4��Ԥ���루�ɵ��õĴ洢���̣�
			CallableStatement statement = (CallableStatement)connection.prepareCall(sql);
			// 5��ִ��
			ResultSet resultSet = statement.executeQuery();
			// 6��������
			while (resultSet.next()) {
				// ��ȡ����
				int id = resultSet.getInt("Id");
				String name = resultSet.getString("Name");
				String title = resultSet.getString("Title");
				int age = resultSet.getInt("Age");
				//Date createDate=resultSet.getDate("CreateDate");
				//ʵ�����
				Employee employee =  new Employee();
				employee.setId(id);
				employee.setName(name);
				employee.setTitle(title);
				employee.setAge(age);
				//�洢���б�
				list.add(employee);
			}
			// 7���ر�����
			connection.close();
			statement.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public boolean add(String name, String title) {
		// JDBC����MySQLʵ�ֲ�ѯ
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "bdyxnjzd";
		try {
			// 1����������
			Class.forName(driver);
			// 2����������
			Connection connection = DriverManager.getConnection(url, user, password);
			// 3��SQL���
			// String sql = "insert into employee(Name,Title)values(?,?)";
			String sql = "INSERT INTO `alibaba`.`employee`";
			sql = sql + " (`Name`,`Age`,`Title`,`Level`,`Address`,`Mobile`,`QQ`,`Email`,`Salary`,`Gender`,`JoinDate`)";
			sql = sql + " VALUES(?,18,?,8,'�й�����','12213','127319281','12731@qq.com',88888,2,now());";
			// 4��Ԥ����
			PreparedStatement statement = connection.prepareStatement(sql);
			// 5�����������Σ�-- �����ʺŵ�˳��������
			statement.setString(1, name);
			statement.setString(2, title);
			// 6��ִ��
			boolean result = statement.execute();
			// 7���ر�����
			connection.close();
			statement.close();
			return result;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

	public boolean delete(int id) {
		// JDBC����MySQLʵ�ֲ�ѯ
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "bdyxnjzd";
		try {
			// 1����������
			Class.forName(driver);
			// 2����������
			Connection connection = DriverManager.getConnection(url, user, password);
			// 3��SQL���
			String sql = "call deleteEmployee";
			// 4��Ԥ���루�ɵ��õĴ洢���̣�
			CallableStatement statement = (CallableStatement) connection.prepareCall(sql);
			// 5������
			statement.setInt(1, id);
			// 6��ִ��
			boolean result = statement.execute();
			// 7���ر�����
			connection.close();
			statement.close();
			return result;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean update(int id, String name) {
		// JDBC����MySQLʵ�ֲ�ѯ
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "bdyxnjzd";
		try {
			// 1����������
			Class.forName(driver);
			// 2����������
			Connection connection = DriverManager.getConnection(url, user, password);
			// 3��SQL���
			String sql = "update employee set Name = ? where Id = ?";
			// 4��Ԥ����
			PreparedStatement statement = connection.prepareStatement(sql);
			// 5�����������Σ�
			statement.setInt(2, id);
			statement.setString(1, name);
			// 6��ִ��
			boolean result = statement.execute();
			// 7���ر�����
			connection.close();
			statement.close();
			return result;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
