package com.pdetail;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.frame.Dao;
import com.mapper.PDetailMapper;
import com.vo.PDetail;

@Repository("pddao")
public class PDetailDao implements Dao<Integer, PDetail> {

	@Autowired
	PDetailMapper pdm;

	@Override
	public void insert(PDetail v) throws Exception {
		pdm.insertPD(v);
		
	}

	@Override
	public void update(PDetail v) throws Exception {
		
		pdm.updatePD(v);
	
	}

	@Override
	public void delete(Integer k) throws Exception {
		pdm.deletePD(k);

	}

	@Override
	public PDetail select(Integer k) throws Exception {
		return pdm.selectPD(k);
	}

	@Override
	public ArrayList<PDetail> select() throws Exception {
		return pdm.selectallPD();
	}

}