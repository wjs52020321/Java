package com.alibaba.entity;

//ʵ���࣬�����ݿ�Խ�
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
	* @param @param age    ���   
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
	* @param id Ҫ���õ� id 
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
	* @param name Ҫ���õ� name 
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
	* @param title Ҫ���õ� title 
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
	* @param age Ҫ���õ� age 
	*/
	public void setAge(int age) {
		this.age = age;
	}
	/**  
	* @Title:  
	* @Description: TODO  
	* @param     ���   
	*/
	public Employee() {
		super();
	}
	
}	
	