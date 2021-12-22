/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : easyproject

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 22/12/2021 15:47:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for easyuser
-- ----------------------------
DROP TABLE IF EXISTS `easyuser`;
CREATE TABLE `easyuser`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of easyuser
-- ----------------------------
INSERT INTO `easyuser` VALUES (1, 'admin', '123456', '123@qq.com', '超级管理员', 1);
INSERT INTO `easyuser` VALUES (3, 'flysky01', '98765465', 'qwe@qq.com', '普通用户', 1);
INSERT INTO `easyuser` VALUES (4, 'anglybirds', '321654', 'aaaa@163.com', '普通用户', 0);
INSERT INTO `easyuser` VALUES (7, 'admin003', 'q1234567', 'cghgjj@qq.com', '普通用户', 1);
INSERT INTO `easyuser` VALUES (8, 'admin005', '123456', 'cxz@qq.com', '普通用户', 0);
INSERT INTO `easyuser` VALUES (9, 'admin007', '123456', 'rty@qq.com', '普通用户', 0);
INSERT INTO `easyuser` VALUES (10, 'adfdfhsj', '123355', 'dsfahka@126.com', '普通用户', 0);
INSERT INTO `easyuser` VALUES (11, 'hhfdfds', 'sdfasdf', 'fdsaff@edu.cn', '普通用户', 0);
INSERT INTO `easyuser` VALUES (12, 'user01', '123456', '34579@163.com', '普通用户', 1);

-- ----------------------------
-- Table structure for mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `mainmenu`;
CREATE TABLE `mainmenu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mainmenu
-- ----------------------------
INSERT INTO `mainmenu` VALUES (100, '权限管理', '/admin');
INSERT INTO `mainmenu` VALUES (200, '电影平台', '/user');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `director` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` int NOT NULL,
  `imgSrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '扬名立万', '刘循子墨', '中国', 2021, '/imagebox/m1.jpg');
INSERT INTO `movie` VALUES (2, '007：无暇赴死 No Time to Die', '凯瑞·福永', '英国 / 美国', 2021, '/imagebox/m2.jpg');
INSERT INTO `movie` VALUES (3, '毒液2 Venom: Let There Be Carnage', '安迪·瑟金斯', '美国', 2021, '/imagebox/m3.jpg');
INSERT INTO `movie` VALUES (4, '沙丘 Dune', '丹尼斯·维伦纽瓦', '美国', 2021, '/imagebox/m4.jpg');
INSERT INTO `movie` VALUES (5, '误杀2', '戴墨', '中国', 2021, '/imagebox/m5.jpg');
INSERT INTO `movie` VALUES (6, '古董局中局', '郭子健', '中国', 2021, '/imagebox/m6.jpg');
INSERT INTO `movie` VALUES (7, '你的世界如果没有我', '刘伟恒', '中国', 2021, '/imagebox/m7.jpg');
INSERT INTO `movie` VALUES (8, '无尽攀登', '叶俊策', '中国', 2021, '/imagebox/m8.jpg');

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  CONSTRAINT `submenu_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `mainmenu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES (101, '用户列表', '/userlist', 100);
INSERT INTO `submenu` VALUES (102, '修改权限', '/rights', 100);
INSERT INTO `submenu` VALUES (201, '热门电影', '/introduction', 200);
INSERT INTO `submenu` VALUES (202, '想看列表', '/watchlist', 200);

-- ----------------------------
-- Table structure for watchlist
-- ----------------------------
DROP TABLE IF EXISTS `watchlist`;
CREATE TABLE `watchlist`  (
  `id` int NOT NULL,
  `mid` int NOT NULL,
  PRIMARY KEY (`id`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of watchlist
-- ----------------------------
INSERT INTO `watchlist` VALUES (1, 0);
INSERT INTO `watchlist` VALUES (1, 1);
INSERT INTO `watchlist` VALUES (1, 2);
INSERT INTO `watchlist` VALUES (1, 3);
INSERT INTO `watchlist` VALUES (1, 4);
INSERT INTO `watchlist` VALUES (1, 8);
INSERT INTO `watchlist` VALUES (2, 1);
INSERT INTO `watchlist` VALUES (2, 3);
INSERT INTO `watchlist` VALUES (3, 1);
INSERT INTO `watchlist` VALUES (3, 2);
INSERT INTO `watchlist` VALUES (7, 2);
INSERT INTO `watchlist` VALUES (12, 2);

SET FOREIGN_KEY_CHECKS = 1;
