 package com.alibaba.service;

import java.util.List;

import com.alibaba.dao.NewsDAO;
import com.alibaba.entity.News;
import com.alibaba.idao.IDAONews;


/** 
* @ClassName: AlibabaService 
* @Description: TODO(java 业务逻辑层) 
* @author (作者)  
* @date 2017年8月2日 下午8:46:36 
* @version V1.0 
*/
public class NewsService {
	//全局变量
	private IDAONews dao;//接口部分约束 不受dao层约束
	//构造函数
	public NewsService() {
		dao = new NewsDAO();
	}
	//构造函数
	public NewsService(IDAONews idaoNews) {
		dao = idaoNews;
	}
	
	public List<News> getAllData(){
		return dao.getAllData();
	}
	public boolean add(String title, String tags){
		return dao.add(title, tags);
	}
	public boolean delete(int id){
		return dao.delete(id);
	}
	public boolean update(int id, String title){
		return dao.update(id, title);
	}
	public News GetNewsDataById(int  id){
		return dao.GetNewsDataById(id);
	}/**分页
	*/
	public List<News> GetAllDataPaging(int pageIndex, int pageSize){
	return dao.GetAllDataPaging(pageIndex, pageSize);	
	}
	 public int GetAllCount() {
		return dao.GetAllCount();
	}
}
