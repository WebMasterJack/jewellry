-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 01 2022 г., 21:24
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jewapi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `image_url`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', 'ring', 'http://localhost:8080/assets/img/rings/1.jpg', 'DESC', '5000', '2020-02-01 21:00:00', '2020-02-01 21:00:00'),
(2, '1', 'ringtwo', 'http://localhost:8080/assets/img/rings/2.jpg', 'ewq', '4444', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(3, '5', 'krest', 'http://localhost:8080/assets/img/kresti/1.jpg', 'ewq', '4855', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(4, '1', 'ringthree', 'http://localhost:8080/assets/img/rings/3.jpg', 'ewq', '777', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(5, '1', 'ringfoo', 'http://localhost:8080/assets/img/rings/4.jpg', 'ewq', '7877', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(6, '1', 'ringfive', 'http://localhost:8080/assets/img/rings/5.jpg', 'ewq', '788777', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(7, '1', 'ringsix', 'http://localhost:8080/assets/img/rings/6.jpg', 'ewq', '7111', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(8, '2', 'АРТ 2001', 'http://localhost:8080/assets/img/sergi/1.jpg', 'serg', '10000', NULL, NULL),
(9, '3', 'АРТ 3001', 'http://localhost:8080/assets/img/cepochki/1.jpg', 'cepoch', '10000', NULL, NULL),
(10, '4', 'АРТ 4001', 'http://localhost:8080/assets/img/brasleti/1.jpg', 'braslet', '10000', NULL, NULL),
(11, '6', 'АРТ 6001', 'http://localhost:8080/assets/img/kyloni/1.jpg', 'kylon', '7000', NULL, NULL),
(12, '7', 'АРТ 7001', 'http://localhost:8080/assets/img/podveski/1.jpg', 'podveska', '1000', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
