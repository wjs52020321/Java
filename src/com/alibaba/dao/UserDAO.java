package com.alibaba.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.alibaba.entity.User;
import com.alibaba.idao.IDAOUser;;

public class UserDAO extends DAOBase implements IDAOUser{
	public User GetUserDataById(int  id) {
    	User entity1= null;
    			try {
    			// 3.SQL命令
    			sql = "select * from users where Id ="+id;
    			// 准备命令
    			 statement = connection.prepareStatement(sql);
    			// 4执行
    			 ResultSet resultSet = statement.executeQuery();
    			 while (resultSet.next()) {
    					// 获取值   					
    					String name = resultSet.getString("Name");
    					String imageurl = resultSet.getString("ImageURL");  					
    					Date createdate = resultSet.getDate("Createdate");
    				    entity1 = new User();
    					entity1.setId(id);
    					entity1.setName(name);
    					entity1.setImageurl(imageurl);
    					entity1.setCreatedate(createdate);
    					
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
	
	public boolean update(int id, String imageurl) {
		try {
			// 3、SQL语句
			String sql = "update users set ImageURL = ? where Id = ?";
			// 4、预编译
			statement = connection.prepareStatement(sql);
			// 5、参数（传参）			
			statement.setString(1, imageurl);
			statement.setInt(2, id);
			// 6、执行
			boolean result = statement.execute();
			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Close();
		}
		return false;
	}

}
