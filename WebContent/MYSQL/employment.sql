/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : hr

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-12-28 13:46:24
*/

SET FOREIGN_KEY_CHECKS=0;

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
