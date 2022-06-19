-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 19 2022 г., 13:41
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_04_30_144705_products', 1),
(5, '2022_04_30_144724_service', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '1', ' 1001', 'http://localhost:8080/assets/img/rings/1.jpg', 'Описание товара', '5000', '2020-02-01 21:00:00', '2020-02-01 21:00:00'),
(2, '1', ' 1002', 'http://localhost:8080/assets/img/rings/2.jpg', 'Описание товара', '3500', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(3, '5', ' 5001', 'http://localhost:8080/assets/img/kresti/1.jpg', 'Описание товара', '4500', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(4, '1', ' 1003', 'http://localhost:8080/assets/img/rings/3.jpg', 'Описание товара', '7000', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(5, '1', ' 1004', 'http://localhost:8080/assets/img/rings/4.jpg', 'Описание товара', '5000', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(6, '1', ' 1005', 'http://localhost:8080/assets/img/rings/5.jpg', 'Описание товара', '10000', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(7, '1', ' 1006', 'http://localhost:8080/assets/img/rings/6.jpg', 'Описание товара', '7000', '2000-02-03 21:00:00', '2000-01-03 21:00:00'),
(8, '2', ' 2001', 'http://localhost:8080/assets/img/sergi/1.jpg', 'Описание товара', '10000', NULL, NULL),
(9, '3', ' 3001', 'http://localhost:8080/assets/img/cepochki/1.jpg', 'Описание товара', '10000', NULL, NULL),
(10, '4', ' 4001', 'http://localhost:8080/assets/img/brasleti/1.jpg', 'Описание товара', '10000', NULL, NULL),
(11, '6', ' 6001', 'http://localhost:8080/assets/img/kyloni/1.jpg', 'Описание товара', '2500', NULL, NULL),
(12, '7', ' 7001', 'http://localhost:8080/assets/img/podveski/1.jpg', 'Описание товара', '3000', NULL, NULL),
(13, '2', '2002', 'http://localhost:8080/assets/img/sergi/2.jpg', 'Описание товара', '5000', NULL, NULL),
(14, '2', '2003', 'http://localhost:8080/assets/img/sergi/3.jpg', 'Описание товара', '7000', NULL, NULL),
(15, '2', '2004', 'http://localhost:8080/assets/img/sergi/4.jpg', 'Описание товара', '9000', NULL, NULL),
(16, '2', '2005', 'http://localhost:8080/assets/img/sergi/5.jpg', 'Описание товара', '5000', NULL, NULL),
(17, '2', '2006', 'http://localhost:8080/assets/img/sergi/6.jpg', 'Описание товара', '3500', NULL, NULL),
(18, '3', '3002', 'http://localhost:8080/assets/img/cepochki/2.jpg', 'Описание товара', '3000', NULL, NULL),
(19, '3', '3003', 'http://localhost:8080/assets/img/cepochki/3.jpg', 'Описание товара', '4000', NULL, NULL),
(20, '3', '3004', 'http://localhost:8080/assets/img/cepochki/4.jpg', 'Описание товара', '5000', NULL, NULL),
(21, '3', '3005', 'http://localhost:8080/assets/img/cepochki/5.jpg', 'Описание товара', '2000', NULL, NULL),
(22, '3', '3006', 'http://localhost:8080/assets/img/cepochki/6.jpg', 'Описание товара', '5000', NULL, NULL),
(23, '4', '4002', 'http://localhost:8080/assets/img/brasleti/2.jpg', 'Описание товара', '2000', NULL, NULL),
(24, '4', '4003', 'http://localhost:8080/assets/img/brasleti/3.jpg', 'Описание товара', '3000', NULL, NULL),
(25, '4', '4004', 'http://localhost:8080/assets/img/brasleti/4.jpg', 'Описание товара', '2500', NULL, NULL),
(26, '4', '4005', 'http://localhost:8080/assets/img/brasleti/5.jpg', 'Описание товара', '4000', NULL, NULL),
(27, '4', '4006', 'http://localhost:8080/assets/img/brasleti/6.jpg', 'Описание товара', '1500', NULL, NULL),
(28, '5', '5002', 'http://localhost:8080/assets/img/kresti/2.jpg', 'Описание товара', '3500', NULL, NULL),
(29, '5', '5003', 'http://localhost:8080/assets/img/kresti/3.jpg', 'Описание товара', '4000', NULL, NULL),
(30, '5', '5004', 'http://localhost:8080/assets/img/kresti/4.jpg', 'Описание товара', '4500', NULL, NULL),
(31, '5', '5005', 'http://localhost:8080/assets/img/kresti/5.jpg', 'Описание товара', '3000', NULL, NULL),
(32, '5', '5006', 'http://localhost:8080/assets/img/kresti/6.jpg', 'Описание товара', '2500', NULL, NULL),
(33, '6', '6002', 'http://localhost:8080/assets/img/kyloni/2.jpg', 'Описание товара', '2500', NULL, NULL),
(34, '6', '6003', 'http://localhost:8080/assets/img/kyloni/3.jpg', 'Описание товара', '1500', NULL, NULL),
(35, '6', '6004', 'http://localhost:8080/assets/img/kyloni/4.jpg', 'Описание товара', '1000', NULL, NULL),
(36, '6', '6005', 'http://localhost:8080/assets/img/kyloni/5.jpg', 'Описание товара', '2000', NULL, NULL),
(37, '6', '6006', 'http://localhost:8080/assets/img/kyloni/6.jpg', 'Описание товара', '2000', NULL, NULL),
(38, '7', '7002', 'http://localhost:8080/assets/img/podveski/2.jpg', 'Описание товара', '1500', NULL, NULL),
(39, '7', '7003', 'http://localhost:8080/assets/img/podveski/3.jpg', 'Описание товара', '2000', NULL, NULL),
(40, '7', '7004', 'http://localhost:8080/assets/img/podveski/4.jpg', 'Описание товара', '2500', NULL, NULL),
(41, '7', '7005', 'http://localhost:8080/assets/img/podveski/5.jpg', 'Описание товара', '1000', NULL, NULL),
(42, '7', '7006', 'http://localhost:8080/assets/img/podveski/6.jpg', 'Описание товара', '2000', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`id`, `title`, `image_url`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Пайка (лазер) золото', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '350', NULL, NULL),
(2, 'Пайка (лазер) серебра', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '250', NULL, NULL),
(3, 'Уменьшение/увеличение кольца', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '350', NULL, NULL),
(4, 'Закрепка камня', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '150', NULL, NULL),
(5, 'Гравировка', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '850', NULL, NULL),
(6, 'Проектировка 3d модели', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '500', NULL, NULL),
(7, 'Чистка (шлифовка/полировка)', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '150', NULL, NULL),
(8, 'Ремонт серьг (ушко, флажок, резьба)', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '250', NULL, NULL),
(9, 'Ремонт штифта', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '450', NULL, NULL),
(10, 'Реставрация протертых мест', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '350', NULL, NULL),
(11, 'Изготовление обручальных колец классика (шайба, полукруглое)', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '1500', NULL, NULL),
(12, 'Изготовление всевозможных ювелирных изделий (по фото, эскизам, каталогам)', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '2500', NULL, NULL),
(13, 'Изготовление цепей золото (работа без учета металла, цена за грамм)', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '200', NULL, NULL),
(14, 'Изготовление цепей серебро (работа без учета металла, цена за грамм)', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '120', NULL, NULL),
(15, 'Замена замка золото', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '450', NULL, NULL),
(16, 'Замена замка серебро', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '350', NULL, NULL),
(17, 'Рост в воске (цена за куб)', 'http://localhost:8080/assets/img/yslyga.jpg', 'Описание услуги', '900', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'guest',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test_name', '88005353535', '152348', 'admin', '2022-04-30 12:46:53', '2022-04-30 12:46:53'),
(2, 'dfsz', '89206258542', '1596861284eqw', 'guest', '2022-05-06 06:33:23', '2022-05-06 06:33:23'),
(3, 'dsa', '89308351978', 'ewqczxb', 'guest', '2022-05-06 06:39:10', '2022-05-06 06:39:10'),
(4, 'vcxhgfr', '89308351977', 'ewqrtre', 'guest', '2022-05-16 09:51:39', '2022-05-16 09:51:39');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
