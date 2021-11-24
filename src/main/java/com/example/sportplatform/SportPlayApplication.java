package com.example.sportplatform;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.example.sportplatform.dao")
@SpringBootApplication
public class SportPlayApplication {

    public static void main(String[] args) {
        SpringApplication.run(SportPlayApplication.class, args);
    }

}
