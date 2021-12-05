package com.example.sportplatform.controller;

import com.alibaba.fastjson.JSON;
import com.example.sportplatform.bean.QueryInfo;
import com.example.sportplatform.bean.Movie;
import com.example.sportplatform.bean.User;
import com.example.sportplatform.dao.MovieDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
public class MovieController {
    @Autowired
    MovieDao movieDao;

    @RequestMapping("/allMovie") // GET
    public String getMovieList(){
        int numbers = movieDao.getMovieCounts();// 获取数据总数
        List<Movie> movies = movieDao.getAllMovie();
        HashMap<String, Object> res = new HashMap<>();
        System.out.println("movie："+movies);
        res.put("numbers",numbers);
        res.put("data",movies);
        System.out.println("总条数："+numbers);
        return JSON.toJSONString(res);
    }

    @RequestMapping("/allWatch") // GET
    public String getWatchList(String query,int pageNum, int pageSize, int id){
        // TODO: find out pageSize
        System.out.println("In getWatch");
        System.out.println("id: " + id);
        int numbers = movieDao.getWatchCounts("%"+query+"%",id);// 获取数据总数
        int pageStart = (pageNum-1)*pageSize;
        System.out.println("PageStart: "+pageStart+" PageSize: "+pageSize);
        List<Movie> movies = movieDao.getAllWatch("%"+query+"%",id,pageStart,pageSize);
        HashMap<String, Object> res = new HashMap<>();
        System.out.println("movie："+movies);
        res.put("numbers",numbers);
        res.put("data",movies);
        System.out.println("总条数："+numbers);
        return JSON.toJSONString(res);
    }

    @RequestMapping("/addWatch") //PUT
    public String addWatch(int id, int mid){
        System.out.println("id: "+id+" mid: "+mid);
        int i = movieDao.addWatch(id, mid);
        return i > 0 ? "success":"error";
    }

    @RequestMapping("/deleteWatch")
    public String deleteWatch(int id, int mid){
//        System.out.println(id);
        int i = movieDao.deleteWatch(id, mid);
        return i > 0 ? "success":"error";
    }

}
