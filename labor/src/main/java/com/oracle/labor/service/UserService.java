package com.oracle.labor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.oracle.labor.dao.LdlscUserMapper;
import com.oracle.labor.po.LdlscUser;
import com.oracle.labor.po.LdlscUserExample;

@Service
public class UserService {

	@Autowired
	LdlscUserMapper userDao;
	@Transactional
	public int save(LdlscUser record) {
		return userDao.insert(record);
	}


	@Transactional(readOnly=true)
	public List<LdlscUser> selectAll(int page){
		PageHelper.startPage(page, 5);
		LdlscUserExample e=new LdlscUserExample();
		e.setOrderByClause("user_name");
		return userDao.selectByExample(e);
	}
	@Transactional(readOnly=true)
	public LdlscUser getUserById(String userId) {
		return userDao.selectByPrimaryKey(userId);
	}
}
