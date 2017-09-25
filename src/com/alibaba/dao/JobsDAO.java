package com.alibaba.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.alibaba.entity.Jobs;
import com.alibaba.idao.IDAOJobs;

import java.util.List;
import java.util.ArrayList;
import java.util.Date;

public class JobsDAO extends DAOBase implements IDAOJobs {
	// 查询
	public List<Jobs> GetAllDataPaging(int pageIndex, int pageSize) {
		List<Jobs> list= null;
				try {
				// 3.SQL命令
				sql = "{call up_GetAllPaginationJobs(?,?)}";
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
		
	    private List<Jobs> ConvertToEntity(ResultSet resultSet){
	    	// 分页查询
			List<Jobs> list = new ArrayList<Jobs>();
			try {
				while (resultSet.next()) {
					// 获取值
					int id = resultSet.getInt("Id");
					String content = resultSet.getString("Content");
					String tags = resultSet.getString("Tags");
					String title = resultSet.getString("Title");										
					Jobs entity = new Jobs();
					entity.setId(id);
					entity.setTitle(title);
					entity.setContent(content);
					entity.setTags(tags);
				
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
				String sql = "select count(*) as count from jobs ";
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
	    public Jobs GetJobsDataById(int  id) {
	    	Jobs entity1= null;
	    			try {
	    			// 3.SQL命令
	    			sql = "select * from jobs where Id ="+id;
	    			// 准备命令
	    			 statement = connection.prepareStatement(sql);
	    			// 4执行
	    			 ResultSet resultSet = statement.executeQuery();
	    			 while (resultSet.next()) {
	    					// 获取值   						    				 	    					
	    					String content = resultSet.getString("Content");
	    					String tags = resultSet.getString("Tags");
	    					String title = resultSet.getString("Title");										
	    				    entity1 = new Jobs();
	    					entity1.setId(id);
	    					entity1.setTitle(title);
	    					entity1.setContent(content);
	    					entity1.setTags(tags); 					
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
	
	
	public List<Jobs> getAllData() {
		List<Jobs> list = new ArrayList<Jobs>();
		try {
			// 3、SQL语句
			sql = "select * from jobs";
			// 4、预编译（可调用的存储过程）
			statement = connection.prepareStatement(sql);
			// 5、执行
			ResultSet resultSet = statement.executeQuery();
			// 6、处理结果
			while (resultSet.next()) {
				// 抽取数据
				int id = resultSet.getInt("Id");
				String title = resultSet.getString("Title");
				String content = resultSet.getString("Content");
				String tags = resultSet.getString("Tags");
				int viewTimes = resultSet.getInt("ViewTimes");
				Date createDate = resultSet.getDate("CreateDate");
				// 调用实体类
				Jobs jobs = new Jobs();
				jobs.setId(id);
				jobs.setTitle(title);
				jobs.setContent(content);
				jobs.setTags(tags);
				jobs.setViewTimes(viewTimes);
				jobs.setCreateDate(createDate);
				// 存储到列表
				list.add(jobs);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Close();
		}
		return list;
	}

	public boolean add(String title, String tags) {
		try {
			// 3、SQL语句
			// String sql = "insert into jobs(Title,Tags)values(?,?)";
			String sql = "INSERT INTO `alibaba`.`news`";
			sql = sql
					+ " (`Title`,`Content`,`Tags`,`CreateDate`,`EndDate`,`UserId`,`HrEmail`,`WorkAddress`,`ViewTimes`,`State`)";
			sql = sql + " VALUES(?,null,?,now(),now(),7,null,null,0,1);";
			// 4、预编译
			statement = connection.prepareStatement(sql);
			// 5、参数（传参）-- 按照问号的顺序来传参
			statement.setString(1, title);
			statement.setString(2, tags);
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

	public boolean delete(int id) {
		try {
			// 3、SQL语句
			String sql = "delete from jobs where Id=?";
			// 4、预编译（可调用的存储过程）
			statement = connection.prepareStatement(sql);
			// 5、参数
			statement.setInt(1, id);
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

	public boolean update(int id, String title) {
		try {
			// 3、SQL语句
			String sql = "update jobs set Title = ? where Id = ?";
			// 4、预编译
			statement = connection.prepareStatement(sql);
			// 5、参数（传参）
			statement.setInt(2, id);
			statement.setString(1, title);
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
