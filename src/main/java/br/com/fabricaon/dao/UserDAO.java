package br.com.fabricaon.dao;

import java.util.HashMap;
import java.util.Map;

import br.com.fabricaon.model.User;

public class UserDAO {
	
	private final static Map<Long, User> USERS = new HashMap<>();
	
	static {
		setIdAddUser(new User("Daniel", "12345", "pass123"));
	}
	
	public void addUser(User user) {
		setIdAddUser(user);
	}
	
	private static void setIdAddUser(User user) {
		Long id = USERS.size()+1l;
		user.setId(id);
		USERS.put(id, user);
	}
	
	public User login(String username, String pass) {
		for(User user: USERS.values()) {
			if(user.getUsername().equals(username)  && user.getPassword().equals(pass)) {
				return user;
			}
		}
		return null;
	}
}
