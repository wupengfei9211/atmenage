package com.at.service.Impl;

import com.at.dao.tPaperMapper;
import com.at.pojo.tPaper;
import com.at.service.checkMes;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 查询信息
 */
@Service("checkMes")
public class checkMesImpl implements checkMes {
   @Resource
    private tPaperMapper tpaperMapper;


    public List<tPaper> selectMes(tPaper tpaper) {
        System.out.println(tpaperMapper.selectMes(tpaper)+"进入service层");
        return tpaperMapper.selectMes(tpaper);
    }
}
