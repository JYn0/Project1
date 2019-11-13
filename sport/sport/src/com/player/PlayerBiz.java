package com.player;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.Player;

@Service("plbiz")
public class PlayerBiz implements Biz<Integer, Player> {

	@Resource(name = "pldao")
	Dao<Integer, Player> dao;

	@Override
	public ArrayList<Player> get() throws Exception {
		return dao.select();
	}
	@Override
	public void register(Player v) throws Exception {
		dao.insert(v);	
	}
	@Override
	public void modify(Player v) throws Exception {
		dao.update(v);	
	}

	@Override
	public void remove(Integer k) throws Exception {
		dao.delete(k);
	}
	@Override
	public Player get(Integer k) throws Exception {
		return dao.select(k);
	}
}
	

