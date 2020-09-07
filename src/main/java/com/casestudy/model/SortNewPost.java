package com.casestudy.model;

import java.util.Comparator;

public class SortNewPost implements Comparator<Post> {
    @Override
    public int compare(Post post1, Post post2) {
        Integer p1 = Integer.valueOf(post1.getPostId());
        Integer p2 = Integer.valueOf(post2.getPostId());
        return p2.compareTo(p1);
    }
}