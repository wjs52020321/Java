package com.alibaba.idao;

import java.util.List;
import com.alibaba.entity.Jobs;

//²¿·ÖÔ¼Êø
public interface IDAOJobs {
	public List<Jobs> getAllData();
	public boolean add(String title, String tags);
	public boolean delete(int id);
	public boolean update(int id, String title);
	public List<Jobs> GetAllDataPaging(int pageIndex, int pageSize);
	public int GetAllCount();
	 public Jobs GetJobsDataById(int  id);
}
