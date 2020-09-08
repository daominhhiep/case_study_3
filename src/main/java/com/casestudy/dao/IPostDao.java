package com.casestudy.dao;
import com.casestudy.model.Post;

import java.sql.SQLException;
import java.util.List;

public interface IPostDao {
    public void insertPost(Post post) throws SQLException;
    public Post selectPost(int postId);
    public List<Post>selectAllPosts();
    public boolean deletePost(int id) throws SQLException;
//    public boolean updatePost(Post post) throws SQLException;
}
