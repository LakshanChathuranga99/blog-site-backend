-- 
--  @author: I3han
--
-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: blog_site_db
--                    Dev Database: blog_site_dev_db
-- ------------------------------------------------------
-- Server version	- 5.7
-- How to use - make a scheme name `blog_site_db` from mysql workbench
--            - import this sql file to the created database

-- ---------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE posts(
	id INT NOT NULL auto_increment,
    heading VARCHAR(100) NOT null,
    content VARCHAR(1000) NOT NULL,
    excelentCount INT DEFAULT 0,
    goodCount INT DEFAULT 0,
	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO posts VALUES (1, 'first heading', 'first content', 0, 0 );

--
-- Table structure for table `comments`
--

CREATE TABLE comments(
	id INT NOT NULL auto_increment,
	content VARCHAR(100) NOT null,
    type VARCHAR(10) NOT null,
    agreeCount INT DEFAULT 0,
    disagreeCount INT DEFAULT 0,
    postId INT,
    PRIMARY KEY (id),
    FOREIGN KEY (postId) REFERENCES posts(id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `replies`
--

CREATE TABLE replies(
	id INT NOT NULL auto_increment,
	content VARCHAR(100) NOT null,
    agreeCount INT DEFAULT 0,
    disagreeCount INT DEFAULT 0,
    postId INT,
    commentId INT,
    PRIMARY KEY (id),
    FOREIGN KEY (postId) REFERENCES posts(id) ON DELETE CASCADE,
    FOREIGN KEY (commentId) REFERENCES comments(id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;