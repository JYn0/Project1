package com.team;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.TeamMapper;
import com.vo.Team;


@Repository("tdao")
public class TeamDao implements Dao<Integer, Team> {

	
	@Autowired
	TeamMapper tm;
	
	@Override
	public void insert(Team v) throws Exception {
		tm.insert(v);
	}

	@Override
	public void update(Team v) throws Exception {
		tm.update(v);
	}

	@Override
	public void delete(Integer k) throws Exception {
		tm.delete(k);
	}

	@Override
	public Team select(Integer k) throws Exception {
		return tm.select(k);
	}

	@Override
	public ArrayList<Team> select() throws Exception {
		return tm.selectall();
	}

	
}
