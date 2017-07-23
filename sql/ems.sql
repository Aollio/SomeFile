/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50716
Source Host           : 127.0.0.1:3306
Source Database       : ems

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-08 14:22:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jjy_class
-- ----------------------------
DROP TABLE IF EXISTS `jjy_class`;
CREATE TABLE `jjy_class` (
  `class_id` char(4) NOT NULL,
  `class_name` char(10) NOT NULL,
  `class_teacher` char(10) NOT NULL,
  `class_localtion` char(50) NOT NULL,
  `class_peoplenumber` char(3) NOT NULL,
  `class_grade` char(2) NOT NULL,
  `class_class` char(2) NOT NULL,
  `class_info` char(50) NOT NULL,
  `class_maxpeople` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jjy_class
-- ----------------------------
INSERT INTO `jjy_class` VALUES ('1601', '初一1班', '江泽民', '一教101', '25', '1', '1', '钦定', '30');
INSERT INTO `jjy_class` VALUES ('1602', '初一2班', '李鹏', '一教102', '25', '1', '2', '无', '30');
INSERT INTO `jjy_class` VALUES ('1603', '初一3班', '习大大', '一教105', '25', '1', '3', '无', '30');
INSERT INTO `jjy_class` VALUES ('1604', '初一4班', '彭麻麻', '一教106', '25', '1', '4', '无', '30');

-- ----------------------------
-- Table structure for jjy_grade
-- ----------------------------
DROP TABLE IF EXISTS `jjy_grade`;
CREATE TABLE `jjy_grade` (
  `number` char(11) NOT NULL,
  `chinese` int(3) NOT NULL,
  `english` int(3) NOT NULL,
  `math` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jjy_grade
-- ----------------------------
INSERT INTO `jjy_grade` VALUES ('20161207640', '66', '66', '66');
INSERT INTO `jjy_grade` VALUES ('sd', '88', '88', '88');
INSERT INTO `jjy_grade` VALUES ('20161207806', '95', '96', '0');

-- ----------------------------
-- Table structure for jjy_placement
-- ----------------------------
DROP TABLE IF EXISTS `jjy_placement`;
CREATE TABLE `jjy_placement` (
  `number` char(10) NOT NULL,
  `class_id` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jjy_placement
-- ----------------------------

-- ----------------------------
-- Table structure for jjy_signup
-- ----------------------------
DROP TABLE IF EXISTS `jjy_signup`;
CREATE TABLE `jjy_signup` (
  `number` char(11) NOT NULL,
  `name` char(30) NOT NULL,
  `id` char(18) NOT NULL,
  `sex` char(2) NOT NULL,
  `birthday` datetime NOT NULL,
  `origin` varchar(40) NOT NULL,
  `city` varchar(24) NOT NULL,
  `area` varchar(24) NOT NULL,
  `street` varchar(30) NOT NULL,
  `zip` char(6) NOT NULL,
  `phone` char(11) NOT NULL,
  `health` char(2) NOT NULL,
  `nation` char(2) NOT NULL,
  `school` varchar(20) NOT NULL,
  `state` char(1) NOT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jjy_signup
-- ----------------------------
INSERT INTO `jjy_signup` VALUES ('20161207640', 'sada', 'sad', 'a', '2016-12-14 00:00:00', 'a', 'a', 'a', 'a', 'asd', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `jjy_signup` VALUES ('20161207806', '江俊寅', '330802199606104036', '男', '1996-06-10 00:00:00', '浙江', '衢州', '柯城区', '亭川小区', '324000', '18217686872', '良好', '汉', '新华小学', '');
INSERT INTO `jjy_signup` VALUES ('20161207813', '王小明', '330802200312124444', '男', '2003-12-12 22:59:20', '上海', '上海', '奉贤区', '海湾镇', '020000', '18217686895', '良好', '汉', '新华小学', 'a');
INSERT INTO `jjy_signup` VALUES ('sd', 'sad', 'sd', 'sd', '2016-11-29 23:56:31', 'asd', 'dsa', 'asd', 'asd', 'dsa', 'asd', 'ds', 'as', 'ads', 'a');

-- ----------------------------
-- Table structure for jjy_studentid
-- ----------------------------
DROP TABLE IF EXISTS `jjy_studentid`;
CREATE TABLE `jjy_studentid` (
  `number` char(11) NOT NULL,
  `sno` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jjy_studentid
-- ----------------------------
