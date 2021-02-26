package com.hype.stockz.dao;

import java.util.List;
import com.hype.stockz.model.User;

public interface UserDAO 
	{
		public boolean addUser(User User);
		public boolean saveUser(User User);
		public boolean deleteUser(User User);
		public boolean updateUser(User User);
		public User getUserById(int id);
		public List<User> findAll();
	}
