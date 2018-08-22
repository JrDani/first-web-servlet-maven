package br.com.fabricaon.model;

public class User {
	private Long id =0l;
	private String name;
	private String username;
	private String password;
	
	public User(String name, String username, String password) {	
		this.name = name;
		this.username = username;
		this.password = password;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
	
	public long getId() {
		return id;
	}
}
