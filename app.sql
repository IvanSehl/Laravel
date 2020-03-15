-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Бер 15 2020 р., 20:23
-- Версія сервера: 5.7.25
-- Версія PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `app`
--

-- --------------------------------------------------------

--
-- Структура таблиці `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `film_id`, `created_at`, `updated_at`) VALUES
(9, 1, 1, '2020-03-15 15:03:57', '2020-03-15 15:03:57'),
(10, 1, 2, '2020-03-15 15:04:10', '2020-03-15 15:04:10'),
(11, 2, 4, '2020-03-15 15:09:20', '2020-03-15 15:09:20');

-- --------------------------------------------------------

--
-- Структура таблиці `films`
--

CREATE TABLE `films` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `films`
--

INSERT INTO `films` (`id`, `title`, `subtitle`, `content`, `image`, `trailer_url`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Пушки Акимбо', 'Guns Akimbo', 'Про что фильм «Пушки Акимбо»:\r\nВ центре истории оказывается Майлз — заурядный разработчик видеоигр, который занимается бесперспективной работой, а также продолжает тосковать о Нове, своей бывшей девушке. Однажды жизнь Майлза меняется самым кардинальным образом, когда он, не по своей воле, становится новым участником безжалостных гладиаторских соревнований, транслируемых в прямом эфире по всему миру. Первое время ему без труда удается ускользать от поединков с потенциальными соперниками, но вскоре организаторы подпольных сражений похищают Нову, принуждая Майлза к решительным действиям...', 'akimbo.png', '<iframe width=\"968\" height=\"545\" src=\"https://www.youtube.com/embed/l6Dgq2OGx4Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'comedy', '2020-03-14 22:00:00', '2020-03-14 22:00:00'),
(2, 'Ангелы Чарли', 'Charlie\'s Angels', 'Про что фильм «Ангелы Чарли»:\r\nТрадиционные меры борьбы с преступностью оказались неэффективны, поэтому в помощь мировым спецслужбам было сформировано агентство Таунсенд, чьи штаб-квартиры открылись во всех ключевых точках планеты. Отличительной чертой подразделения стали женщины-оперативники, которые благодаря своему обаянию и нестандартному мышлению справлялись с самыми сложными миссиями. В центре истории находятся бывшая сотрудница МИ-6 Джейн Кано, профессиональная обольстительница Сабина Уилсон, а также компьютерный специалист Елена Хофлин, получившие задание поймать опасного торговца оружием и не дать новейшей военной разработке попасть на черный рынок...', 'angels.png', '<iframe width=\"968\" height=\"545\" src=\"https://www.youtube.com/embed/SAm_P2Y-eFY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'action', '2020-03-14 22:00:00', '2020-03-14 22:00:00'),
(3, 'Ип Ман 4', 'Yip Man 4 / Ip Man 4', 'Про что фильм «Ип Ман 4»:\r\nПосле смерти жены мастер кунг-фу Ип Ман узнает о собственной болезни, что подталкивает его к решительному шагу: он оставляет сына-бунтаря на попечение своего брата и летит в Сан-Франциско, чтобы подыскать парню новое, более подходящее место для учебы. Там он узнает, что его бывший ученик Брюс Ли открыл собственную школу боевых искусств Вин Чун и написал книгу на английском языке, раскрыв секреты китайских мастеров. Из-за этого у Ип Мана возникает конфликт с главой Объединенной благотворительной ассоциации Китая, от которого ему необходимо получить письмо для устройства сына в школу, однако это не останавливает мастера...', 'yip.png', '<iframe width=\"968\" height=\"545\" src=\"https://www.youtube.com/embed/zWSoRjEE1QY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'action', '2020-03-14 22:00:00', '2020-03-14 22:00:00'),
(4, 'Джуманджи: Новый уровень', 'Jumanji: The Next Level', 'Про что фильм «Джуманджи: Новый уровень»:\r\nСпенсер возвращается домой из колледжа на праздники. Ему предстоит присматривать за дедушкой Эдди, который переехал к семье после операции. В тот день, когда выжившие после приключений в Джуманджи должны были встретиться за завтраком, Спенсер неожиданно не приходит, поэтому Марта, Фридж и Бетани отправляются к нему домой, где они обнаруживают в подвале сломанную видеоигру. Друзья пытаются понять что произошло, но их самих затягивает в виртуальную реальность, а вместе с ними отправляются дедушка Эдди и его старый друг Майло. Новой команде предстоит найти Спенсера и пройти новые уровни игры...', 'jumanji.png', '<iframe width=\"968\" height=\"545\" src=\"https://www.youtube.com/embed/E_116VG-djE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'adventure', '2020-03-14 22:00:00', '2020-03-14 22:00:00');

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_13_170447_create_films_table', 1),
(5, '2020_03_13_170517_create_favorites_table', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_o_b` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `d_o_b`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sdf', 'saaa@gmail.com', '12342352', NULL, '$2y$10$IjkdfknOkt7.F1Fh8VM5fuS8dYDA9rM21mSa6qqYTQn8c2Z2.aku2', '2020-03-15', NULL, '2020-03-15 08:40:04', '2020-03-15 09:00:53'),
(2, NULL, 'sa234@gmail.com', '123123123', NULL, '$2y$10$cQKaXfodx.TkZXi4mKhSBuI8PZU4yU9znYxnzGDNYI40iB164uFQu', NULL, NULL, '2020-03-15 15:07:40', '2020-03-15 15:07:40'),
(3, NULL, 'saa23a@gmail.com', '12342352', NULL, '$2y$10$X/l5IL0j5c0KkuFDfHeaaeawQD4DS0JUqAO3PSckSN70I1Hr3UhXe', NULL, NULL, '2020-03-15 15:18:06', '2020-03-15 15:18:06');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблиці `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
