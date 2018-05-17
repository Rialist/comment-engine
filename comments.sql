-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 17 2018 г., 14:34
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `moya_basa_dannih`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `text_comment` text NOT NULL,
  `mail_temp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `text_comment`, `mail_temp`) VALUES
(6, 'Андрей', 'Это фейк. Они не сидели на камне 50 дет. Если присмотреться то то можно легко увидеть ее купальник отличается от того что на втором фото. А шорты парня имеют больше флоры на рисунке.', 'andrey_lol@mail.com'),
(7, 'Роман', 'Этот коммент заслуживает отдельного поста. \r\nЯ жену и сына будил, как нас в своё время старшина таким протяжным нараспев, ввинчивающимся в воздух гласом "Подъё-е-о-ом"! Мёртвые подскочат', 'nety@gmail.com'),
(9, 'wefwef', 'ewfwefewf ', 'wefwef@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
