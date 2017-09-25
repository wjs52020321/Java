package com.alibaba.idao;

import java.util.List;
import com.alibaba.entity.News;

//²¿·ÖÔ¼Êø
public interface IDAONews {
	public List<News> getAllData();
	public boolean add(String title, String tags);
	public boolean delete(int id);
	public boolean update(int id, String title);
	public List<News> GetAllDataPaging(int pageIndex, int pageSize);
	 public News GetNewsDataById(int  id);
	 public int GetAllCount();

}
