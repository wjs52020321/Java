package com.alibaba.entity;

import java.util.Date;

//实体类，和数据库对接
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
	* @param     入参   
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
	* @param @param createDate    入参   
	*/
	//快速生成构造函数 alt + Shift + s
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
	* @param id 要设置的 id 
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
	* @param title 要设置的 title 
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
	* @param content 要设置的 content 
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
	* @param tags 要设置的 tags 
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
	* @param viewTimes 要设置的 viewTimes 
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
	* @param createDate 要设置的 createDate 
	*/
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
}

