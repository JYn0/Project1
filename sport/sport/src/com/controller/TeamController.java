package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Team;
import com.vo.TeamH;

@Controller
public class TeamController {

	@Resource(name = "tbiz")
	Biz<Integer, Team> biz;

	@RequestMapping("allteam.mc")
	public ModelAndView allteam() {
		ModelAndView mv = new ModelAndView();
		ArrayList<Team> list = null;
		try {
			list = biz.get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("tlist", list);
		mv.setViewName("player");
		return mv;
	}
	
	
	@Resource(name = "thbiz")
	Biz<Integer, TeamH> thbiz;

	@RequestMapping("teamgrade.mc")
	public ModelAndView teamgrade() {
		ModelAndView mv = new ModelAndView();
		ArrayList<TeamH> list = null;
		try {
			list = thbiz.get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("thlist", list);
		mv.setViewName("stats");
		return mv;
	}
	
//	@RequestMapping("/pdata.mc")
//	@ResponseBody
//	public void pdata(HttpServletResponse rep) {
//		JSONArray ja = new JSONArray();
//		JSONArray ja2 = new JSONArray();
//		JSONArray ja3 = new JSONArray();
//		ArrayList<TeamH> rlist = null;
//		try {
//			rlist = thbiz.get();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		System.out.println(rlist);
//
//		for (TeamH r : rlist) {
//			JSONObject jo = new JSONObject();
//			
//			ja.add(r.getLgame());
//			ja2.add(r.getWgame());
//			ja3.add(r.getTgame());
//			
//		}
//	
//		PrintWriter out = null;
//		try {
//			rep.setCharacterEncoding("EUC-KR");
//			rep.setContentType("text/json;charset=UTF-8");
//			out = rep.getWriter();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		System.out.println(ja);
//		System.out.println(ja2);
//		System.out.println(ja3);
//		out.print(ja.toJSONString());
//		out.print(ja2.toJSONString());
//		out.print(ja3.toJSONString());
//		out.close();
//	}

}
