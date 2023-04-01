package com.codewithme.abc.model;

public class Admin {
	
	private int adminId;
	private String name;
	private int contact;
	private String userName;
	private String password;
		
	public Admin(int adminId, String name, int contact, String userName, String password) {
		super();
		this.adminId = adminId;
		this.name = name;
		this.contact = contact;
		this.userName = userName;
		this.password = password;
	}

	public Admin() {}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getContact() {
		return contact;
	}

	public void setContact(int contact) {
		this.contact = contact;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
