package com.example.sportplatform.dao;

import com.example.sportplatform.bean.Movie;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MovieDao {
    public List<Movie> getAllMovie(@Param("name") String name, @Param("pageStart") int pageStart, @Param("pageSize") int pageSize);
    public int getMovieCounts(@Param("name") String name);
}
