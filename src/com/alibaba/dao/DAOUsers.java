package com.alibaba.dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;

import org.apache.tomcat.jni.Error;
import org.eclipse.jdt.internal.compiler.tool.EclipseBatchRequestor;

import com.alibaba.idao.IDAOUsers;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMessages;
import com.alibaba.entity.Users;

public class DAOUsers extends DAOBase implements IDAOUsers {

	@SuppressWarnings("unused")
	private final String SQL_GETALL = "up_GetAllUsers";
	@SuppressWarnings("unused")
	private final String SQL_GETITEM = "up_GetItemUsers";
	@SuppressWarnings("unused")
	private final String SQL_GETALLPAGINATION = "up_GetAllPaginationUsers";
	@SuppressWarnings("unused")
	private final String SQL_INSERT = "up_InsertUsers";
	@SuppressWarnings("unused")
	private final String SQL_UPDATE = "up_UpdateUsers";
	@SuppressWarnings("unused")
	private final String SQL_DELETE = "up_DeleteUsers";
    //提取原始数据，转换为实体对象ORM工作，代码封装的功能扩展，ORM框架，EF,Dapper，Hibernate，MyBatis
	private Users CreateItem(ResultSet rs) throws SQLException {
		Users result = new Users();
		result.setId(rs.getInt("Id"));
		result.setName(rs.getString("Name"));
		result.setPassword(rs.getString("Password"));
		result.setEmail(rs.getString("Email"));
		result.setQQ(rs.getString("QQ"));
		result.setAge(rs.getInt("Age"));
		result.setImageURL(rs.getString("ImageURL"));
		result.setMobile(rs.getString("Mobile"));
		result.setBirthday(rs.getDate("Birthday"));
		result.setAddress(rs.getString("Address"));
		result.setGender(rs.getInt("Gender"));
		result.setCreateDate(rs.getDate("CreateDate"));
		result.setIntroduction(rs.getString("Introduction"));
		result.setMoney(rs.getBigDecimal("Money"));
		result.setMarriage(rs.getInt("Marriage"));
		result.setState(rs.getInt("State"));

		return result;
	}

	/**
	 * 返回所有记录 @returnList＜Users＞
	 */
	public List<Users> GetDataList() {
		try {

			CallableStatement statement = connection.prepareCall("call up_GetAllUsers( )");
			List<Users> list = null;
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				Users result = CreateItem(rs);
				list.add(result);
			}
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			Close();
		}
	}

	/**
	 * 分页查询 @returnList＜Users＞
	 */
	public List<Users> GetUsersByPagination(int pageIndex, int pageSize) {
		try {

			CallableStatement statement = connection.prepareCall("call up_GetAllPaginationUsers(?,?,?)");
			statement.setInt(1, pageSize);
			statement.setInt(2, pageSize * (pageIndex - 1));
			// 获取返回值
			 statement.registerOutParameter(3, Types.INTEGER);
			 int count = statement.getInt(3);
			List<Users> list = null;
			ResultSet rs = statement.executeQuery();
			statement.setInt(1, (pageIndex - 1) * pageSize);
			statement.setInt(2, pageSize);
			if (rs.next()) {
				Users result = CreateItem(rs);
				list.add(result);
			}
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			Close();
		}
	}

	/**
	 * 查询所总条数
	 */
	public int GetAllCount() {
		int count = 0;
		try {
			String sql = "select count(*) as count from users ";
			statement = connection.prepareStatement(sql);
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				count = rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	/**
	 * 返回单条记录 <param name="id">主键</param>
	 * 
	 * @returnUsers
	 */
	public Users GetDataByUsersId(int id) {
		try {

			CallableStatement Statement = connection.prepareCall("call up_GetItemUsers(?)");
			Statement.setInt(1, id);
			Users result = null;
			ResultSet rs = Statement.executeQuery();
			if (rs.next()) {
				result = CreateItem(rs);
			}
			rs.close();
			Statement.close();
			return result;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	/**
	 * 新增
	 * @paramUsers实体</param>
	 * 
	 * @return int
	 */
	public boolean Insert(Users item) {
		try {
			CallableStatement statement = connection.prepareCall("call up_InsertUsers(?)");
			statement.setInt(1, item.getId());
			boolean result = statement.execute();
			return result;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			Close();
		}
	}

	/**
	 * 修改
	 * @paramUsers实体</param> <param name="id">主键</param>
	 * 
	 * @return int
	 */
	public boolean Update(Users item) {
		try {
			CallableStatement statement = connection.prepareCall("call up_UpdateUsers(?)");
			statement.setInt(1, item.getId());
			boolean result = statement.execute();
			return result;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			Close();
		}
	}

	/**
	 * 删除 <param name="id">主键</param>
	 * 
	 * @return int
	 */
	public boolean Delete(int id) {
		try {
			CallableStatement statement = connection.prepareCall("call up_DeleteUsers(?)");
			statement.setInt(1, id);
			boolean result = statement.execute();
			return result;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			Close();
		}
	}
	public boolean UpdateImage(Integer id,String imageURL) {
		try {
			CallableStatement statement = connection.prepareCall("call up_UpdateUsers(?,?)");
			statement.setInt(1, id);
			statement.setString(2, imageURL);
			boolean result = statement.execute();
			return result;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			Close();
		}
					
	}
}
