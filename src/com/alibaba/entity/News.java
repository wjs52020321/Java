package com.alibaba.entity;

import java.util.Date;

//ʵ���࣬�����ݿ�Խ�
public class News {
	private int id;
	private String title;
	private String content;
	private String tags;
	private int viewTimes;
	private Date createDate;
	
	/**  
	* @Title:  
	* @Description: TODO  
	* @param     ���   
	*/
	public News() {
		super();
	}
	/**  
	* @Title:  
	* @Description: TODO  
	* @param @param id
	* @param @param title
	* @param @param content
	* @param @param tages
	* @param @param viewTimes
	* @param @param createDate    ���   
	*/
	//�������ɹ��캯�� alt + Shift + s
	public News(int id, String title, String content, String tags, int viewTimes, Date createDate) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.tags = tags;
		this.viewTimes = viewTimes;
		this.createDate = createDate;
	}
	/** 
	* @return id 
	*/
	public int getId() {
		return id;
	}
	/** 
	* @param id Ҫ���õ� id 
	*/
	public void setId(int id) {
		this.id = id;
	}
	/** 
	* @return title 
	*/
	public String getTitle() {
		return title;
	}
	/** 
	* @param title Ҫ���õ� title 
	*/
	public void setTitle(String title) {
		this.title = title;
	}
	/** 
	* @return content 
	*/
	public String getContent() {
		return content;
	}
	/** 
	* @param content Ҫ���õ� content 
	*/
	public void setContent(String content) {
		this.content = content;
	}
	/** 
	* @return tags 
	*/
	public String getTags() {
		return tags;
	}
	/** 
	* @param tags Ҫ���õ� tags 
	*/
	public void setTags(String tags) {
		this.tags = tags;
	}
	/** 
	* @return viewTimes 
	*/
	public int getViewTimes() {
		return viewTimes;
	}
	/** 
	* @param viewTimes Ҫ���õ� viewTimes 
	*/
	public void setViewTimes(int viewTimes) {
		this.viewTimes = viewTimes;
	}
	/** 
	* @return createDate 
	*/
	public Date getCreateDate() {
		return createDate;
	}
	/** 
	* @param createDate Ҫ���õ� createDate 
	*/
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
}

