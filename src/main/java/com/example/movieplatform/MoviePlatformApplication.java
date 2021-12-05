package com.example.movieplatform;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.example.movieplatform.dao")
@SpringBootApplication
public class MoviePlatformApplication {

    public static void main(String[] args) {
        SpringApplication.run(MoviePlatformApplication.class, args);
    }

}
