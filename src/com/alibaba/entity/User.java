package com.alibaba.entity;

import java.text.DecimalFormat;
import java.util.Date;

public class User {

	private int id;
	private String name;
	private String password;
	private String email;
	private String qq;
	private int  age;
	private String imageurl;
	private String mobile;
	private Date birthday;
	private String address;
	private int  gebder;
	private Date createdate;
	private String introduction;
	private DecimalFormat money;
	private int  marriage;
	private int state;
	
	public int getId() {
		return id;
	}
	public User(int id, String name, String password, String email, String qq, int age, String imageurl, String mobile,
			Date birthday, String address, int gebder, Date createdate, String introduction, DecimalFormat money,
			int marriage, int state) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.qq = qq;
		this.age = age;
		this.imageurl = imageurl;
		this.mobile = mobile;
		this.birthday = birthday;
		this.address = address;
		this.gebder = gebder;
		this.createdate = createdate;
		this.introduction = introduction;
		this.money = money;
		this.marriage = marriage;
		this.state = state;
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getGebder() {
		return gebder;
	}
	public void setGebder(int gebder) {
		this.gebder = gebder;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public DecimalFormat getMoney() {
		return money;
	}
	public void setMoney(DecimalFormat money) {
		this.money = money;
	}
	public int getMarriage() {
		return marriage;
	}
	public void setMarriage(int marriage) {
		this.marriage = marriage;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}
