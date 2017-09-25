package com.alibaba.entity;

import java.util.Date;

//ʵ���࣬�����ݿ�Խ�
public class Jobs {
	private int id;
	private String title;
	private String content;
	private String tags;
	private Date createDate;
	private Date endDate;
	private int userId;
	private String hrEmail;
	private String workAddress;
	private int viewTimes;
	private int state;
	/**  
	* @Title:  
	* @Description: TODO  
	* @param     ���   
	*/
	public Jobs() {
		super();
	}
	/**  
	* @Title:  
	* @Description: TODO  
	* @param @param id
	* @param @param title
	* @param @param content
	* @param @param tags
	* @param @param createDate
	* @param @param endDate
	* @param @param userId
	* @param @param hrEmail
	* @param @param workAddress
	* @param @param viewTimes
	* @param @param state    ���   
	*/
	public Jobs(int id, String title, String content, String tags, Date createDate, Date endDate, int userId,
			String hrEmail, String workAddress, int viewTimes, int state) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.tags = tags;
		this.createDate = createDate;
		this.endDate = endDate;
		this.userId = userId;
		this.hrEmail = hrEmail;
		this.workAddress = workAddress;
		this.viewTimes = viewTimes;
		this.state = state;
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
	/** 
	* @return endDate 
	*/
	public Date getEndDate() {
		return endDate;
	}
	/** 
	* @param endDate Ҫ���õ� endDate 
	*/
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	/** 
	* @return userId 
	*/
	public int getUserId() {
		return userId;
	}
	/** 
	* @param userId Ҫ���õ� userId 
	*/
	public void setUserId(int userId) {
		this.userId = userId;
	}
	/** 
	* @return hrEmail 
	*/
	public String getHrEmail() {
		return hrEmail;
	}
	/** 
	* @param hrEmail Ҫ���õ� hrEmail 
	*/
	public void setHrEmail(String hrEmail) {
		this.hrEmail = hrEmail;
	}
	/** 
	* @return workAddress 
	*/
	public String getWorkAddress() {
		return workAddress;
	}
	/** 
	* @param workAddress Ҫ���õ� workAddress 
	*/
	public void setWorkAddress(String workAddress) {
		this.workAddress = workAddress;
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
	* @return state 
	*/
	public int getState() {
		return state;
	}
	/** 
	* @param state Ҫ���õ� state 
	*/
	public void setState(int state) {
		this.state = state;
	}	
}

