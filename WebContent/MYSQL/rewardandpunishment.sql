/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : hr

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-12-30 13:46:28
*/

SET FOREIGN_KEY_CHECKS=0;

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
