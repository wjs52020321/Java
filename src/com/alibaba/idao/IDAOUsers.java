package com.alibaba.idao;
import java.util.List;
import com.alibaba.entity.Users;

public interface IDAOUsers
{


/**
* 返回所有记录
* @returnList＜Users＞</returns>
*/
List<Users> GetDataList();

/**
* 分页查询
* @returnList＜Users＞</returns>
*/
List<Users> GetUsersByPagination(int pageIndex, int pageSize);

/**
* 返回单条记录
* <param name="id">主键</param>
* @returnUsers</returns>
*/
Users GetDataByUsersId(int id);

/**
* 新增
* @paramUsers实体</param>
* @return int</returns>
*/
boolean Insert(Users item);

/**
* 修改
 * @param id 
* @paramUsers实体</param>
* <param name="id">主键</param>
* @return int</returns>
*/
boolean Update(Users item);
boolean UpdateImage(Integer id,String avatarURL);

/**
* 删除
* <param name="id">主键</param>
* @return int</returns>
*/
boolean Delete(int id);

/**
* 获取记录总数 分页使用
* <param name="id">主键</param>
* @return int</returns>
*/
public int GetAllCount();


}

