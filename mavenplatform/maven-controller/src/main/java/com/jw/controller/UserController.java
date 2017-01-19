package com.jw.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {



	//webUploader
	@RequestMapping("user/goWebUploader")
	public String webUploader(HttpServletRequest request,Model model){
		System.out.println(request.getRealPath("/"));
		return "webUpload";
	}
	

	
	@RequestMapping("/exit")
	public String exit(HttpSession session){
		session.removeAttribute("User");
		return "forward:./index.jsp";
	}
	
	@RequestMapping("/goPjax")
	public String goPjax(HttpSession session){
		return "forward:./testPjax.jsp";
	}
	
	@RequestMapping("/load.do")
	@ResponseBody
	public String load(HttpSession session){
		int a= (int)(Math.random()*10);
		return "<a  >第"+a+"页</a>";
	}
	
	@RequestMapping("/testMaby.do")
	@ResponseBody
	public String testMaby(HttpSession session){
		MyThread t = new MyThread();
		MyThread t2 = new MyThread();
		t.start();
		t2.start();
		
		
		return "success";
	}
	class MyThread extends Thread{
	    public void run(){
	    System.out.println("Mythread 线程");
	}
	}
}
