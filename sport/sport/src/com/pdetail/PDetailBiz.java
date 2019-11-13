package com.pdetail;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.PDetail;

@Service("pdbiz")
public class PDetailBiz implements Biz<Integer, PDetail> {

	@Resource(name="pddao")
	Dao<Integer, PDetail> dao;
	
	@Override
	public void register(PDetail v) throws Exception {
		dao.insert(v);
	}
	@Override
	public void modify(PDetail v) throws Exception {
		dao.update(v);
	}
	@Override
	public void remove(Integer k) throws Exception {
		dao.delete(k);	
	}
	@Override
	public PDetail get(Integer k) throws Exception {
		return dao.select(k);
	}
	@Override
	public ArrayList<PDetail> get() throws Exception {
		return dao.select();
	}
}
	

