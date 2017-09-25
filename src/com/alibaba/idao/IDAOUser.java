package com.alibaba.idao;

import com.alibaba.entity.User;

public interface IDAOUser {

	public boolean update(int id, String imageurl);
	public User GetUserDataById(int  id);
}
