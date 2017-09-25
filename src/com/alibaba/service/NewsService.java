 package com.alibaba.service;

import java.util.List;

import com.alibaba.dao.NewsDAO;
import com.alibaba.entity.News;
import com.alibaba.idao.IDAONews;


/** 
* @ClassName: AlibabaService 
* @Description: TODO(java ҵ���߼���) 
* @author (����)  
* @date 2017��8��2�� ����8:46:36 
* @version V1.0 
*/
public class NewsService {
	//ȫ�ֱ���
	private IDAONews dao;//�ӿڲ���Լ�� ����dao��Լ��
	//���캯��
	public NewsService() {
		dao = new NewsDAO();
	}
	//���캯��
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
	}/**��ҳ
	*/
	public List<News> GetAllDataPaging(int pageIndex, int pageSize){
	return dao.GetAllDataPaging(pageIndex, pageSize);	
	}
	 public int GetAllCount() {
		return dao.GetAllCount();
	}
}
