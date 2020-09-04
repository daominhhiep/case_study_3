package com.casestudy.dao;

import com.casestudy.model.Post;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDao implements IPostDao{
    private static final String SELECT_POST_BY_ID = "select id,images,content from post where id =?";
    private static final String SELECT_ALL_POST = "select *  from post";
    private static final String DELETE_POST_SQL = "delete from post where id = ?;";
    private static final String UPDATE_POST_SQL = "update post set images = ?,content= ? where id = ?;";

    public PostDao() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/casestudymodule3?useUnicode=true&characterEncoding=UTF-8", "root", "123456");
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public void insertPost(Post post) throws SQLException {
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement("insert into " + "post(images,content) value (?,?)")) {
            preparedStatement.setString(1, post.getImages());
            preparedStatement.setString(2, post.getContent());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Post selectPost(int id) {
        Post post = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_POST_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String images = rs.getString("images");
                String content = rs.getString("content");
                post = new Post(id, images, content);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return post;
    }

    public List<Post> selectAllPosts() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<Post> posts = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_POST);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();


            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("postId");
                String images = rs.getString("images");
                String content = rs.getString("content");
                posts.add(new Post(id, images, content));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return posts;
    }

    public boolean deletePost(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_POST_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updatePost(Post post) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_POST_SQL);) {
            statement.setString(1, post.getImages());
            statement.setString(2, post.getContent());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
