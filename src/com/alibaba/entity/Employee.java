package com.alibaba.entity;

//实体类，和数据库对接
public class Employee {
	private int id;
	private String name;
	private String title;
	private int age;
	/**  
	* @Title:  
	* @Description: TODO  
	* @param @param id
	* @param @param name
	* @param @param title
	* @param @param age    入参   
	*/
	public Employee(int id, String name, String title, int age) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.age = age;
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
	* @return name 
	*/
	public String getName() {
		return name;
	}
	/** 
	* @param name 要设置的 name 
	*/
	public void setName(String name) {
		this.name = name;
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
	* @return age 
	*/
	public int getAge() {
		return age;
	}
	/** 
	* @param age 要设置的 age 
	*/
	public void setAge(int age) {
		this.age = age;
	}
	/**  
	* @Title:  
	* @Description: TODO  
	* @param     入参   
	*/
	public Employee() {
		super();
	}
	
}	
	