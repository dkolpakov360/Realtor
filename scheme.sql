-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 01 2020 г., 13:20
-- Версия сервера: 5.7.29
-- Версия PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `realtor`
--

-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `realtor` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `realtor`;

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `address`, `phone`) VALUES
(1, 'Вася', 'Арбат 5-10', '89261234567'),
(2, 'Петр', 'Арбат 7-2', '89161234567'),
(3, 'Анна', 'Арбат 4-2', '89061234567');

-- --------------------------------------------------------

--
-- Структура таблицы `flats`
--

CREATE TABLE `flats` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `size` int(3) NOT NULL,
  `rooms` int(1) NOT NULL,
  `flour` int(2) NOT NULL,
  `other` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `flats`
--

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

-- --------------------------------------------------------

--
-- Структура таблицы `flat_pics`
--

CREATE TABLE `flat_pics` (
  `id` int(11) NOT NULL,
  `flat_id` int(3) DEFAULT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `flat_pics`
--

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

-- --------------------------------------------------------

--
-- Структура таблицы `realtion_client_flat`
--

CREATE TABLE `realtion_client_flat` (
  `client_id` int(11) NOT NULL DEFAULT '0',
  `flat_id` int(11) NOT NULL DEFAULT '0',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `date_delete` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `realtion_client_flat`
--

INSERT INTO `realtion_client_flat` (`client_id`, `flat_id`, `date_add`, `date_update`, `date_delete`) VALUES
(1, 1, '2020-09-09 21:00:00', '2020-09-29 18:09:14', '2020-08-09 21:00:00'),
(1, 2, '2020-09-09 21:00:00', '2020-09-29 18:09:16', '2020-08-09 21:00:00'),
(1, 3, '2020-09-09 21:00:00', '2020-09-29 18:09:18', '2020-08-09 21:00:00'),
(2, 4, '2020-09-09 21:00:00', '2020-09-29 18:09:20', '2020-08-09 21:00:00'),
(2, 5, '2020-09-09 21:00:00', '2020-09-29 18:09:22', '2020-08-09 21:00:00'),
(2, 6, '2020-09-09 21:00:00', '2020-09-29 18:09:24', '2020-08-09 21:00:00'),
(3, 7, '2020-09-09 21:00:00', '2020-09-29 18:09:26', '2020-08-09 21:00:00'),
(3, 8, '2020-09-09 21:00:00', '2020-09-29 18:09:28', '2020-08-09 21:00:00'),
(3, 9, '2020-09-09 21:00:00', '2020-09-29 18:09:30', '2020-08-09 21:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `flats`
--
ALTER TABLE `flats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `flat_pics`
--
ALTER TABLE `flat_pics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `realtion_client_flat`
--
ALTER TABLE `realtion_client_flat`
  ADD KEY `FK_data_clients` (`client_id`),
  ADD KEY `FK_data_flats` (`flat_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `flats`
--
ALTER TABLE `flats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `flat_pics`
--
ALTER TABLE `flat_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `realtion_client_flat`
--
ALTER TABLE `realtion_client_flat`
  ADD CONSTRAINT `FK_data_clients` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FK_data_flats` FOREIGN KEY (`flat_id`) REFERENCES `flats` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
