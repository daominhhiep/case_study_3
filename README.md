CREATE DATABASE CaseStudyModule3;
USE CaseStudyModule3;
CREATE TABLE persons (
    userId INT AUTO_INCREMENT PRIMARY KEY ,
    fullName NVARCHAR(255),
    userName VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(11)
);