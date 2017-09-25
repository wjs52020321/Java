package com.alibaba.idao;

import java.util.List;
import com.alibaba.entity.Employee;

//²¿·ÖÔ¼Êø
public interface IDAOEmployee {
	public List<Employee> getAllData();
	public boolean add(String name, String title);
	public boolean delete(int id);
	public boolean update(int id, String title);
	public List<Employee> GetAllDataPaging(int pageIndex, int pageSize);
	 public int GetAllCount();
	 public Employee GetEmployeeDataById(int  id);
}
