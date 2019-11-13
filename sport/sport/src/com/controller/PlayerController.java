package com.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.PDetail;
import com.vo.Player;
import com.vo.User;

@Controller
public class PlayerController {

	@Resource(name = "plbiz")
	Biz<Integer, Player> biz;

	@Resource(name = "pdbiz")
	Biz<Integer, PDetail> pdbiz;
	
	@Resource(name = "ubiz")
	Biz<Integer, User> ubiz;

	@RequestMapping("playerlist.mc")
	public ModelAndView playerlist(String id) {
		String uid = id;
		ModelAndView mv = new ModelAndView();
		if (uid.equals("1")) {
			mv.setViewName("t_wiz-inform");
		} else if (uid.equals("2")) {
			mv.setViewName("t_tigers-inform");
		} else if (uid.equals("3")) {
			mv.setViewName("t_dinos-inform");
		} else if (uid.equals("4")) {
			mv.setViewName("t_wyverns-inform");
		} else if (uid.equals("5")) {
			mv.setViewName("t_lions-inform");
		}else if (uid.equals("6")) {
			mv.setViewName("t_bears-inform");
		}else if (uid.equals("7")) {
			mv.setViewName("t_twins-inform");
		}else if (uid.equals("8")) {
			mv.setViewName("t_heroes-inform");
		}else if (uid.equals("9")) {
			mv.setViewName("t_eagles-inform");
		}else if (uid.equals("10")) {
			mv.setViewName("t_giants-inform");
		}
		ArrayList<Player> list = null;
		ArrayList<PDetail> pdlist = null;
		try {
			list = biz.get();
			pdlist = pdbiz.get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mv.addObject("playerlist", list);
		mv.addObject("pdd", pdlist);
		return mv;
	}
	
	
	@RequestMapping("allplayerlist.mc")
	public ModelAndView allplayerlist() {
		ModelAndView mv = new ModelAndView();
		ArrayList<Player> list = null;
		try {
			list = biz.get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("playerlist", list);
		mv.setViewName("player");
		return mv;
	}

	@RequestMapping("playerdetail.mc")
	public ModelAndView playerdetail(ModelAndView mv, int id) {
		PDetail pd = null;
		Player p = null;
		try {
			p = biz.get(id);
			pd = pdbiz.get(id);
			mv.addObject("pd", pd);
			mv.addObject("p", p);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("ccenter", "playerdetail");
		mv.setViewName("player");
		return mv;
	}

	@RequestMapping("padd.mc")
	public ModelAndView padd() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("ccenter", "padd");
		mv.setViewName("player");
		return mv;
	}

	// add 디테일 구성하기
	@RequestMapping("paddimple.mc")
	public ModelAndView paddimple(ModelAndView mv, PDetail pd, Player p) {
		String pic = p.getMf().getOriginalFilename();
		int id = p.getId();
		p.setPic(pic);
		try {
			biz.register(p);
			Util.saveFile(p.getMf());
			pdbiz.register(pd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("playerdetail.mc?id=" + id);
		return mv;
	}

	@RequestMapping("pupdate.mc")
	public ModelAndView pupdate(ModelAndView mv, int id) {
		Player p = null;
		PDetail pd = null;
		try {
			p = biz.get(id);
			pd = pdbiz.get(id);
			mv.addObject("pup", p);
			mv.addObject("pdup", pd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("ccenter", "pupdate");
		mv.setViewName("player");
		return mv;
	}

	@RequestMapping("pupimpl.mc")
	public String pupimpl(PDetail pd, Player p) {
		
		try {
			if (p.getMf().getSize() != 0) {
				String pic = p.getMf().getOriginalFilename();
				p.setPic(pic);
				Util.saveFile(pd.getMf());
			}
			biz.modify(p);
			pdbiz.modify(pd);
		} catch (Exception e) {
			e.printStackTrace();
		}

		int id = p.getId();
		return "redirect:playerdetail.mc?id=" + id;
	}

	@RequestMapping("pdel.mc")
	public String pdel(ModelAndView mv, int id) {
		try {
			biz.remove(id);
			pdbiz.remove(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:allplayerlist.mc";
	}
}
