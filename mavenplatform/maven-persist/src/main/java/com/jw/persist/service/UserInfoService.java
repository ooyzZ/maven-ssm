package com.jw.persist.service;

import com.jw.model.User;
import com.jw.persist.dao.UserInfoMapper;
import com.jw.utils.EncryptUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Service("userService")
public class UserInfoService {
	@Resource
	private UserInfoMapper userMapper;
	
	public int insertUserInfo(User user){
		return this.userMapper.insertUserInfo(user);
	}
	/**
	 * 
	 * @param user 前台传入的user信息
	 * @return
	 */
	public Map<String, Object> loginCheck(User user, HttpSession session) {
		Map<String, Object>map=new HashMap<String, Object>();
		user.setUsername(EncryptUtil.sha(user.getUsername()));
		user.setPassword(EncryptUtil.sha(user.getPassword()));
		User search=new User();
		search.setId(user.getUsername());
		//查询出的用户信息
		User user2= userMapper.selectUserInfoByParms(search);
		if (user2!=null) {
			if (user.getUsername().equals(user2.getId())&&user.getPassword().equals(user2.getPassword())) {
				map.put("result", "0");
				session.setAttribute("User", user2);
			}else {
				map.put("result", "1");
				map.put("msg", "账号或密码错误！");
			}
		}else {
			map.put("result", "2");
			map.put("msg", "账号不存在！");
		}
		return map;
	}
	
	//获得客户端真实IP地址的方法二：
	public String getIpAddr(HttpServletRequest request) {  
        String ip = request.getHeader("X-Forwarded-For");  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("Proxy-Client-IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("WL-Proxy-Client-IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_X_FORWARDED");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_X_CLUSTER_CLIENT_IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_CLIENT_IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_FORWARDED_FOR");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_FORWARDED");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_VIA");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("REMOTE_ADDR");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getRemoteAddr();  
        }  
        return ip;  
	}
	
	public void testMaby() {
		User aUser=new User();
		int a= userMapper.TestMaby(aUser);
		int b= userMapper.TestMaby(aUser);
		System.out.println(b+","+b);
	}
}
