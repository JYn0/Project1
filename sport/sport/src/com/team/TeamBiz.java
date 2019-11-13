package com.team;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Team;

@Service("tbiz")
public class TeamBiz implements Biz<Integer, Team> {

	@Resource(name = "tdao")
	Dao<Integer, Team> dao;
	
	@Override
	public void register(Team v) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modify(Team v) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Integer k) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Team get(Integer k) throws Exception {
		return dao.select(k);
	}

	@Override
	public ArrayList<Team> get() throws Exception {
		return dao.select();
	}


}
