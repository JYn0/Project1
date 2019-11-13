package com.mapper;

import java.util.ArrayList;

import com.vo.Player;

public interface PlayerMapper {
	public void insert(Player obj);
	public void delete(int obj);
	public void update(Player obj);
	public Player select(int obj);
	public ArrayList<Player> selectall();
}
