package com.example.movieplatform.dao;

import com.example.movieplatform.bean.MainMenu;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuDao {
    public List<MainMenu> getMainMenus();
    public List<MainMenu> getMainMenusByRole(int roleID);
}
