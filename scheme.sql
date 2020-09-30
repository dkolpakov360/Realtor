-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.29 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5958
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;

-- Dumping structure for table test.clients
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table test.clients: ~3 rows (approximately)
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`id`, `name`, `address`, `phone`) VALUES
	(1, 'Вася', 'Арбат 5-10', '89261234567'),
	(2, 'Петр', 'Арбат 7-2', '89161234567'),
	(3, 'Анна', 'Арбат 4-2', '89061234567');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

-- Dumping structure for table test.flats
CREATE TABLE IF NOT EXISTS `flats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `size` int(3) NOT NULL,
  `rooms` int(1) NOT NULL,
  `flour` int(2) NOT NULL,
  `other` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table test.flats: ~9 rows (approximately)
/*!40000 ALTER TABLE `flats` DISABLE KEYS */;
INSERT INTO `flats` (`id`, `address`, `size`, `rooms`, `flour`, `other`) VALUES
	(1, 'Арбат 1-12', 20, 1, 3, 'рядом школа'),
	(2, 'Арбат 2-16', 25, 1, 4, 'отличная детская площадка'),
	(3, 'Арбат 3-9', 35, 2, 3, 'рядом книжный'),
	(4, 'Арбат 4-12', 40, 3, 3, 'рядом библиотека'),
	(5, 'Арбат 5-24', 45, 2, 6, 'супермаркет на первом этаже'),
	(6, 'Арбат 6-20', 50, 3, 5, 'тихий район'),
	(7, 'Арбат 7-7', 25, 1, 2, 'двор без машин'),
	(8, 'Арбат 8-15', 35, 2, 4, 'рядом метро'),
	(9, 'Арбат 9-23', 45, 3, 6, 'что-то еще');
/*!40000 ALTER TABLE `flats` ENABLE KEYS */;

-- Dumping structure for table test.flat_pics
CREATE TABLE IF NOT EXISTS `flat_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flat_id` int(3) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table test.flat_pics: ~12 rows (approximately)
/*!40000 ALTER TABLE `flat_pics` DISABLE KEYS */;
INSERT INTO `flat_pics` (`id`, `flat_id`, `img`) VALUES
	(1, 1, 'asaWadashHja.jpg'),
	(2, 1, 'Kwendsam.jpg'),
	(3, 2, 'Ahqyskalc.jpg'),
	(4, 2, 'Kaduqweja.jpg'),
	(5, 3, 'Ahsjaqyjah.jpg'),
	(6, 3, 'sadjHqjsj.jpg'),
	(7, 3, 'sdasdhjmzja.jpg'),
	(8, 4, 'daWasWyruewl.jpg'),
	(9, 4, 'AshdsjW.jpg'),
	(10, 5, 'asdsadWyHY.jpg'),
	(11, 5, 'WgasahWY.jpg'),
	(12, 6, 'AhQJshJak.jpg'),
	(13, 6, 'asdasdqWURyj.jpg'),
	(14, 6, 'saSAWsa.jpg');
/*!40000 ALTER TABLE `flat_pics` ENABLE KEYS */;

-- Dumping structure for table test.realtion_client_flat
CREATE TABLE IF NOT EXISTS `realtion_client_flat` (
  `client_id` int(11) NOT NULL DEFAULT '0',
  `flat_id` int(11) NOT NULL DEFAULT '0',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `date_delete` timestamp NULL DEFAULT NULL,
  KEY `FK_data_clients` (`client_id`),
  KEY `FK_data_flats` (`flat_id`),
  CONSTRAINT `FK_data_clients` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `FK_data_flats` FOREIGN KEY (`flat_id`) REFERENCES `flats` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table test.realtion_client_flat: ~9 rows (approximately)
/*!40000 ALTER TABLE `realtion_client_flat` DISABLE KEYS */;
INSERT INTO `realtion_client_flat` (`client_id`, `flat_id`, `date_add`, `date_update`, `date_delete`) VALUES
	(1, 1, '2020-09-10 00:00:00', '2020-09-29 21:09:14', '2020-08-10 00:00:00'),
	(1, 2, '2020-09-10 00:00:00', '2020-09-29 21:09:16', '2020-08-10 00:00:00'),
	(1, 3, '2020-09-10 00:00:00', '2020-09-29 21:09:18', '2020-08-10 00:00:00'),
	(2, 4, '2020-09-10 00:00:00', '2020-09-29 21:09:20', '2020-08-10 00:00:00'),
	(2, 5, '2020-09-10 00:00:00', '2020-09-29 21:09:22', '2020-08-10 00:00:00'),
	(2, 6, '2020-09-10 00:00:00', '2020-09-29 21:09:24', '2020-08-10 00:00:00'),
	(3, 7, '2020-09-10 00:00:00', '2020-09-29 21:09:26', '2020-08-10 00:00:00'),
	(3, 8, '2020-09-10 00:00:00', '2020-09-29 21:09:28', '2020-08-10 00:00:00'),
	(3, 9, '2020-09-10 00:00:00', '2020-09-29 21:09:30', '2020-08-10 00:00:00');
/*!40000 ALTER TABLE `realtion_client_flat` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
