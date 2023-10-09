/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : hr

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-12-28 13:46:19
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
INSERT INTO `department` VALUES ('1', 'zhangsan', '17', 'lisi');
INSERT INTO `department` VALUES ('2', 'wangwu', '12', 'gouliu');
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
INSERT INTO `department` VALUES ('16', 'test', '1', 'zhangsan');
INSERT INTO `department` VALUES ('19', 'test for delete', '1', 'zhangsan');
