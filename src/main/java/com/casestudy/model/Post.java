package com.casestudy.model;

public class Post {
    private int postId;
    private String images;
    private String content;
    private String path;
    private String date;

    public Post() {
    }

    public Post(String images, String content, String path) {
        this.content = content;
        this.images = images;
        this.path = path;
    }

    public Post(String images, String content, String path, String date) {
        this.images = images;
        this.content = content;
        this.path = path;
        this.date = date;
    }

    //    public Post(int postId, String images, String content, String path) {
//        this.postId = postId;
//        this.images = images;
//        this.content = content;
//        this.path = path;
//    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}


