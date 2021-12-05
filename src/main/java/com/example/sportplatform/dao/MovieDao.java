package com.example.sportplatform.dao;

import com.example.sportplatform.bean.Movie;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MovieDao {
    public List<Movie> getAllMovie();
    public int getMovieCounts();
    public List<Movie> getAllWatch(@Param("name") String name, @Param("id") int id, @Param("pageStart") int pageStart, @Param("pageSize") int pageSize);
    public int getWatchCounts(@Param("name") String name, @Param("id") int id);
    public int addWatch(int id, int mid);
    public int deleteWatch(int id, int mid);
}
