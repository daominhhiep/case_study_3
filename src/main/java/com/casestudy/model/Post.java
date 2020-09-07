package com.casestudy.model;

public class Post {
    private int postId;
    private String content;
    private String images;
    private String path;

    public Post() {
    }

    public Post(String images, String content, String path) {
        this.images = images;
        this.content = content;
        this.path = path;
    }

    public Post(int postId,String images, String content, String path) {
        this.postId = postId;
        this.images = images;
        this.content = content;
        this.path = path;
    }

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
}


