package com.alibaba.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.alibaba.entity.Employee;
import com.alibaba.idao.IDAOEmployee;
import java.util.List;
import java.util.ArrayList;

public class AlibabaDAO extends DAOBase implements IDAOEmployee {
	//查询
	public List<Employee> GetAllDataPaging(int pageIndex, int pageSize) {
		List<Employee> list= null;
				try {
				// 3.SQL命令
				sql = "{call up_GetAllPaginationEmployee(?,?)}";
				// Ԥ    
				CallableStatement statement = connection.prepareCall(sql);

				statement.setInt(1, pageSize);//
				statement.setInt(2, pageSize * (pageIndex - 1));
				// 4查询ִ
				ResultSet resultSet = statement.executeQuery();
				// 5.调用方法实体类
				list=ConvertToEntity(resultSet);
				// 7.关闭连接
				connection.close();
				statement.close();

			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list;

		}
		
	    private List<Employee> ConvertToEntity(ResultSet resultSet){
	    	// 分页查询
			List<Employee> list = new ArrayList<Employee>();
			try {
				while (resultSet.next()) {
					// 获取值
					int id = resultSet.getInt("Id");
					String name = resultSet.getString("Name");
					int age = resultSet.getInt("Age");
					String title = resultSet.getString("Title");										
					Employee entity = new Employee();
					entity.setId(id);
					entity.setTitle(title);
					entity.setName(name);
					entity.setAge(age);
				
					// 添加实体
					list.add(entity);

				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list;
	   }
	    //查询所有总条数
	    public int GetAllCount() {
			int count = 0;

			try {
				String sql = "select count(*) as count from employee ";
				statement  = connection.prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				if (rs.next()) {
					count = rs.getInt("count");
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
			return count;
		}
	//查询单条
	    public Employee GetEmployeeDataById(int  id) {
	    	Employee entity1= null;
	    			try {
	    			// 3.SQL命令
	    			sql = "select * from employee where Id ="+id;
	    			// 准备命令
	    			 statement = connection.prepareStatement(sql);
	    			// 4执行
	    			 ResultSet resultSet = statement.executeQuery();
	    			 while (resultSet.next()) {
	    					// 获取值   						    				 
	 					String name = resultSet.getString("Name");
	 					int age = resultSet.getInt("Age");
	 					String title = resultSet.getString("Title");						 					
	 				    entity1 = new Employee();	 	
	 					entity1.setId(id);
	 					entity1.setTitle(title);
	 					entity1.setName(name);
	 					entity1.setAge(age);	 				    					
	    			 }

	    		}catch (SQLException e) {
	    			// TODO Auto-generated catch block
	    			e.printStackTrace();
	    		}finally{
	    			//关闭资源
	    			Close();
	    		}
	    		return entity1;

	    	}
	
	public List<Employee> getAllData() {
		//查询数据列表
		List<Employee> list = new ArrayList<Employee>();
		try {			
			// 3、SQL语句
			sql = "select * from employee";
			// 4、预编译（可调用的存储过程）
			statement = connection.prepareStatement(sql);
			// 5、执行
			ResultSet resultSet = statement.executeQuery(); 
			// 6、处理结果
			while (resultSet.next()) {
				// 抽取数据
				int id = resultSet.getInt("id");
				String name = resultSet.getString("Name");
				String title = resultSet.getString("Title");
				int age = resultSet.getInt("age");
				//调用实体类
				Employee employee =  new Employee();
				employee.setId(id);
				employee.setName(name);
				employee.setTitle(title);
				employee.setAge(age);
				//存储到列表
				list.add(employee);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Close();
		}
		return list;
	}

	public boolean add(String name, String title) {
		try {
			// 3、SQL语句
			// String sql = "insert into employee(Name,Title)values(?,?)";
			sql = "INSERT INTO `alibaba`.`employee`";
			sql = sql + " (`Name`,`Age`,`Title`,`Level`,`Address`,`Mobile`,`QQ`,`Email`,`Salary`,`Gender`,`JoinDate`)";
			sql = sql + " VALUES(?,18,?,8,'中国杭州','12213','127319281','12731@qq.com',88888,2,now());";
			// 4、预编译
			statement = connection.prepareStatement(sql);
			// 5、参数（传参）-- 按照问号的顺序来传参
			statement.setString(1, name);
			statement.setString(2, title);
			// 6、执行
			boolean result = statement.execute();
			return result;
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Close();
		}
		return false;
	}

	public boolean delete(int id) {
		try {
			// 3、SQL语句
			sql = "delete from employee where Id=?";
			//4.预处理sql
			statement = connection.prepareStatement(sql);
			// 5、参数
			statement.setInt(1, id);
			// 6、执行
			boolean result = statement.execute();
			return result;
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Close();
		}
		return false;
	}

	public boolean update(int id, String name) {
		try {
			// 3、SQL语句
			sql = "update employee set Name = ? where Id = ?";
			// 4、预编译
			statement = connection.prepareStatement(sql);
			// 5、参数（传参）
			statement.setInt(2, id);
			statement.setString(1, name);
			// 6、执行
			boolean result = statement.execute();
			return result;

		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Close();
		}
		return false;
	}
}
