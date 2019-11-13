package com.mapper;

import java.util.ArrayList;

import com.vo.PDetail;


public interface PDetailMapper {
	public void insertPD(PDetail obj);
	public void deletePD(int obj);
	public void updatePD(PDetail obj);
	public PDetail selectPD(int obj);
	public ArrayList<PDetail> selectallPD();
	
}
