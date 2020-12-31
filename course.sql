/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : course

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2017-12-28 15:48:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseID` int(16) NOT NULL COMMENT '课程编号',
  `coursename` varchar(64) NOT NULL COMMENT '课程名称',
  `coursetype` varchar(4) NOT NULL COMMENT '课程性质(1.公共课、2.必修课、3.选修课）',
  `coursehours` int(4) NOT NULL COMMENT '总学时',
  `teachhours` int(4) NOT NULL COMMENT '授课学时',
  `experimenthours` int(4) NOT NULL COMMENT '实验学时',
  `credit` int(4) NOT NULL COMMENT '学分',
  `coursestart` varchar(255) NOT NULL,
  `flag` int(4) NOT NULL,
  PRIMARY KEY (`courseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '人口学', '1', '64', '56', '8', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('2', '政治经济学', '1', '64', '56', '8', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('3', '经济思想史', '1', '64', '56', '8', '28', '2017-12-01', '0');
INSERT INTO `course` VALUES ('4', '发展经济学', '1', '64', '56', '8', '18', '2017-12-01', '0');
INSERT INTO `course` VALUES ('5', '数量经济学', '1', '64', '56', '8', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('6', '劳动经济学', '1', '64', '56', '8', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('7', '国防经济', '1', '64', '56', '8', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('8', '经济信息管理学', '1', '64', '56', '8', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('9', '网络经济学', '1', '64', '56', '8', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('10', '统计学', '1', '64', '56', '8', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('11', '应用 统计', '2', '64', '46', '8', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('12', '审计', '1', '64', '46', '18', '9', '2017-12-01', '0');
INSERT INTO `course` VALUES ('13', '财政学', '2', '64', '50', '14', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('14', '税收学', '2', '64', '50', '14', '8', '2017-12-01', '0');
INSERT INTO `course` VALUES ('15', '应用 数学', '2', '64', '50', '14', '4', '2017-12-22', '0');
INSERT INTO `course` VALUES ('16', '应用 英语', '3', '64', '50', '14', '6', '2017-12-23', '0');

-- ----------------------------
-- Table structure for courseinfo
-- ----------------------------
DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE `courseinfo` (
  `infoID` int(16) NOT NULL AUTO_INCREMENT,
  `userID` int(16) NOT NULL,
  `courseID` int(16) NOT NULL,
  PRIMARY KEY (`infoID`),
  KEY `c_ci_courseID` (`courseID`),
  KEY `u_ci_userID` (`userID`),
  CONSTRAINT `c_ci_courseID` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  CONSTRAINT `u_ci_userID` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courseinfo
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `grade` int(16) NOT NULL,
  `flag` int(4) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '管理员', 'admin', '123456', '0', '0');
INSERT INTO `user` VALUES ('2', '刘小能', 'ly', '123456', '1', '0');
