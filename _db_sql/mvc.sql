﻿-- Script was generated by Devart dbForge Studio for MySQL, Version 6.0.128.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 10/03/2014 1:28:28 PM
-- Server version: 5.6.14
-- Client version: 4.1

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

-- 
-- Set default database
--
USE frameworkdb;

--
-- Definition for table role

DROP TABLE IF EXISTS role;
CREATE TABLE role (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Definition for table testtable
--
DROP TABLE IF EXISTS testtable;
CREATE TABLE testtable (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  number INT(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 104
AVG_ROW_LENGTH = 162
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Definition for table user
--
DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id INT(11) NOT NULL AUTO_INCREMENT,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX email (email)
)
ENGINE = INNODB
AUTO_INCREMENT = 10
AVG_ROW_LENGTH = 2048
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Definition for table user_role
--
DROP TABLE IF EXISTS user_role;
CREATE TABLE user_role (
  id INT(11) NOT NULL AUTO_INCREMENT,
  userId INT(11) DEFAULT NULL,
  roleId INT(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_user_role_role_id FOREIGN KEY (roleId)
    REFERENCES role(id) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT FK_user_role_user_id FOREIGN KEY (userId)
    REFERENCES user(id) ON DELETE CASCADE ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- 
-- Dumping data for table role
--
INSERT INTO role VALUES
(1, 'Admin'),
(2, 'Moderator');

-- 
-- Dumping data for table testtable
--
INSERT INTO testtable VALUES
(1, 'Simon', 7),
(4, 'Brett Mayer', 7565),
(5, 'Fay Quinn', 397),
(6, 'Ann Fowler', 8549),
(7, 'Yvonne U. Oconnor', 5434),
(8, 'Graham M. Swanson', 1158),
(9, 'Felix F. Herman', 8718),
(10, 'Tasha Myers', 6970),
(11, 'Quin K. Jensen', 5340),
(12, 'Laurel Dawson', 4234),
(13, 'Jolene U. Berg', 4730),
(14, 'Wayne Y. Sears', 5627),
(15, 'Cassidy Austin', 886),
(16, 'Dylan Porter', 9540),
(17, 'Calista E. Yates', 9339),
(18, 'Bethany N. Joyner', 9426),
(19, 'Daquan Curry', 542),
(20, 'Delilah Moses', 1190),
(21, 'William J. Best', 7054),
(22, 'Lisandra Rasmussen', 8043),
(23, 'Cassidy Boyer', 6742),
(24, 'Stacy T. Green', 2142),
(25, 'Natalie L. Vazquez', 4584),
(26, 'Derek Y. Kramer', 2534),
(27, 'Ferdinand M. Pace', 9605),
(28, 'Alea Z. Ford', 3188),
(29, 'Octavia Benton', 6787),
(30, 'Bethany G. Mullins', 7550),
(31, 'Aladdin Watson', 4587),
(32, 'Ifeoma Blair', 2112),
(33, 'Amanda Riley', 5985),
(34, 'Jaime Avila', 4389),
(35, 'Fallon Zamora', 4585),
(36, 'Dale G. Sellers', 8133),
(37, 'Shannon Peters', 3746),
(38, 'Emma O. Rasmussen', 9992),
(39, 'Kiayada B. Cleveland', 6986),
(40, 'Madeline Mcclure', 2510),
(41, 'Sara P. Stafford', 7616),
(42, 'Hadassah Kane', 1262),
(43, 'Clinton Marshall', 8121),
(44, 'Leigh Z. Whitney', 1726),
(45, 'Teegan O. Nixon', 1372),
(46, 'Cooper Brennan', 5238),
(47, 'Donna C. Mendez', 2144),
(48, 'Blythe Oneill', 9562),
(49, 'Chandler G. Joyce', 7570),
(50, 'Ila Pearson', 617),
(51, 'Cecilia D. Benjamin', 2210),
(52, 'Hope G. Snyder', 2203),
(53, 'Susan R. Buckner', 526),
(54, 'Jordan Glass', 2393),
(55, 'Dylan P. Goff', 702),
(56, 'Melinda Gutierrez', 6522),
(57, 'Daryl K. Goodwin', 863),
(58, 'Emery Rivera', 8758),
(59, 'Stella Gomez', 3893),
(60, 'Cadman Barnes', 6331),
(61, 'Honorato Mcintyre', 7858),
(62, 'Hilel Beard', 9032),
(63, 'Jennifer U. Shelton', 6617),
(64, 'Jolie I. Houston', 5533),
(65, 'Forrest R. Rocha', 1350),
(66, 'Nina A. Valdez', 7383),
(67, 'Cecilia F. Holman', 6676),
(68, 'Alden S. Berry', 9812),
(69, 'Blake Fry', 7557),
(70, 'Hector F. Kinney', 1182),
(71, 'Abdul Pickett', 8447),
(72, 'Colin Cole', 7457),
(73, 'Cameron K. Marshall', 3674),
(74, 'Jamal F. Jefferson', 819),
(75, 'Cullen Z. Watson', 1260),
(76, 'Shafira H. Soto', 1533),
(77, 'David G. Chaney', 9994),
(78, 'Davis West', 8322),
(79, 'Ian Day', 8118),
(80, 'Cameron Avery', 4839),
(81, 'Rama L. Myers', 7833),
(82, 'Francesca Y. Decker', 2001),
(83, 'Bo W. Marks', 768),
(84, 'Deirdre Hodge', 5407),
(85, 'Lillith H. Jenkins', 9802),
(86, 'Kessie E. Frost', 3299),
(87, 'Leah Z. Rodriguez', 369),
(88, 'Kaden W. Barry', 8870),
(89, 'Leroy G. Harmon', 7239),
(90, 'Castor Rowland', 9705),
(91, 'Scott G. Orr', 4543),
(92, 'Quynn Silva', 6533),
(93, 'Yvonne Small', 9363),
(94, 'Alisa M. Flynn', 1496),
(95, 'Blair Z. Turner', 129),
(96, 'Joseph N. Norton', 1652),
(97, 'Linus Bonner', 722),
(98, 'Dacey B. Kane', 5299),
(99, 'Solomon D. Richardson', 2862),
(100, 'Yasir M. Gomez', 1689),
(101, 'Chandler Pope', 247),
(102, 'Yoshi Gross', 7476),
(103, 'Meredith Campbell', 2856);

-- 
-- Dumping data for table user
--
INSERT INTO user VALUES
(1, 'blink_si@hotmail.com123', '$2rcByx51ejoM'),
(2, 'blink_si@hotmail.com12233', '$2rcByx51ejoM'),
(3, 'blink_si@hotmail.com_old', '$2rcByx51ejoM'),
(4, 'blink_si@hotmail.com123123', 'T8oSSsQADJcvQ'),
(5, 'blink_si@hotmail.com_balls', 'rROuxuZynMr.s'),
(6, 'blink_si@hotmail.com--fuck', '$2y$11$04da8bcbeae5a68cad047uNJKyvAjaLbHohuveadz.7ksDVLQ5/7a'),
(7, 'blink_si@hotmail.com-3423', '$2y$11$96b7306653273cfb45b83OFRnvR2raUd3DK1VvnEZ5aoBs3g5q6fq'),
(8, 'blink_si@hotmail.com-yo', '$2y$11$5168ba6f6d820f4edec1fuPm3HdCTrtYK7AKeeqaGlrUuTYjSWCAa'),
(9, 'blink_si@hotmail.com', '$2y$11$f6e8e3a8c367f4f53e17euXFrkHvhifY4M5BKAz9pB8BawYpnaIW.');

-- 
-- Dumping data for table user_role
--
INSERT INTO user_role VALUES
(1, 9, 1),
(2, 9, 2);

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;