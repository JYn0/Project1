package com.vo;

public class TeamH {
	private int year;
	private String team;
	private int grade;
	private int id;
	private int wgame;
	private int lgame;
	private int tgame;
	
	
	public TeamH() {
	}


	public TeamH(int year, String team, int grade, int id, int wgame, int lgame, int tgame) {
		this.year = year;
		this.team = team;
		this.grade = grade;
		this.id = id;
		this.wgame = wgame;
		this.lgame = lgame;
		this.tgame = tgame;
	}


	public int getYear() {
		return year;
	}


	public void setYear(int year) {
		this.year = year;
	}


	public String getTeam() {
		return team;
	}


	public void setTeam(String team) {
		this.team = team;
	}


	public int getGrade() {
		return grade;
	}


	public void setGrade(int grade) {
		this.grade = grade;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getWgame() {
		return wgame;
	}


	public void setWgame(int wgame) {
		this.wgame = wgame;
	}


	public int getLgame() {
		return lgame;
	}


	public void setLgame(int lgame) {
		this.lgame = lgame;
	}


	public int getTgame() {
		return tgame;
	}


	public void setTgame(int tgame) {
		this.tgame = tgame;
	}


	@Override
	public String toString() {
		return "TeamH [year=" + year + ", team=" + team + ", grade=" + grade + ", "
				+ "id=" + id + ", wgame=" + wgame + ", lgame=" + lgame + ","
						+ " tgame=" + tgame + "]";
	}
	
}
