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
-- Table structure for table `replies`
--
CREATE TABLE users(
	u_id INT NOT NULL auto_increment,
	firstName VARCHAR(10) NOT null,
    lastName VARCHAR(10) NOT null,
    email VARCHAR(50) NOT null,
    isAdmin tinyint(4) NOT NULL DEFAULT '0',
    isUser tinyint(4) NOT NULL DEFAULT '1',
    avatarImageUrl VARCHAR(100),
    ranking VARCHAR(5),
    password VARCHAR(50) NOT null,
    PRIMARY KEY (u_id)
)ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `blog_site_db`.`users` (`firstName`, `lastName`, `email`, `password`) VALUES ('user1', 'user', 'user1@gmail.com', 'user111');
INSERT INTO `blog_site_db`.`users` (`firstName`, `lastName`, `email`, `password`) VALUES ('user2', 'user', 'user2@gmail.com', 'user222');

--
-- Table structure for table `posts`
--
CREATE TABLE posts(
	p_id INT NOT NULL auto_increment,
    heading VARCHAR(100) NOT null,
    content TEXT NOT NULL,
    dateNTime VARCHAR(20) NOT NULL,
    excelentCount INT DEFAULT 0,
    goodCount INT DEFAULT 0,
    userId INT NOT NULL,
	PRIMARY KEY (p_id),
    FOREIGN KEY (userId) REFERENCES users(u_id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `blog_site_db`.`posts` (`heading`, `content`, `dateNTime`, `userId`) VALUES ('first post', 'aaawdfk jnw afubawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uh', '16/10/2020 23:07:32', '1');
INSERT INTO `blog_site_db`.`posts` (`heading`, `content`, `dateNTime`, `userId`) VALUES ('second post', 'aaawdfk jnw afubawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uh', '16/10/2020 23:07:32', '2');
INSERT INTO `blog_site_db`.`posts` (`heading`, `content`, `dateNTime`, `userId`) VALUES ('third post', 'aaawdfk jnw afubawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uh', '16/10/2020 23:07:32', '1');

--
-- Table structure for table `comments`
--
CREATE TABLE comments(
	c_id INT NOT NULL auto_increment,
	content VARCHAR(100) NOT null,
    type VARCHAR(30) NOT null,
    dateNTime VARCHAR(20) NOT NULL,
    agreeCount INT DEFAULT 0,
    disagreeCount INT DEFAULT 0,
    postId INT NOT NULL,
    PRIMARY KEY (c_id),
    FOREIGN KEY (postId) REFERENCES posts(p_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `blog_site_db`.`comments` (`content`, `type`, `dateNTime`, `postId`) VALUES ('comment comment', 'Question-wise', '04/09/2020 14:20:30', '1');
INSERT INTO `blog_site_db`.`comments` (`content`, `type`, `dateNTime`, `postId`) VALUES ('comment commentcomment comment', 'Supportive', '04/09/2020 14:20:30', '1');
INSERT INTO `blog_site_db`.`comments` (`content`, `type`, `dateNTime`, `postId`) VALUES ('comment comment', 'I have a another Opinion', '04/09/2020 14:20:30', '1');
INSERT INTO `blog_site_db`.`comments` (`content`, `type`, `dateNTime`, `postId`) VALUES ('comment commentcomment comment', 'Supportive', '04/09/2020 14:20:30', '3');

--
-- Table structure for table `replies`
--
CREATE TABLE replies(
	r_id INT NOT NULL auto_increment,
	content VARCHAR(100) NOT null,
    dateNTime VARCHAR(20) NOT NULL,
    agreeCount INT DEFAULT 0,
    disagreeCount INT DEFAULT 0,
    postId INT NOT NULL,
    commentId INT NOT NULL,
    PRIMARY KEY (r_id),
    FOREIGN KEY (postId) REFERENCES posts(p_id) ON DELETE CASCADE,
    FOREIGN KEY (commentId) REFERENCES comments(c_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `blog_site_db`.`replies` (`content`, `dateNTime`, `postId`, `commentId`) VALUES ('reply reply', '04/09/2020 14:20:30', '1', '1');
INSERT INTO `blog_site_db`.`replies` (`content`, `dateNTime`, `postId`, `commentId`) VALUES ('reply reply', '04/09/2020 14:20:30', '1', '3');

--
-- Table structure for table `userPostReactions`
--
CREATE TABLE userPostReactions(
	upr_id INT NOT NULL auto_increment,
	postId INT NOT null,
    userId INT NOT null,
    reaction VARCHAR(9) NOT null,
    PRIMARY KEY (upr_id),
    FOREIGN KEY (postId) REFERENCES posts(p_id) ON DELETE CASCADE,
    FOREIGN KEY (userId) REFERENCES users(u_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `userPostReactions`
--
CREATE TABLE userCommentReactions(
	ucr_id INT NOT NULL auto_increment,
	postId INT NOT null,
    userId INT NOT null,
    commentId INT NOT null,
    reaction VARCHAR(9) NOT null,
    PRIMARY KEY (ucr_id),
    FOREIGN KEY (postId) REFERENCES posts(p_id) ON DELETE CASCADE,
    FOREIGN KEY (userId) REFERENCES users(u_id) ON DELETE CASCADE,
    FOREIGN KEY (commentId) REFERENCES comments(c_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `userPostReactions`
--
CREATE TABLE userReplyReactions(
	urr_id INT NOT NULL auto_increment,
	postId INT NOT null,
    userId INT NOT null,
    commentId INT NOT null,
    replyId INT NOT null,
    reaction VARCHAR(9) NOT null,
    PRIMARY KEY (urr_id),
    FOREIGN KEY (postId) REFERENCES posts(p_id) ON DELETE CASCADE,
    FOREIGN KEY (userId) REFERENCES users(u_id) ON DELETE CASCADE,
    FOREIGN KEY (commentId) REFERENCES comments(c_id) ON DELETE CASCADE,
    FOREIGN KEY (replyId) REFERENCES replies(r_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `categories`
--
CREATE TABLE categories(
	ctg_id INT NOT NULL auto_increment,
	category VARCHAR(9) NOT NULL,
    PRIMARY KEY (ctg_id)
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `postCategories`
--
CREATE TABLE postCategories(
	pctg_id INT NOT NULL auto_increment,
	postId INT NOT null,
    categoryId INT NOT null,
    PRIMARY KEY (pctg_id),
    FOREIGN KEY (postId) REFERENCES posts(p_id) ON DELETE CASCADE,
    FOREIGN KEY (categoryId) REFERENCES categories(ctg_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `userInterests`
--
CREATE TABLE userInterests(
	uint_id INT NOT NULL auto_increment,
	postId INT NOT null,
    categoryId INT NOT null,
    PRIMARY KEY (uint_id),
    FOREIGN KEY (postId) REFERENCES posts(p_id) ON DELETE CASCADE,
    FOREIGN KEY (categoryId) REFERENCES categories(ctg_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `complains`
--
CREATE TABLE complains(
	cmpln_id INT NOT NULL auto_increment,
    reviewed tinyint(4) NOT NULL DEFAULT '0',
	complainedPostId INT NOT null,
    complainedUserId INT NOT null,
    PRIMARY KEY (cmpln_id),
    FOREIGN KEY (complainedPostId) REFERENCES posts(p_id) ON DELETE CASCADE,
    FOREIGN KEY (complainedUserId) REFERENCES users(u_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `commentTypes`
--
CREATE TABLE commentTypes(
	ct_id INT NOT NULL auto_increment,
	commentType VARCHAR(15) NOT null,
    PRIMARY KEY (ct_id)
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `notifications`
--
CREATE TABLE notifications(
	n_id INT NOT NULL auto_increment,
	notification VARCHAR(20),
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    notifiedUserId INT NOT null,
    PRIMARY KEY (n_id),
    FOREIGN KEY (notifiedUserId) REFERENCES users(u_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `amendments`
--
CREATE TABLE amendments(
	amd_id INT NOT NULL auto_increment,
	amendment VARCHAR(20),
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    editedAdminId INT NOT null,
    editedPostId INT NOT null,
    PRIMARY KEY (amd_id),
    FOREIGN KEY (editedAdminId) REFERENCES users(u_id) ON DELETE CASCADE,
    FOREIGN KEY (editedPostId) REFERENCES posts(p_id) ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Table structure for table `themes`
--
CREATE TABLE themes(
	thm_id INT NOT NULL auto_increment,
	theme VARCHAR(15) NOT null,
    PRIMARY KEY (thm_id)
)ENGINE=InnoDB AUTO_INCREMENT=1;