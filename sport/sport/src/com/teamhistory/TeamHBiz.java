package com.teamhistory;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.TeamH;

@Service("thbiz")
public class TeamHBiz implements Biz<Integer, TeamH> {

	@Resource(name = "thdao")
	Dao<Integer, TeamH> dao;
	
	@Override
	public void register(TeamH v) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modify(TeamH v) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Integer k) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public TeamH get(Integer k) throws Exception {
		return dao.select(k);
	}

	@Override
	public ArrayList<TeamH> get() throws Exception {
		return dao.select();
	}


}
