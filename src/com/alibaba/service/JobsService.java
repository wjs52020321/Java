package com.alibaba.service;

import java.util.List;

import com.alibaba.dao.JobsDAO;
import com.alibaba.entity.Jobs;
import com.alibaba.idao.IDAOJobs;

/**
 * @ClassName: AlibabaService
 * @Description: TODO(java 业务逻辑层)
 * @author (作者)
 * @date 2017年8月2日 下午8:46:36
 * @version V1.0
 */
public class JobsService {
	// 全局变量
	private IDAOJobs dao;

	// 构造函数
	public JobsService() {
		dao = new JobsDAO();
	}
	public JobsService(IDAOJobs idaoJobs) {
		dao = idaoJobs;
	}
	
	public List<Jobs> getAllData() {
		return dao.getAllData();
	}

	public boolean add(String title, String tags) {
		return dao.add(title, tags);
	}

	public boolean delete(int id) {
		return dao.delete(id);
	}

	public boolean update(int id, String title) {
		return dao.update(id, title);
	}
	 public Jobs GetJobsDataById(int  id){
		 return dao.GetJobsDataById(id);
	 }
	 public int GetAllCount(){
		 return dao.GetAllCount();
	 }
	 public List<Jobs> GetAllDataPaging(int pageIndex, int pageSize){
		 return dao.GetAllDataPaging(pageIndex, pageSize);
	 }
}
