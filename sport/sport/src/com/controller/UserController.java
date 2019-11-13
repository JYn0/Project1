package com.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.User;

@Controller
public class UserController {

	@Resource(name="ubiz")
	Biz<String,User> biz;
	
	@RequestMapping("/login.mc")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping("/loginimpl.mc")
	public ModelAndView loginimpl(ModelAndView mv, HttpServletRequest request, HttpSession session) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		try {
			User dbuser = biz.get(id);
			if (pwd.equals(dbuser.getPwd())) {
				session.setAttribute("loginuser", dbuser);
				mv.setViewName("main");
			}else {
				mv.setViewName("main");
			}
		} catch (Exception e) {
			mv.setViewName("main");
			e.printStackTrace();
		}
		
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/logout.mc")
	public ModelAndView logout(ModelAndView mv, HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/uregister.mc")
	public ModelAndView uregister() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("uregister");
		return mv;
	}
	
	@RequestMapping("/uregisterimpl.mc")
	public ModelAndView useraddimpl(ModelAndView mv, User user) {
		try {
			biz.register(user);
			mv.setViewName("login");
		} catch (Exception e) {
			e.printStackTrace();
			mv.setViewName("uregister");
		}
		return mv;
	}
	
	@RequestMapping("/userdetail.mc")
	public ModelAndView udetail(
			ModelAndView mv,String id) {
		User user = null;
		try {
			user = biz.get(id);
			mv.addObject("userdetail", user);		
			mv.addObject("center", "user/detail");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/userupdateimpl.mc")
	public String userudpateimpl(User user) {
		try {
			biz.modify(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:userdetail.mc?id="+user.getId();
	}
	
	@RequestMapping("/userupdate.mc")
	public ModelAndView uudpate(
			ModelAndView mv,String id) {
		User user = null;
		try {
			user = biz.get(id);
			mv.addObject("userupdate", user);		
			mv.addObject("center", "user/update");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/userdelete.mc")
	public String udel(ModelAndView mv,String id) {
		
		try {
			biz.remove(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:userlist.mc";
	}
		
	
	@RequestMapping("/userlist.mc")
	public ModelAndView ulist() {
		ModelAndView mv = new ModelAndView();
		ArrayList<User> list = null;
		
		try {
			list = biz.get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("userlist", list);		
		mv.addObject("center", "user/list");
		mv.setViewName("main");
		return mv;
	}
	
}

