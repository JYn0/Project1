package com.vo;

import org.springframework.web.multipart.MultipartFile;

public class Player {

	public int id;
	public String pic;
	public String name;
	public String position;
	public String team;
	
	// File setting
	MultipartFile mf;

	public Player() {
		
	}

	
	public Player(int id, String pic, String name, String position, String team, MultipartFile mf) {
		this.id = id;
		this.pic = pic;
		this.name = name;
		this.position = position;
		this.team = team;
		this.mf = mf;
	}


	public Player(int id, String pic, String name, String position, MultipartFile mf) {
		this.id = id;
		this.pic = pic;
		this.name = name;
		this.position = position;
		this.mf = mf;
	}
	
	public Player(int id, String pic, String name, String position, String team) {
		super();
		this.id = id;
		this.pic = pic;
		this.name = name;
		this.position = position;
		this.team = team;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}


	public MultipartFile getMf() {
		return mf;
	}

	public void setMf(MultipartFile mf) {
		this.mf = mf;
	}


	public String getTeam() {
		return team;
	}


	public void setTeam(String team) {
		this.team = team;
	}


	@Override
	public String toString() {
		return "Player [id=" + id + ", pic=" + pic + ", name=" + name + ", position=" + position + ", team=" + team
				+ ", mf=" + mf + "]";
	}


	
}
