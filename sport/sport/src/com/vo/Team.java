package com.vo;

public class Team {
	private int id;
	private String tname;
	private String hsta;
	private String director;
	private int vic;
	
	
	public Team() {
		
	}

	public Team(int id, String tname, String hsta, String director, int vic) {
		super();
		this.id = id;
		this.tname = tname;
		this.hsta = hsta;
		this.director = director;
		this.vic = vic;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTname() {
		return tname;
	}


	public void setTname(String tname) {
		this.tname = tname;
	}


	public String getHsta() {
		return hsta;
	}


	public void setHsta(String hsta) {
		this.hsta = hsta;
	}


	public String getDirector() {
		return director;
	}


	public void setDirector(String director) {
		this.director = director;
	}


	public int getVic() {
		return vic;
	}


	public void setVic(int vic) {
		this.vic = vic;
	}


	@Override
	public String toString() {
		return "Team [id=" + id + ", tname=" + tname + ", hsta=" + hsta + ", director=" + director + ", vic=" + vic
				+ "]";
	}
	
	
}
