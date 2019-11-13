package com.player;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.mapper.PlayerMapper;
import com.vo.Player;


@Repository("pldao")
public class PlayerDao implements Dao<Integer, Player> {

	@Autowired
	PlayerMapper plm;
	@Override
	public void insert(Player v) throws Exception {
		plm.insert(v);	
	}
	@Override
	public void update(Player v) throws Exception {
		plm.update(v);	
	}
	@Override
	public void delete(Integer k) throws Exception {
		plm.delete(k);	
	}
	@Override
	public Player select(Integer k) throws Exception {
		return plm.select(k);
	}
	@Override
	public ArrayList<Player> select() throws Exception {
		return plm.selectall();
	}
}