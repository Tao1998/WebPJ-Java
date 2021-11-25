package com.example.sportplatform.dao;

import com.example.sportplatform.bean.MainMenu;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuDao {
    public List<MainMenu> getMainMenus();
    public List<MainMenu> getMainMenusByRole(int roleID);
}
