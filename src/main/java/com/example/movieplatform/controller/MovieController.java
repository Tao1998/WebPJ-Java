package com.example.movieplatform.controller;

import com.alibaba.fastjson.JSON;
import com.example.movieplatform.bean.Movie;
import com.example.movieplatform.dao.MovieDao;
import org.springframework.beans.factory.annotation.Autowired;
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
        res.put("numbers",numbers);
        res.put("data",movies);
        return JSON.toJSONString(res);
    }

    @RequestMapping("/allWatch") // GET
    public String getWatchList(String query,int pageNum, int pageSize, int id){
        int numbers = movieDao.getWatchCounts("%"+query+"%",id);// 获取数据总数
        int pageStart = (pageNum-1)*pageSize;
        List<Movie> movies = movieDao.getAllWatch("%"+query+"%",id,pageStart,pageSize);
        HashMap<String, Object> res = new HashMap<>();
        res.put("numbers",numbers);
        res.put("data",movies);
        return JSON.toJSONString(res);
    }

    @RequestMapping("/addWatch") //PUT
    public String addWatch(int id, int mid){
        int i = movieDao.addWatch(id, mid);
        return i > 0 ? "success":"error";
    }

    @RequestMapping("/deleteWatch")
    public String deleteWatch(int id, int mid){
        int i = movieDao.deleteWatch(id, mid);
        return i > 0 ? "success":"error";
    }
}
