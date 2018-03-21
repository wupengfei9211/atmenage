package com.at.service.Impl;

import com.at.dao.tUserMapper;
import com.at.pojo.tUser;
import com.at.service.logservice;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("logService")
public class logerviceImpl implements logservice {

    /**
     * 登录
     */
    @Resource
    private tUserMapper tuserMapper;
    public int checkLogin(tUser tuser) {
        return tuserMapper.checkLogin(tuser);
    }

}
