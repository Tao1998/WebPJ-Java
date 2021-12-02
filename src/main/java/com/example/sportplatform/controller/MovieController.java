package com.example.sportplatform.controller;

import com.alibaba.fastjson.JSON;
import com.example.sportplatform.bean.QueryInfo;
import com.example.sportplatform.bean.Movie;
import com.example.sportplatform.dao.MovieDao;
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
    public String getMovieList(QueryInfo queryInfo){
        System.out.println("In getMovie");
        System.out.println(queryInfo);
        int numbers = movieDao.getMovieCounts("%"+queryInfo.getQuery()+"%");// 获取数据总数
        int pageStart = (queryInfo.getPageNum()-1)*queryInfo.getPageSize();
        List<Movie> movies = movieDao.getAllMovie("%"+queryInfo.getQuery()+"%",pageStart,queryInfo.getPageSize());
        HashMap<String, Object> res = new HashMap<>();
        System.out.println("movie："+movies);
        res.put("numbers",numbers);
        res.put("data",movies);
        System.out.println("总条数："+numbers);
        return JSON.toJSONString(res);
    }

}
