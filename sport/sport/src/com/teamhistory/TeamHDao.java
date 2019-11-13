package com.teamhistory;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.TeamHMapper;
import com.vo.TeamH;


@Repository("thdao")
public class TeamHDao implements Dao<Integer, TeamH> {

	
	@Autowired
	TeamHMapper thm;
	
	@Override
	public void insert(TeamH v) throws Exception {
		thm.insert(v);
	}

	@Override
	public void update(TeamH v) throws Exception {
		thm.update(v);
	}

	@Override
	public void delete(Integer k) throws Exception {
		thm.delete(k);
	}

	@Override
	public TeamH select(Integer k) throws Exception {
		return thm.select(k);
	}

	@Override
	public ArrayList<TeamH> select() throws Exception {
		return thm.selectall();
	}

	
}
