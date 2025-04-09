package com.cjc.store.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_data")
public class User {

	@Id
	private int uid;
	private String username;
	private String password;
	private String name;
	private long mobile;
	private String email;
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int uid, String username, String password, String name, long mobile, String email) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.mobile = mobile;
		this.email = email;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", name=" + name + ", mobile="
				+ mobile + ", email=" + email + "]";
	}
	
	
}
