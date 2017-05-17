CREATE DATABASE  IF NOT EXISTS `raspiDB`;
USE `raspiDB`;

DROP TABLE IF EXISTS `Sensores`;
CREATE TABLE `Sensores` (
  `id` varchar(36) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `Mediciones`;
CREATE TABLE `Mediciones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sensor` varchar(36) NOT NULL,
  `valor` float NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensorIdx` (`sensor`,`fecha`),
  CONSTRAINT `sensorFK` FOREIGN KEY (`sensor`) REFERENCES `Sensores` (`id`)
);