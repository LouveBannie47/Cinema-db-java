/*
 Navicat MySQL Dump SQL

 Source Server         : ma connexion mysql
 Source Server Type    : MySQL
 Source Server Version : 80044 (8.0.44)
 Source Host           : localhost:3306
 Source Schema         : cinemadb

 Target Server Type    : MySQL
 Target Server Version : 80044 (8.0.44)
 File Encoding         : 65001

 Date: 26/03/2026 12:40:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ajouédans
-- ----------------------------
DROP TABLE IF EXISTS `ajouédans`;
CREATE TABLE `ajouédans`  (
  `idActeur` int NULL DEFAULT NULL,
  `idFilm` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ajouédans
-- ----------------------------
INSERT INTO `ajouédans` VALUES (1, 1);
INSERT INTO `ajouédans` VALUES (2, 2);
INSERT INTO `ajouédans` VALUES (3, 3);
INSERT INTO `ajouédans` VALUES (4, 4);
INSERT INTO `ajouédans` VALUES (5, 5);

-- ----------------------------
-- Table structure for tableacteur
-- ----------------------------
DROP TABLE IF EXISTS `tableacteur`;
CREATE TABLE `tableacteur`  (
  `idActeur` int NOT NULL,
  `nomActeur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `prenomActeur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nationalite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idActeur`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tableacteur
-- ----------------------------
INSERT INTO `tableacteur` VALUES (1, 'DiCaprio', 'Leonardo', 'Américaine');
INSERT INTO `tableacteur` VALUES (2, 'Johansson', 'Scarlett', 'Américaine');
INSERT INTO `tableacteur` VALUES (3, 'Smith', 'Will', 'Américaine');
INSERT INTO `tableacteur` VALUES (4, 'Cotillard', 'Marion', 'Française');
INSERT INTO `tableacteur` VALUES (5, 'Reeves', 'Keanu', 'Canadienne');

-- ----------------------------
-- Table structure for tablefilm
-- ----------------------------
DROP TABLE IF EXISTS `tablefilm`;
CREATE TABLE `tablefilm`  (
  `idFilm` int NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `anneeSortie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dureeMinute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `realisateur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idFilm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tablefilm
-- ----------------------------
INSERT INTO `tablefilm` VALUES (1, 'Inception', '2010', 'Science-fiction', '148', 'Christopher Nolan');
INSERT INTO `tablefilm` VALUES (2, 'Lucy', '2014', 'Action', '89', 'Luc Besson');
INSERT INTO `tablefilm` VALUES (3, 'Men in Black', '1997', 'Science-fiction', '98', 'Barry Sonnenfeld');
INSERT INTO `tablefilm` VALUES (4, 'La Vie en Rose', '2007', 'Biopic', '140', 'Olivier Dahan');
INSERT INTO `tablefilm` VALUES (5, 'John Wick', '2014', 'Action', '101', 'Chad Stahelski');

SET FOREIGN_KEY_CHECKS = 1;
