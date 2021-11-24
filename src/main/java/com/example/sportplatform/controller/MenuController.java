package com.example.sportplatform.controller;

import com.alibaba.fastjson.JSON;
import com.example.sportplatform.bean.MainMenu;
import com.example.sportplatform.dao.MenuDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
public class MenuController {
    @Autowired
    MenuDao menuDao;

    @RequestMapping("/menus")
    public String getAllMenus(){
        System.out.println("访问成功");

        HashMap<String, Object> data = new HashMap<>();
        List<MainMenu> menus = menuDao.getMainMenus();

        if(menus!=null) {
            data.put("menus", menus);
            data.put("flag", 200);
        }else {
            data.put("flag", 404);
        }
        String s = JSON.toJSONString(data);
        return s;
    }
}