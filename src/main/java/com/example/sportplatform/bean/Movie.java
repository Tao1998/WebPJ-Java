package com.example.sportplatform.bean;

public class Movie {
    private int id;
    private String name;
    private String director;
    private String region;
    private int year;
    private String imgSrc;

    public Movie() {
    }

    public Movie(String name, String director, String region, int year, String imgSrc) {
        this.name = name;
        this.director = director;
        this.region = region;
        this.year = year;
        this.imgSrc = imgSrc;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDirector() {
        return director;
    }

    public String getRegion() {
        return region;
    }

    public int getYear() {
        return year;
    }

    public String getImgSrc() {
        return imgSrc;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public void setImgSrc(String imgSrc) {
        this.imgSrc = imgSrc;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", director='" + director + '\'' +
                ", region='" + region + '\'' +
                ", year=" + year +
                ", imgSrc='" + imgSrc + '\'' +
                '}';
    }
}
