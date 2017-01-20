package com.jw.controller;

import com.alibaba.fastjson.JSON;
import com.jw.handler.EhCacheServiceHandler;
import com.jw.model.JsonData;
import com.jw.model.JsonMsg;
import com.jw.model.User;
import com.jw.persist.service.UserInfoService;
import com.jw.utils.AddressUtils;
import com.jw.utils.EncryptUtil;
import com.jw.utils.SendMail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

@Controller
public class UserController {
	@Resource
	private UserInfoService userInfoService;
	
	@Autowired
	private EhCacheServiceHandler ehCacheServiceHandler;

	private InputStream stream;

	@RequestMapping("user/showUser")
	public String toIndex(HttpServletRequest request,Model model){
	/*	int userId = Integer.parseInt(request.getParameter("id")); 
		User user = this.userService.getUserById(userId);
		ehCacheServiceHandler.putCache("myCache", 5);
		model.addAttribute("user", user);*/
		return "showUser";
	}
	
	@RequestMapping("user/getCache")
	public String getCache(Model model) {
		model.addAttribute("cache",ehCacheServiceHandler.getCache("myCache"));
		return "showCache";
	}
	
	@RequestMapping("user/getCache2")
	@ResponseBody
	public String getCache2(Model model) {
		String string;
		try {
			string = ehCacheServiceHandler.getCache("myCache").toString();
		} catch (Exception e) {
			string = "过期";
		}
		return string;
	}
	
	@RequestMapping("user/goUpload")
	public String goUpload(HttpServletRequest request,Model model){
		return "upload";
	}
	
	@RequestMapping("user/Upload")
	@ResponseBody
	public String Upload(HttpServletRequest request,Model model,String myid){
		MultipartHttpServletRequest multipartHttpServletRequest=(MultipartHttpServletRequest) request;
		Map<String, MultipartFile>fileMap=multipartHttpServletRequest.getFileMap();
		for (Map.Entry<String, MultipartFile>entity : fileMap.entrySet()) {
			System.out.println(entity.getValue().getOriginalFilename());
			try {
				 stream=entity.getValue().getInputStream();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			FileOutputStream fileOutputStrea;
			try {
				fileOutputStrea=new FileOutputStream(new File("D:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\show\\img\\"+entity.getValue().getOriginalFilename()));
			    byte byttfer[]=new byte[1024];
			    int c=-1;
			    while ((c=stream.read(byttfer))!=-1) {
						fileOutputStrea.write(byttfer,0,c);
				}
			    stream.close();
			    fileOutputStrea.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "1";
	}
	
	//webUploader
	@RequestMapping("user/goWebUploader")
	public String webUploader(HttpServletRequest request,Model model){
		System.out.println(request.getRealPath("/"));
		return "webUpload";
	}
	
	@RequestMapping("user/webUpload")
	@ResponseBody
	public String webUpload(HttpServletRequest request,Model model){
		MultipartHttpServletRequest multipartHttpServletRequest=(MultipartHttpServletRequest) request;
		Map<String, MultipartFile>fileMap=multipartHttpServletRequest.getFileMap();
		JsonMsg jsonMsg=new JsonMsg();
		for (Map.Entry<String, MultipartFile>entity : fileMap.entrySet()) {
			System.out.println(entity.getValue().getOriginalFilename());
			try {
				 stream=entity.getValue().getInputStream();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			FileOutputStream fileOutputStrea;
			try {
				fileOutputStrea=new FileOutputStream(new File("c://"+entity.getValue().getOriginalFilename()));
			    jsonMsg.setFilePath("c://"+entity.getValue().getOriginalFilename());
				jsonMsg.setFileName(entity.getValue().getOriginalFilename());
				jsonMsg.setMessage("1");
			    byte byttfer[]=new byte[1024];
			    int c=-1;
			    while ((c=stream.read(byttfer))!=-1) {
						fileOutputStrea.write(byttfer,0,c);
				}
			    stream.close();
			    fileOutputStrea.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return JSON.toJSONString(jsonMsg);
	}
	@RequestMapping("user/goHighChar")
	public String highchar(HttpServletRequest request,Model model){
		return "hightChar";
	}
	
	@RequestMapping("user/getData")
	public void getData(HttpServletRequest request,HttpServletResponse response,Model model){
		JsonData jsonData=new JsonData();
		List<List<Map<String, String>>>objects=new ArrayList<List<Map<String,String>>>();
		List<Map<String, String>>maps=new ArrayList<Map<String,String>>();
			Map<String, String>map=new HashMap<String, String>();
			Random random=new Random();
			map.put("aa", "Test"+String.valueOf(random.nextInt(10)));
			map.put("bb", String.valueOf(random.nextInt(10)));
			maps.add(map);
			
			Map<String, String>map2=new HashMap<String, String>();
			Random random2=new Random();
			map2.put("aa", "Test"+String.valueOf(random2.nextInt(10)));
			map2.put("bb", String.valueOf(random2.nextInt(10)));
			maps.add(map2);
			
			objects.add(maps);
		jsonData.setMaps(objects);
		jsonData.setMsg("200");
		try {
			response.getWriter().write(JSON.toJSONString(jsonData));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("user/goLayerUi")
	public String goLayerUi(HttpServletRequest request,Model model){
		User u= (User) request.getSession().getAttribute("User");
		if (u==null) {
			System.out.println("redirect:login.do not session");
			return "redirect:login.do";
		}
		return "layerUi";
	}
	
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request,Model model){
		Map<String, Object>map = userInfoService.loginCheck(user,request.getSession());
		String area="中国";
		String ip = userInfoService.getIpAddr(request);
		 try {
			area = AddressUtils.getAddress("ip="+ip, "utf-8");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		model.addAttribute("msg", map.get("msg"));
		if (map.get("result").equals("0")) {
			model.addAttribute("msg", area);
			return "forward:./index.jsp";
		}else {
			model.addAttribute("msg", map.get("msg"));
			return "forward:./login.jsp";
		}
	}
	
	@RequestMapping("/goRegister")
	public String goLogin(User user, HttpServletRequest request, Model model) {
		try {
			user.setId(EncryptUtil.sha(user.getUsername()));
			user.setPassword(EncryptUtil.sha(user.getPassword()));
			int a = userInfoService.insertUserInfo(user);
			if (a <= 0) {
				model.addAttribute("msg", "注册失败！");
				return "forward:./login.jsp";
			} else {
				request.getSession().setAttribute("User", user);
				model.addAttribute("msg", "注册成功！");
				SendMail.sendMail("350862217@163.com", "8355733zz",
						user.getEmail(), "成功注册！",
						"<a>html 元素</a>：<b>zztest</b>");
				return "forward:./login.jsp";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "forward:./login.jsp";
		}
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
	    userInfoService.testMaby();
	    System.out.println("Mythread 线程");
	}
	}
}
