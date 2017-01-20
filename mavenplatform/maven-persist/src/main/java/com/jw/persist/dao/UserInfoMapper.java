package com.jw.persist.dao;



import com.jw.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


@Repository
public interface UserInfoMapper {

	 int insertUserInfo(User record);
	
	 User selectUserInfoByParms(User user);
	 
	 int TestMaby(User user);

	 List<User>slectAll();
}
