package com.alibaba.service;

import java.util.List;

import com.alibaba.dao.AlibabaDAO;
import com.alibaba.entity.Employee;
import com.alibaba.idao.IDAOEmployee;

/** 
* @ClassName: AlibabaService 
* @Description: TODO(java 业务逻辑层) 
* @author (作者)  
* @date 2017年8月2日 下午8:46:36 
* @version V1.0 
*/
public class AlibabaService {
	//全局变量
	private IDAOEmployee dao;
	//构造函数
	public AlibabaService() {
		dao = new AlibabaDAO();
	}
	public AlibabaService(IDAOEmployee idaoEmployee) {
		dao = idaoEmployee;
	}
	
	public List<Employee> getAllData(){
		return dao.getAllData();
	}
	public boolean add(String name, String title){
		return dao.add(name, title);
	}
	public boolean delete(int id){
		return dao.delete(id);
	}
	public boolean update(int id, String name){
		return dao.update(id, name);
	}
	public Employee GetEmployeeDataById(int  id){
		return dao.GetEmployeeDataById(id);
	}
	public int GetAllCount(){
       return dao.GetAllCount();	
	}
	public List<Employee> GetAllDataPaging(int pageIndex, int pageSize) {
		return dao.GetAllDataPaging(pageIndex, pageSize);
	}
	
}
