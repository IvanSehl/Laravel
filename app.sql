-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Бер 09 2020 р., 01:49
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
-- Структура таблиці `films`
--

CREATE TABLE `films` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `triler_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `films`
--

INSERT INTO `films` (`id`, `title`, `subtitle`, `content`, `img_url`, `triler_url`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Ип Ман 4', 'Yip Man 4 / Ip Man 4', 'Про что фильм «Ип Ман 4»:\r\nПосле смерти жены мастер кунг-фу Ип Ман узнает о собственной болезни, что подталкивает его к решительному шагу: он оставляет сына-бунтаря на попечение своего брата и летит в Сан-Франциско, чтобы подыскать парню новое, более подходящее место для учебы. Там он узнает, что его бывший ученик Брюс Ли открыл собственную школу боевых искусств Вин Чун и написал книгу на английском языке, раскрыв секреты китайских мастеров. Из-за этого у Ип Мана возникает конфликт с главой Объединенной благотворительной ассоциации Китая, от которого ему необходимо получить письмо для устройства сына в школу, однако это не останавливает мастера...', 'yip.png', 'https://www.youtube.com/watch?v=zWSoRjEE1QY', 'action', NULL, NULL),
(2, 'Пушки Акимбо', 'Guns Akimbo', 'Про что фильм «Пушки Акимбо»:\r\nВ центре истории оказывается Майлз — заурядный разработчик видеоигр, который занимается бесперспективной работой, а также продолжает тосковать о Нове, своей бывшей девушке. Однажды жизнь Майлза меняется самым кардинальным образом, когда он, не по своей воле, становится новым участником безжалостных гладиаторских соревнований, транслируемых в прямом эфире по всему миру. Первое время ему без труда удается ускользать от поединков с потенциальными соперниками, но вскоре организаторы подпольных сражений похищают Нову, принуждая Майлза к решительным действиям...', 'akimbo.png', 'https://www.youtube.com/watch?v=cMo3-FJBPLw', 'comedy', NULL, NULL),
(3, 'Ангелы Чарли', 'Charlie\'s Angels', 'Про что фильм «Ангелы Чарли»:\r\nТрадиционные меры борьбы с преступностью оказались неэффективны, поэтому в помощь мировым спецслужбам было сформировано агентство Таунсенд, чьи штаб-квартиры открылись во всех ключевых точках планеты. Отличительной чертой подразделения стали женщины-оперативники, которые благодаря своему обаянию и нестандартному мышлению справлялись с самыми сложными миссиями. В центре истории находятся бывшая сотрудница МИ-6 Джейн Кано, профессиональная обольстительница Сабина Уилсон, а также компьютерный специалист Елена Хофлин, получившие задание поймать опасного торговца оружием и не дать новейшей военной разработке попасть на черный рынок...', 'angels.png', 'https://www.youtube.com/watch?v=SAm_P2Y-eFY&feature=emb_title', 'action', NULL, NULL),
(4, 'Джуманджи: Новый уровень', 'Jumanji: The Next Level', 'Про что фильм «Джуманджи: Новый уровень»:\r\nСпенсер возвращается домой из колледжа на праздники. Ему предстоит присматривать за дедушкой Эдди, который переехал к семье после операции. В тот день, когда выжившие после приключений в Джуманджи должны были встретиться за завтраком, Спенсер неожиданно не приходит, поэтому Марта, Фридж и Бетани отправляются к нему домой, где они обнаруживают в подвале сломанную видеоигру. Друзья пытаются понять что произошло, но их самих затягивает в виртуальную реальность, а вместе с ними отправляются дедушка Эдди и его старый друг Майло. Новой команде предстоит найти Спенсера и пройти новые уровни игры...', 'jumanji.png', 'https://www.youtube.com/watch?v=E_116VG-djE', 'adventures', NULL, NULL);

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
(4, '2020_03_07_151047_create_films_table', 1);

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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_o_b` date DEFAULT NULL,
  `favorite` json DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `phone`, `password`, `name`, `d_o_b`, `favorite`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saaa@gmail.com', NULL, '11111111111', '$2y$10$/ltRjTVVDk9sSfVaRgaS9u.giaWMHKL7T5UhYvJoFOn7/EP1iCFHy', 'sdf', '2020-03-08', '[\"2\", \"1\"]', NULL, '2020-03-08 19:27:45', '2020-03-08 19:27:45'),
(5, 'sehli5240@gmail.com', NULL, '111111111111', '$2y$10$7dGhmaDnRUXiAvrw95MWOeI0aDB8PIIjItmUfWtNOm7AaaqYAsEDe', NULL, NULL, NULL, NULL, '2020-03-08 20:46:57', '2020-03-08 20:46:57');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- AUTO_INCREMENT для таблиці `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
