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

 Date: 22/12/2021 15:47:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
