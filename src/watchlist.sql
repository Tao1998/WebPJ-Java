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

 Date: 22/12/2021 15:48:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
