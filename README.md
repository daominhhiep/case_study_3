CREATE DATABASE CaseStudyModule3;
USE CaseStudyModule3;
CREATE TABLE users (
                         userId INT AUTO_INCREMENT PRIMARY KEY ,
                         fullName NVARCHAR(255),
                         userName VARCHAR(255),
                         password VARCHAR(255),
                         email VARCHAR(255),
                         phone VARCHAR(11)
);


CREATE TABLE post (
                      postId int(11) auto_increment primary key ,
                      content nvarchar(255) NOT NULL,
                      images varchar(255) NOT NULL,
                      path varchar(255) NOT NULL,
                      added_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                      userId INT,
                      categoryId INT,
                      FOREIGN KEY (userId) REFERENCES users(userId),
                      FOREIGN KEY (categoryId) REFERENCES postcategory(categoryId)
) ;

create table postcategory(
    categoryId int auto_increment primary key,
    name nvarchar(255)
);

CREATE TABLE comment(
     commentId INT auto_increment PRIMARY KEY ,
     content NVARCHAR(255),
     postId INT,
     userId INT,
      FOREIGN KEY (postId) REFERENCES post(postId),
     FOREIGN KEY (userId) REFERENCES users(userId)
);