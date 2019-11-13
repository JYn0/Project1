package com.vo;

import org.springframework.web.multipart.MultipartFile;

//조인했을때 사용하기 위해서 
public class PDetail {

	public int id;
	public String team;
	public double era;
	public int game;
	public double avg;
	public int hr;
	public int year;
	public double wpct;
	public int backnum;

	MultipartFile mf;

	public PDetail() {
	}

	public PDetail(int id, String team, double era, int game, double avg, int hr, int year, double wpct, int backnum,
			MultipartFile mf) {
		this.id = id;
		this.team = team;
		this.era = era;
		this.game = game;
		this.avg = avg;
		this.hr = hr;
		this.year = year;
		this.wpct = wpct;
		this.backnum = backnum;
		this.mf = mf;
	}

	public PDetail(int id, String team, double era, int game, double avg, int hr, int year, double wpct, int backnum) {

		this.id = id;
		this.team = team;
		this.era = era;
		this.game = game;
		this.avg = avg;
		this.hr = hr;
		this.year = year;
		this.wpct = wpct;
		this.backnum = backnum;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public double getEra() {
		return era;
	}

	public void setEra(double era) {
		this.era = era;
	}

	public int getGame() {
		return game;
	}

	public void setGame(int game) {
		this.game = game;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

	public int getHr() {
		return hr;
	}

	public void setHr(int hr) {
		this.hr = hr;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public double getWpct() {
		return wpct;
	}

	public void setWpct(double wpct) {
		this.wpct = wpct;
	}

	public int getBacknum() {
		return backnum;
	}

	public void setBacknum(int backnum) {
		this.backnum = backnum;
	}

	public MultipartFile getMf() {
		return mf;
	}

	public void setMf(MultipartFile mf) {
		this.mf = mf;
	}

	@Override
	public String toString() {
		return "PDetail [id=" + id + ", team=" + team + ", era=" + era + ", game=" + game + ", avg=" + avg + ", hr="
				+ hr + ", year=" + year + ", wpct=" + wpct + ", backnum=" + backnum + ", mf=" + mf + "]";
	}

}
