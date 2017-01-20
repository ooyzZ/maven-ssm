package com.jw.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.registry.infomodel.User;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class LoginInterceptor implements HandlerInterceptor {

	//日志
	
	
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handle) throws Exception {
		
		//创建session
		HttpSession session =request.getSession();
		
		//无需登录，允许访问的地址
		String[] allowUrls =new String[]{"/toLogin","/login","/goLogin"};
			
		//获取请求地址
		String url =request.getRequestURL().toString();
		boolean isOK=false;
		//获得session中的用户
		User user =(User) session.getAttribute("User");
	
		
		for (String strUrl : allowUrls) {
			if(url.contains(strUrl))
			{
				isOK=true;
			}
		}
		if (!isOK) {
			if (user==null) {
				return false;
			}
		}
		return true;
//		
//		if(user ==null)
//		{
//			throw new UnLoginException("您尚未登录！");	
//								
//		}
		//重定向
		//response.sendRedirect(request.getContextPath()+"/toLogin");
			
		
		
		
	}

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}


	
}
