/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : hr

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-12-29 00:28:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'WenYiBu', '17', 'XieYi');
INSERT INTO `department` VALUES ('2', 'SuGuanBu', '12', 'ZhaoYifeng');
INSERT INTO `department` VALUES ('4', 'TiYuBu', '9', 'LuoJunwen');
INSERT INTO `department` VALUES ('5', '1', '1', '1');
INSERT INTO `department` VALUES ('6', '2', '2', '2');
INSERT INTO `department` VALUES ('7', '3', '3', '3');
INSERT INTO `department` VALUES ('8', '4', '4', '4');
INSERT INTO `department` VALUES ('9', '5', '5', '5');
INSERT INTO `department` VALUES ('10', '6', '6', '6');
INSERT INTO `department` VALUES ('11', '7', '7', '7');
INSERT INTO `department` VALUES ('12', '8', '8', '8');
INSERT INTO `department` VALUES ('13', '9', '9', '9');
INSERT INTO `department` VALUES ('14', '10', '10', '10');
INSERT INTO `department` VALUES ('15', '11', '11', '11');
INSERT INTO `department` VALUES ('16', 'test', '1', 'ChenWeizheng');
INSERT INTO `department` VALUES ('19', 'test for delete', '1', 'ChenWeizheng');

-- ----------------------------
-- Table structure for `employment`
-- ----------------------------
DROP TABLE IF EXISTS `employment`;
CREATE TABLE `employment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `get` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employment
-- ----------------------------

-- ----------------------------
-- Table structure for `reward&punishment`
-- ----------------------------
DROP TABLE IF EXISTS `reward&punishment`;
CREATE TABLE `reward&punishment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reward&punishment
-- ----------------------------

-- ----------------------------
-- Table structure for `salary`
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('1', 'ChenWeizheng', '12000');
INSERT INTO `salary` VALUES ('2', 'XieYi', '15000');

-- ----------------------------
-- Table structure for `staff`
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1', 'zhangsan', 'male', '21', 'computer', 'staff', '12000');
INSERT INTO `staff` VALUES ('2', 'lisi', 'female', '20', 'computer', 'staff', '15000');

-- ----------------------------
-- Table structure for `training`
-- ----------------------------
DROP TABLE IF EXISTS `training`;
CREATE TABLE `training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of training
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `actualname` varchar(255) NOT NULL,
  `identatyid` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', 'zhangsan', 'admin', '123456', '123456@qq.com', 'lisi', '1234567890', 'Thu Jan 1 21:15:05 CST 2021');
INSERT INTO `user` VALUES ('13', 'lisi', 'root', '0123456', '123456@qq.com', 'wangwu', '1234567890', 'Thu Jan 1 22:03:00 CST 2021');
