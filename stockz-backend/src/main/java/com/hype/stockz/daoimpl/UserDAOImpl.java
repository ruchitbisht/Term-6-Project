package com.hype.stockz.daoimpl;


import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hype.stockz.dao.UserDAO;
import com.hype.stockz.model.User;

@Repository(value = "userDAO")
@Transactional
public class UserDAOImpl implements UserDAO
{
	@Autowired
	private SessionFactory SessionFactory;

	@Override
	public boolean saveUser(User user) {
		user.setRole("USER");
		SessionFactory.getCurrentSession().save(user);
		
		return true;
	}

	@Override
	public boolean addUser(User User) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(User User) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateUser(User User) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
}