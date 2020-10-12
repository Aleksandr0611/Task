-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 12 2020 г., 06:37
-- Версия сервера: 5.6.47
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id_author` int(11) NOT NULL,
  `name_author` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id_author`, `name_author`, `surname`) VALUES
(1, ' Дэвид Стивен', 'Митчелл'),
(2, 'Вася', 'Пупкин'),
(3, 'Джон', 'Макейн'),
(4, 'Коля', 'Иванов');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `isbn` varchar(55) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `number_pages` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id_book`, `isbn`, `name`, `date`, `number_pages`, `id_genre`) VALUES
(1, '978-5-389-11221-6', 'Облачный атлас', '2020-09-01', 670, 1),
(2, '978-5-389-15526-8', 'Тысяча осеней Якоба де Зута', '2020-10-01', 700, 1),
(3, '978-5-389-11221-5', 'сон', '2020-10-02', 400, 1),
(4, '978-5-389-11221-4', 'кот', '2020-10-03', 150, 2),
(5, '978-5-389-11221-3', 'Челюсти', '2020-08-04', 700, 4),
(6, '878-5-389-11221-3', 'Дом', '2020-09-29', 456, 5),
(7, '978-5-389-11211-7', 'Феникс', '2020-10-06', 865, 1),
(8, '878-5-389-11255-3', 'Гари Потер', '2020-10-07', 855, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `books_author`
--

CREATE TABLE `books_author` (
  `id_book` int(11) NOT NULL,
  `id_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books_author`
--

INSERT INTO `books_author` (`id_book`, `id_author`) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 2),
(5, 2),
(5, 1),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id_genre` int(11) NOT NULL,
  `name_genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id_genre`, `name_genre`) VALUES
(1, 'Фантастика'),
(2, 'Комедии'),
(3, 'Боевик'),
(4, 'Ужасы'),
(5, 'триллер');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id_author`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id_genre`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id_genre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
