-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 16 2021 г., 11:27
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `N` int NOT NULL,
  `Код` int NOT NULL,
  `Назва` varchar(255) NOT NULL,
  `Ціна` decimal(9,2) NOT NULL,
  `Сторінки` smallint NOT NULL,
  `Дата` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `N`, `Код`, `Назва`, `Ціна`, `Сторінки`, `Дата`) VALUES
(1, 2, 5110, 'Аппаратные средства мультимедия. Видеосистема РС', '15.51', 400, '2000-07-24'),
(2, 8, 4985, 'Освой самостоятельно модернизацию и ремонт ПК за 24 часа, 2-е изд.', '18.90', 400, '2000-07-07'),
(3, 9, 5141, 'Структуры данных и алгоритмы.', '37.80', 400, '2000-09-29'),
(4, 20, 5127, 'Автоматизация инженерно-графических работ', '11.58', 400, '2000-06-15');

-- --------------------------------------------------------

--
-- Структура таблицы `категорія`
--

CREATE TABLE `категорія` (
  `id` int NOT NULL,
  `Категорія` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `категорія`
--

INSERT INTO `категорія` (`id`, `Категорія`, `id_category`) VALUES
(1, 'Підручники', 1),
(2, 'Апаратні засоби ПК', 2),
(3, 'Захист і безпека ПК', 1),
(4, 'Інші книги', 1),
(5, 'Windows 2000', 1),
(6, 'Linux', 1),
(7, 'Unix', 1),
(8, 'Інші операційні системи', 1),
(9, 'C&C++', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `видавництво`
--

CREATE TABLE `видавництво` (
  `id` int NOT NULL,
  `Видавництво` varchar(50) NOT NULL,
  `id_edition` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `видавництво`
--

INSERT INTO `видавництво` (`id`, `Видавництво`, `id_edition`) VALUES
(1, 'BHV С.-Петербург', 1),
(2, 'Вильямс', 2),
(3, 'Питер', 3),
(4, 'МикроАрт', 4),
(5, 'DiaSoft', 1),
(6, 'ДМК', 1),
(7, 'Триумф', 1),
(8, 'Эком', 1),
(9, 'Русская редакция', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `новинка`
--

CREATE TABLE `новинка` (
  `id` int NOT NULL,
  `Новинка` varchar(3) NOT NULL,
  `id_new` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `новинка`
--

INSERT INTO `новинка` (`id`, `Новинка`, `id_new`) VALUES
(13, 'Yes', 4),
(14, 'No', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `тираж`
--

CREATE TABLE `тираж` (
  `id` int NOT NULL,
  `Тираж` int DEFAULT NULL,
  `id_circulation` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `тираж`
--

INSERT INTO `тираж` (`id`, `Тираж`, `id_circulation`) VALUES
(2, 500, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `тема`
--

CREATE TABLE `тема` (
  `id` int NOT NULL,
  `Назва` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_topic` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `тема`
--

INSERT INTO `тема` (`id`, `Назва`, `id_topic`) VALUES
(4, 'Використання ПК в цілому', 1),
(5, 'Операційні системи', 2),
(6, 'Програмування', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `формат`
--

CREATE TABLE `формат` (
  `id` int NOT NULL,
  `Формат` varchar(9) DEFAULT NULL,
  `id_format` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `формат`
--

INSERT INTO `формат` (`id`, `Формат`, `id_format`) VALUES
(5, '70х100/16', 1),
(6, '84х108/16', 2),
(7, '60х88/16', 3),
(8, '60х84/16', 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `N` (`N`),
  ADD UNIQUE KEY `Код` (`Код`);

--
-- Индексы таблицы `категорія`
--
ALTER TABLE `категорія`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `видавництво`
--
ALTER TABLE `видавництво`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_edition` (`id_edition`);

--
-- Индексы таблицы `новинка`
--
ALTER TABLE `новинка`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_new` (`id_new`);

--
-- Индексы таблицы `тираж`
--
ALTER TABLE `тираж`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_circulation` (`id_circulation`);

--
-- Индексы таблицы `тема`
--
ALTER TABLE `тема`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Индексы таблицы `формат`
--
ALTER TABLE `формат`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_format` (`id_format`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `категорія`
--
ALTER TABLE `категорія`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `видавництво`
--
ALTER TABLE `видавництво`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `новинка`
--
ALTER TABLE `новинка`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `тираж`
--
ALTER TABLE `тираж`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `тема`
--
ALTER TABLE `тема`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `формат`
--
ALTER TABLE `формат`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `категорія`
--
ALTER TABLE `категорія`
  ADD CONSTRAINT `категорія_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `категорія_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `видавництво`
--
ALTER TABLE `видавництво`
  ADD CONSTRAINT `видавництво_ibfk_1` FOREIGN KEY (`id_edition`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `новинка`
--
ALTER TABLE `новинка`
  ADD CONSTRAINT `новинка_ibfk_1` FOREIGN KEY (`id_new`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `новинка_ibfk_2` FOREIGN KEY (`id_new`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `тираж`
--
ALTER TABLE `тираж`
  ADD CONSTRAINT `тираж_ibfk_1` FOREIGN KEY (`id_circulation`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `тема`
--
ALTER TABLE `тема`
  ADD CONSTRAINT `тема_ibfk_1` FOREIGN KEY (`id_topic`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `формат`
--
ALTER TABLE `формат`
  ADD CONSTRAINT `формат_ibfk_1` FOREIGN KEY (`id_format`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
