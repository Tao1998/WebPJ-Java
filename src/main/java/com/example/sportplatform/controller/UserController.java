package com.example.sportplatform.controller;

import com.alibaba.fastjson.JSON;
import com.example.sportplatform.bean.QueryInfo;
import com.example.sportplatform.bean.User;
import com.example.sportplatform.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
public class UserController {
    @Autowired
    UserDao userDao;

    @RequestMapping("/allUser") // GET
    public String getUserList(QueryInfo queryInfo){
        System.out.println(queryInfo);
        int numbers = userDao.getUserCounts("%"+queryInfo.getQuery()+"%");// 获取数据总数
        int pageStart = (queryInfo.getPageNum()-1)*queryInfo.getPageSize();
        List<User> users = userDao.getAllUser("%"+queryInfo.getQuery()+"%",pageStart,queryInfo.getPageSize());
        HashMap<String, Object> res = new HashMap<>();
        System.out.println("user："+users);
        res.put("numbers",numbers);
        res.put("data",users);
        System.out.println("总条数："+numbers);
        return JSON.toJSONString(res);
    }

    @RequestMapping("/updateState") // PUT
    public String updateUserState(@RequestParam("id") Integer id,
                                  @RequestParam("state") Boolean state){
        int i = userDao.updateState(id, state);
        System.out.println("用户编号:"+id);
        System.out.println("用户状态:"+state);
        return i > 0 ? "success":"error";
    }

    @RequestMapping("/addUser") //POST
    public String addUser(@RequestBody User user){
        System.out.println(user);
        user.setRole("普通用户");
        user.setState(false);
        int i = userDao.addUser(user);
        return i > 0 ? "success":"error";
    }

    @RequestMapping("/getUpdate") // GET
    public String getUpdateUser(int id){
        System.out.println("编号:"+id);
        User updateUser = userDao.getUpdateUser(id);
        return JSON.toJSONString(updateUser);
    }

    @RequestMapping("/editUser") // PUT
    public String updateUser(@RequestBody User user){
        System.out.println(user);
        int i = userDao.updateUser(user);
        return i > 0 ? "success":"error";
    }

    @RequestMapping("/deleteUser")
    public String deleteUser(int id){
//        System.out.println(id);
        int i = userDao.deleteUser(id);
        return i > 0 ? "success":"error";
    }

    @RequestMapping("/updateRole")
    public String updateRole(@RequestParam("id") Integer id,
                          @RequestParam("role") String role){
        int i = userDao.updateRole(id, role);
//        System.out.println("用户编号:"+id);
//        System.out.println("用户角色:"+role);
        return i > 0 ? "success":"error";
    }
}
