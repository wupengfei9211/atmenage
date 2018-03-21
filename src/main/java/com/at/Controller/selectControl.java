package com.at.Controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.at.pojo.tPaper;
import com.at.service.checkMes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/select")
public class selectControl {
    @Resource
    private checkMes checkMes;

    @RequestMapping(value="/selectMes",produces="text/html; charset=utf-8")
    @ResponseBody
    public String selectMes(tPaper tpaper){
        System.out.println(tpaper.getTitle()+"and"+tpaper.getType());
        List<tPaper> list=checkMes.selectMes(tpaper);
        System.out.println(list.size());
        return JSONArray.toJSONString(list);
    }

}
