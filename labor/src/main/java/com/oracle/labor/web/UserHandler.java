package com.oracle.labor.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.oracle.labor.common.util.GenerateID;
import com.oracle.labor.po.LdlscUser;
import com.oracle.labor.service.UserService;

@Controller
public class UserHandler {

	@Autowired
	UserService userService;
	
	@RequestMapping("/service/test/getUsers/{page}")
	public String getUsers(@PathVariable("page") Integer page,Map<String,Object> map) {
		
		PageInfo<LdlscUser> info=new PageInfo<LdlscUser>(userService.selectAll(page));
		map.put("pageInfo", info);
		return "service/test/userList";
	}
	
	
	@RequestMapping("/service/test/save")
	public String save(LdlscUser user) {
		user.setUserId(GenerateID.getGenerateId());
		userService.save(user);
		return "redirect:getUsers/1";
	}
	
	
}
