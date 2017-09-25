package com.alibaba.dao;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.alibaba.entity.News;
import com.alibaba.idao.IDAONews;
import java.util.List;
import java.util.ArrayList;
import java.util.Date;
//扩展基类 实现接口
public class NewsDAO extends DAOBase implements IDAONews {
	//查询分页
	public List<News> GetAllDataPaging(int pageIndex, int pageSize) {
	List<News> list= null;
			try {
			// 3.SQL命令
			sql = "{call up_GetAllPaginationNews(?,?)}";
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
	
    private List<News> ConvertToEntity(ResultSet resultSet){
    	// 分页查询
		List<News> list = new ArrayList<News>();
		try {
			while (resultSet.next()) {
				// 获取值
				int id = resultSet.getInt("Id");
				String title = resultSet.getString("Title");
				String tags = resultSet.getString("Tags");
				int viewTimes = resultSet.getInt("ViewTimes");
				Date createDate = resultSet.getDate("CreateDate");
				News entity = new News();
				entity.setId(id);
				entity.setTitle(title);
				entity.setTags(tags);
				entity.setViewTimes(viewTimes);
				entity.setCreateDate(createDate);
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
			String sql = "select count(*) as count from news ";
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
    public News GetNewsDataById(int  id) {
    	News entity1= null;
    			try {
    			// 3.SQL命令
    			sql = "select * from news where Id ="+id;
    			// 准备命令
    			 statement = connection.prepareStatement(sql);
    			// 4执行
    			 ResultSet resultSet = statement.executeQuery();
    			 while (resultSet.next()) {
    					// 获取值   					
    					String title = resultSet.getString("Title");
    					String tags = resultSet.getString("Tags");
    					int viewTimes = resultSet.getInt("ViewTimes");
    					Date createDate = resultSet.getDate("CreateDate");
    				    entity1 = new News();
    					entity1.setId(id);
    					entity1.setTitle(title);
    					entity1.setTags(tags); 
    					entity1.setViewTimes(viewTimes);
    					entity1.setCreateDate(createDate);
    					
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
	public boolean add(String title, String tags) {
		try {
			// 3、SQL语句
			// String sql = "insert into news(Title,Tags)values(?,?)";
			String sql = "INSERT INTO `alibaba`.`news`";
			sql = sql + " (`Title`,`CoverImage`,`Images`,`Content`,`CreateDate`,`UserId`,`Tags`,`ViewTimes`,`Up`,`Down`,`State`)";
			sql = sql + " VALUES(?,null,null,'312312',now(),12213,?,432,0,0,1);";
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
			String sql = "call deleteNews";
			// 4、预编译（可调用的存储过程）
			CallableStatement statement = (CallableStatement) connection.prepareCall(sql);
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
			String sql = "update news set Title = ? where Id = ?";
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
	@Override
	public List<News> getAllData() {
		// TODO Auto-generated method stub
		return null;
	}
}
