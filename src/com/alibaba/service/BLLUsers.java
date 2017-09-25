package com.alibaba.service;
import java.util.List;

import com.alibaba.dao.DAOUsers;
import com.alibaba.entity.Users;
import com.alibaba.idao.IDAOUsers;

public class BLLUsers {
	private IDAOUsers iDAOUsers;

	public BLLUsers() {
		iDAOUsers = (new DAOUsers());
	}

	/**
	 * 返回所有记录
	 * @returnList＜Users＞</returns>
	 */
	public List<Users> GetDataList() {
		return iDAOUsers.GetDataList();
	}

	/**
	 * 分页查询
	 * @returnList＜Users＞</returns>
	 */
	public List<Users> GetUsersByPagination(int pageIndex, int pageSize) {
		return iDAOUsers.GetUsersByPagination(pageIndex, pageSize);
	}

	/**
	 * 查询所总条数
	 */
	public int GetAllCount() {
		return iDAOUsers.GetAllCount();
	}

	/**
	 * 返回单条记录
	 */
	public Users GetDataByUsersId(int id) {
		return iDAOUsers.GetDataByUsersId(id);
	}

	/**
	 * 新增
	 * @paramUsers实体</param>
	 * 
	 * @return int</returns>
	 */
	public boolean Create(Users item) {
		return iDAOUsers.Insert(item);
	}

	/**
	 * 修改
	 * @paramUsers实体</param> <param name="id">主键</param>
	 * 
	 * @return int</returns>
	 */
	public boolean Update(Users item) {
		return iDAOUsers.Update(item);
	}

	/**
	 * 删除 <param name="id">主键</param>
	 * 
	 * @return int</returns>
	 */
	public boolean Delete(int id) {
		return iDAOUsers.Delete(id);
	}
	public boolean UpdateImage(Integer id,String avatarURL){
		return iDAOUsers.UpdateImage(id, avatarURL);
	}

}
