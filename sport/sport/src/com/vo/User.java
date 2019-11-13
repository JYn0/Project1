package com.vo;

public class User {
	private String id;
	private String pwd;
	private String name;
	private int ulevel;
	
	
	public User() {
	}
	
//	public User(String id, String pwd, String name) {
//		this.id = id;
//		this.pwd = pwd;
//		this.name = name;
//	}

	public User(String id, String pwd, String name, int ulevel) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.ulevel = ulevel;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getUlevel() {
		return ulevel;
	}
	public void setUlevel(int ulevel) {
		this.ulevel = ulevel;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", pwd=" + pwd + ", name=" + name + ", ulevel=" + ulevel + "]";
	}
	
}
