package com.mapper;

import java.util.ArrayList;

import com.vo.TeamH;

public interface TeamHMapper {
	public void insert(TeamH obj);
	public void delete(int obj);
	public void update(TeamH obj);
	public TeamH select(int obj);
	public ArrayList<TeamH> selectall();
}
