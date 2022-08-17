SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Se crea la BD: pelucanina
-- ----------------------------
DROP DATABASE IF EXISTS pelucanina;
CREATE DATABASE pelucanina CHARACTER SET utf8mb4;
USE pelucanina;

-- ----------------------------
-- Estructura de tabla: duenio
-- ----------------------------
DROP TABLE IF EXISTS `duenio`;
CREATE TABLE `duenio`  (
  `DNI` int NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Apellido` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Direccion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`DNI`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Registros de la tabla: duenio
-- ----------------------------
INSERT INTO `duenio` VALUES (23546987, 'Maria', 'Perez', '4789689', 'Pueyrredon  811');
INSERT INTO `duenio` VALUES (24675123, 'Pedro', 'Gomez', '4736754', 'Buenos Aires 1033');
INSERT INTO `duenio` VALUES (25642378, 'Josefina', 'Garcia', '4766921', 'San Luis 734');
INSERT INTO `duenio` VALUES (26871963, 'Pedro', 'Tuesto', '4735794', 'Rivadavia 123');
INSERT INTO `duenio` VALUES (27132548, 'Mario', 'Gomez', '4736945', 'Sarmiento 339');
INSERT INTO `duenio` VALUES (28957346, 'Juan', 'Perez', '4789689', 'Belgrano 101');
INSERT INTO `duenio` VALUES (30123987, 'Ariel', 'Sanchez', '4712374', 'San martin 123');
INSERT INTO `duenio` VALUES (31055784, 'Marianella', 'Gimenez', '4712478', 'Cordoba 946');

-- ----------------------------
-- Estructura de tabla: perro
-- ----------------------------
DROP TABLE IF EXISTS `perro`;
CREATE TABLE `perro`  (
  `ID_Perro` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DNI_Duenio` int NOT NULL,
  PRIMARY KEY (`ID_Perro`) USING BTREE,
  INDEX `Rel-Duenio-Perro`(`DNI_Duenio` ASC) USING BTREE,
  CONSTRAINT `Rel-Duenio-Perro` FOREIGN KEY (`DNI_Duenio`) REFERENCES `duenio` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Registros de la tabla: perro
-- ----------------------------
INSERT INTO `perro` VALUES (1, 'Frida', '2019-02-15', 'Hembra', 24675123);
INSERT INTO `perro` VALUES (2, 'Lennon', '2020-06-22', 'Macho', 25642378);
INSERT INTO `perro` VALUES (3, 'Olivia', '2017-10-26', 'Hembra', 27132548);
INSERT INTO `perro` VALUES (4, 'Toto', '2018-01-27', 'Macho', 30123987);
INSERT INTO `perro` VALUES (6, 'Firulais', '2022-02-07', 'Macho', 23546987);
INSERT INTO `perro` VALUES (7, 'Neron', '2021-10-25', 'Macho', 26871963);
INSERT INTO `perro` VALUES (8, 'Kity', '2020-07-15', 'Hembra', 30123987);

-- ----------------------------
-- Estructura de tabla: historial
-- ----------------------------
DROP TABLE IF EXISTS `historial`;
CREATE TABLE `historial`  (
  `ID_Historial` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Perro` int NOT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Monto` decimal(15, 2) NOT NULL,
  PRIMARY KEY (`ID_Historial`) USING BTREE,
  INDEX `Rel-Perro-Historial`(`Perro` ASC) USING BTREE,
  CONSTRAINT `Rel-Perro-Historial` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Registros de la tabla: historial
-- ----------------------------
INSERT INTO `historial` VALUES (1, '2021-02-17', 1, 'Bañarlo y peinarlo', 125.00);
INSERT INTO `historial` VALUES (2, '2021-07-15', 4, 'Corte de uñas', 50.00);

SET FOREIGN_KEY_CHECKS = 1;
