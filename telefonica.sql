-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para telefonica
CREATE DATABASE IF NOT EXISTS `telefonica` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `telefonica`;

-- Volcando estructura para tabla telefonica.movil
CREATE TABLE IF NOT EXISTS `movil` (
  `id_movil` bigint(20) NOT NULL AUTO_INCREMENT,
  `num_celular` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_movil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla telefonica.movil: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `movil` DISABLE KEYS */;
INSERT INTO `movil` (`id_movil`, `num_celular`, `created_at`) VALUES
	(1, '76964607', '2020-03-02 16:19:25');
/*!40000 ALTER TABLE `movil` ENABLE KEYS */;

-- Volcando estructura para tabla telefonica.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) DEFAULT NULL,
  `apellido` varchar(191) DEFAULT NULL,
  `cedula` varchar(191) DEFAULT NULL,
  `ciudad` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `id_movil` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_usuarios_movil` (`id_movil`),
  CONSTRAINT `FK_usuarios_movil` FOREIGN KEY (`id_movil`) REFERENCES `movil` (`id_movil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla telefonica.usuarios: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `cedula`, `ciudad`, `created_at`, `id_movil`) VALUES
	(1, 'marvin', 'fernandez', '9506285', 'cochabamba', '2020-03-02 16:19:11', 1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
