package com.alibaba.service;


import com.alibaba.entity.User;

import com.alibaba.idao.IDAOUser;


public class UserService {
	private IDAOUser dao;
	public User GetUserDataById(int  id){
		return dao.GetUserDataById(id);
	
	}
	public boolean update(int id, String imageurl) {
		return dao.update(id, imageurl);
	}

}
