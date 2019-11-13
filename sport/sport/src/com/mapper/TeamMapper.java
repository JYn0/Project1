package com.mapper;

import java.util.ArrayList;

import com.vo.Team;

public interface TeamMapper {
	public void insert(Team obj);
	public void delete(int obj);
	public void update(Team obj);
	public Team select(int obj);
	public ArrayList<Team> selectall();
}
