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
		// JDBC链接MySQL实现查询
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "123qwe";
		
		List<Employee> list = new ArrayList<Employee>();
		try {
			// 1、加载驱动
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url, user, password);
			// 3、SQL语句
			String sql = "call getAllEmployee";
			// 4、预编译（可调用的存储过程）
			CallableStatement statement = (CallableStatement)connection.prepareCall(sql);
			// 5、执行
			ResultSet resultSet = statement.executeQuery();
			// 6、处理结果
			while (resultSet.next()) {
				// 抽取数据
				int id = resultSet.getInt("Id");
				String name = resultSet.getString("Name");
				String title = resultSet.getString("Title");
				int age = resultSet.getInt("Age");
				//Date createDate=resultSet.getDate("CreateDate");
				//实体对象
				Employee employee =  new Employee();
				employee.setId(id);
				employee.setName(name);
				employee.setTitle(title);
				employee.setAge(age);
				//存储到列表
				list.add(employee);
			}
			// 7、关闭链接
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
		// JDBC链接MySQL实现查询
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "bdyxnjzd";
		try {
			// 1、加载驱动
			Class.forName(driver);
			// 2、创建链接
			Connection connection = DriverManager.getConnection(url, user, password);
			// 3、SQL语句
			// String sql = "insert into employee(Name,Title)values(?,?)";
			String sql = "INSERT INTO `alibaba`.`employee`";
			sql = sql + " (`Name`,`Age`,`Title`,`Level`,`Address`,`Mobile`,`QQ`,`Email`,`Salary`,`Gender`,`JoinDate`)";
			sql = sql + " VALUES(?,18,?,8,'中国杭州','12213','127319281','12731@qq.com',88888,2,now());";
			// 4、预编译
			PreparedStatement statement = connection.prepareStatement(sql);
			// 5、参数（传参）-- 按照问号的顺序来传参
			statement.setString(1, name);
			statement.setString(2, title);
			// 6、执行
			boolean result = statement.execute();
			// 7、关闭链接
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
		// JDBC链接MySQL实现查询
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "bdyxnjzd";
		try {
			// 1、加载驱动
			Class.forName(driver);
			// 2、创建链接
			Connection connection = DriverManager.getConnection(url, user, password);
			// 3、SQL语句
			String sql = "call deleteEmployee";
			// 4、预编译（可调用的存储过程）
			CallableStatement statement = (CallableStatement) connection.prepareCall(sql);
			// 5、参数
			statement.setInt(1, id);
			// 6、执行
			boolean result = statement.execute();
			// 7、关闭链接
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
		// JDBC链接MySQL实现查询
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "bdyxnjzd";
		try {
			// 1、加载驱动
			Class.forName(driver);
			// 2、创建链接
			Connection connection = DriverManager.getConnection(url, user, password);
			// 3、SQL语句
			String sql = "update employee set Name = ? where Id = ?";
			// 4、预编译
			PreparedStatement statement = connection.prepareStatement(sql);
			// 5、参数（传参）
			statement.setInt(2, id);
			statement.setString(1, name);
			// 6、执行
			boolean result = statement.execute();
			// 7、关闭链接
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
