package com.casestudy.model;

public class Post {
    private int postId;
    private String content;
    private String images;

    public Post() {
    }

    public Post(int postId, String images, String content) {
        this.postId = postId;
        this.images = images;
        this.content = content;
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
}

