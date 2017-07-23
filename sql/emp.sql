/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50716
Source Host           : 127.0.0.1:3306
Source Database       : emp

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-08 14:22:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `ename` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `hiredate` varchar(255) DEFAULT NULL,
  `sal` varchar(255) DEFAULT NULL,
  `comm` varchar(255) DEFAULT NULL,
  `empno` int(11) NOT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('小明', '实习生', '2016-8-24', '1500', '1000', '213');
INSERT INTO `emp` VALUES ('王天明', '经理', '2014-8-5', '8000', '5000', '214');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `userpass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('admin', 'admin');
