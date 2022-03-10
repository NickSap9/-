-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 18 2016 г., 21:14
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `ucheba1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ida` int(11) NOT NULL AUTO_INCREMENT,
  `passadmin` varchar(45) DEFAULT NULL,
  `logadmin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ida`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `chet`
--

CREATE TABLE IF NOT EXISTS `chet` (
  `idchet` int(11) NOT NULL AUTO_INCREMENT,
  `idklientchet` int(11) NOT NULL,
  `datechet` text NOT NULL,
  `nomer` int(11) NOT NULL,
  `nameigra` varchar(255) NOT NULL,
  `timeigra` varchar(12) NOT NULL,
  `statchet` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idchet`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=194 ;

--
-- Дамп данных таблицы `chet`
--

INSERT INTO `chet` (`idchet`, `idklientchet`, `datechet`, `nomer`, `nameigra`, `timeigra`, `statchet`) VALUES
(193, 4, '2012-04-16 18:00', 41, 'Тестовая ', '', 0),
(192, 4, '2012-04-18 18:00', 40, 'математика', '', 0),
(187, 4, '2012-04-26 18:00', 37, '2323', '', 0),
(186, 4, '2012-04-26 18:00', 36, 'тест1', '', 0),
(190, 8, '2012-04-11 18:00', 39, '898989', '', 0),
(189, 8, '2012-04-26 18:00', 38, 'тест', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `idc` int(100) NOT NULL AUTO_INCREMENT,
  `tel` varchar(30) NOT NULL DEFAULT '0',
  `opistel` varchar(100) NOT NULL DEFAULT '0',
  `adres` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL DEFAULT '0',
  `opisemail` varchar(100) NOT NULL DEFAULT '0',
  `namec` varchar(255) NOT NULL DEFAULT '0',
  `idconka` int(11) NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=98 ;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`idc`, `tel`, `opistel`, `adres`, `email`, `opisemail`, `namec`, `idconka`) VALUES
(54, '0', '0', '0', '0', '0', '<br> АИС поддержки учета посещаемости и успеваемости студентов', 0),
(86, '0', 'основной', '0', '0', '0', '0', 10),
(85, '0', '0', 'Нет адреса', '0', '0', '0', 1),
(87, '0', 'вава', 'Москва, Садовая, 12-09', '0', '0', '0', 10),
(88, '0', '0', '0', '0', '3434', '0', 10),
(89, '0', 'Отдел продаж', '0', '0', '0', '0', 10),
(90, '0', '12', 'Нет адреса', '0', '0', '0', 9),
(91, '0', '0', 'Москва, Садовая, 12-09', '0', '0', '0', 11),
(92, '1231212', 'Основной ', '0', '0', '0', '0', 11),
(93, '0', '0', '0', '2455656', 'ICQ', '0', 11),
(94, '0', '0', 'Нет адреса', '0', '0', '0', 12),
(95, '0', '0', 'Нет адреса', '0', '0', '0', 13),
(96, '121212122', 'Отдел продаж', '0', '0', '0', '0', 11),
(97, '0', '0', '0', 'udacah', 'skype', '0', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `fak`
--

CREATE TABLE IF NOT EXISTS `fak` (
  `idfak` int(11) NOT NULL AUTO_INCREMENT,
  `namefak` text NOT NULL,
  `sokrfak` varchar(255) NOT NULL,
  `udalfak` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idfak`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `fak`
--

INSERT INTO `fak` (`idfak`, `namefak`, `sokrfak`, `udalfak`) VALUES
(1, 'Механико-математический факультет', 'ММФ', 0),
(2, 'Факультет биоинженерии и биоинформатики', 'ФББиБ', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `idgame` int(11) NOT NULL AUTO_INCREMENT,
  `idsotrg` int(11) NOT NULL,
  `idplg` int(11) NOT NULL,
  `rez` varchar(255) NOT NULL,
  `udalg` int(1) NOT NULL DEFAULT '0',
  `gamestat` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idgame`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=97 ;

--
-- Дамп данных таблицы `game`
--

INSERT INTO `game` (`idgame`, `idsotrg`, `idplg`, `rez`, `udalg`, `gamestat`) VALUES
(78, 42, 186, '1', 0, 1),
(77, 41, 190, '0', 0, 0),
(76, 41, 189, '0', 0, 0),
(75, 41, 187, '1', 0, 0),
(74, 41, 186, '0', 0, 0),
(73, 35, 190, '0', 0, 0),
(72, 36, 190, '0', 0, 0),
(71, 37, 190, '0', 0, 0),
(69, 39, 190, '0', 0, 0),
(68, 40, 190, '0', 0, 0),
(70, 38, 190, '0', 0, 0),
(67, 35, 189, '0', 0, 0),
(66, 36, 189, '0', 0, 0),
(65, 37, 189, '1', 0, 0),
(64, 38, 189, '0', 0, 0),
(80, 44, 186, '', 0, 0),
(79, 43, 186, '', 0, 0),
(63, 39, 189, '0', 0, 0),
(62, 40, 189, '1', 0, 0),
(61, 40, 187, '1', 0, 0),
(60, 40, 186, '1', 0, 1),
(59, 39, 187, '1', 0, 0),
(55, 37, 187, '0', 0, 0),
(54, 37, 186, '1', 0, 1),
(58, 39, 186, '0', 0, 0),
(56, 38, 186, '1', 0, 0),
(57, 38, 187, '0', 0, 0),
(81, 45, 186, '', 0, 0),
(82, 42, 191, '0', 0, 0),
(83, 45, 191, '0', 0, 0),
(84, 44, 191, '0', 0, 0),
(85, 42, 191, '0', 0, 0),
(86, 45, 191, '0', 0, 0),
(87, 44, 191, '0', 0, 0),
(88, 46, 186, '', 0, 0),
(89, 47, 186, '', 0, 0),
(90, 48, 186, '', 0, 0),
(91, 42, 193, '0', 0, 0),
(92, 48, 193, '0', 0, 0),
(93, 47, 193, '0', 0, 0),
(94, 46, 193, '1', 0, 1),
(95, 45, 193, '0', 0, 0),
(96, 44, 193, '0', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gruppa`
--

CREATE TABLE IF NOT EXISTS `gruppa` (
  `idgruppa` int(11) NOT NULL AUTO_INCREMENT,
  `namegruppa` varchar(255) NOT NULL,
  `idfakgr` int(11) NOT NULL,
  `udalgr` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idgruppa`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `gruppa`
--

INSERT INTO `gruppa` (`idgruppa`, `namegruppa`, `idfakgr`, `udalgr`) VALUES
(1, 'ММФ-1', 1, 0),
(2, 'ФББиБ-2', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `idh` int(11) NOT NULL AUTO_INCREMENT,
  `idsh` int(11) DEFAULT NULL,
  `hist` varchar(45) DEFAULT NULL,
  `sotr_idsotr` int(11) NOT NULL,
  PRIMARY KEY (`idh`),
  KEY `fk_history_sotr1` (`sotr_idsotr`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`idh`, `idsh`, `hist`, `sotr_idsotr`) VALUES
(1, 1, '01/04/10 22:47:03', 0),
(2, 1, '01/04/10 23:00:44', 0),
(3, 1, '01/04/10 1:25:22', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kaf`
--

CREATE TABLE IF NOT EXISTS `kaf` (
  `idkaf` int(11) NOT NULL AUTO_INCREMENT,
  `namekaf` text NOT NULL,
  `sokrkaf` varchar(255) NOT NULL,
  `udalkaf` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idkaf`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `kaf`
--

INSERT INTO `kaf` (`idkaf`, `namekaf`, `sokrkaf`, `udalkaf`) VALUES
(1, 'Программирования', 'П', 0),
(2, 'Прикладного программирования', 'ПП', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Klient`
--

CREATE TABLE IF NOT EXISTS `klient` (
  `idKlient` int(11) NOT NULL AUTO_INCREMENT,
  `namekl` varchar(255) DEFAULT NULL,
  `udalKl` int(1) NOT NULL DEFAULT '0',
  `imagekl` varchar(255) NOT NULL,
  `opisigra` text NOT NULL,
  PRIMARY KEY (`idKlient`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `Klient`
--

INSERT INTO `Klient` (`idKlient`, `namekl`, `udalKl`, `imagekl`, `opisigra`) VALUES
(4, 'Контрольная работа', 0, 'base.png', ''),
(5, 'Лабораторная работа', 0, 'text.png', ''),
(6, 'Тестирование', 0, 'trans.png', ''),
(10, 'Практическая работа', 0, 'navi.png', '');

-- --------------------------------------------------------

--
-- Структура таблицы `predmet`
--

CREATE TABLE IF NOT EXISTS `predmet` (
  `idpr` int(11) NOT NULL AUTO_INCREMENT,
  `predmet` text NOT NULL,
  `sokrpredmet` varchar(255) NOT NULL,
  `udalpr` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpr`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `predmet`
--

INSERT INTO `predmet` (`idpr`, `predmet`, `sokrpredmet`, `udalpr`) VALUES
(1, 'Высшая математика и начало анализа', 'ВИ иНА', 0),
(2, 'Программирование на языке высокого уровня', 'ПЯВУ', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `prepod`
--

CREATE TABLE IF NOT EXISTS `prepod` (
  `idsotr` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `parol` varchar(45) DEFAULT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `surname` varchar(45) DEFAULT NULL,
  `udal` int(1) NOT NULL,
  `idkafp` int(11) NOT NULL,
  `zvan` varchar(255) NOT NULL,
  PRIMARY KEY (`idsotr`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `prepod`
--

INSERT INTO `prepod` (`idsotr`, `name`, `login`, `parol`, `dates`, `surname`, `udal`, `idkafp`, `zvan`) VALUES
(1, 'Измаилов', '565656', '565656', '2012-04-19 20:00:00', 'Сидо Сидрович', 0, 1, 'доцент'),
(2, 'Грунов', '121212', '121212', '2012-04-15 20:00:00', 'Федор Федорович', 0, 2, 'кандидат технических наук');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `idres` int(11) NOT NULL AUTO_INCREMENT,
  `idigres` int(11) NOT NULL,
  `idplayerres` int(11) NOT NULL,
  `vopres` text NOT NULL,
  `otvetres` text NOT NULL,
  `timeres` varchar(255) NOT NULL,
  `statres` int(11) NOT NULL DEFAULT '0',
  `resultat` int(1) NOT NULL DEFAULT '0',
  `parser` int(1) NOT NULL DEFAULT '0',
  `otvetprav` text NOT NULL,
  PRIMARY KEY (`idres`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=123 ;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`idres`, `idigres`, `idplayerres`, `vopres`, `otvetres`, `timeres`, `statres`, `resultat`, `parser`, `otvetprav`) VALUES
(75, 162, 31, '50', '12', '', 2, 1, 0, ''),
(76, 162, 31, '51', '13', '', 2, 1, 0, ''),
(77, 162, 31, '52', '14', '', 2, 1, 0, ''),
(78, 162, 31, '53', '15', '', 2, 2, 0, ''),
(79, 162, 31, '54', '16', '', 2, 2, 0, ''),
(80, 162, 29, '50', '21', '', 2, 1, 0, ''),
(81, 162, 29, '51', '22', '', 2, 2, 0, ''),
(82, 162, 29, '52', '23', '', 2, 2, 0, ''),
(83, 162, 29, '53', '24', '', 2, 2, 0, ''),
(84, 162, 29, '54', '25', '', 2, 1, 0, ''),
(85, 162, 30, '50', '33', '', 2, 1, 0, ''),
(86, 162, 30, '51', '34', '', 2, 2, 0, ''),
(87, 162, 30, '52', '35', '', 2, 1, 0, ''),
(88, 162, 30, '53', '36', '', 2, 1, 0, ''),
(89, 162, 30, '54', '37', '', 2, 1, 0, ''),
(90, 162, 32, '50', '123', '', 2, 1, 0, ''),
(91, 162, 32, '51', '1213', '', 2, 1, 0, ''),
(92, 162, 32, '52', '1332', '', 2, 1, 0, ''),
(93, 162, 32, '53', '23232', '', 2, 1, 0, ''),
(94, 162, 32, '54', '23232', '', 2, 1, 0, ''),
(102, 169, 33, '26', '12', '', 2, 2, 0, ''),
(100, 169, 33, '22', '123', '', 2, 2, 0, ''),
(103, 169, 33, '43', '1234', '', 2, 1, 0, ''),
(101, 169, 33, '27', '1223446', '', 2, 1, 0, ''),
(104, 181, 34, '55', '124', '', 2, 1, 0, ''),
(105, 181, 34, '56', '345', '', 2, 1, 0, ''),
(106, 181, 34, '57', '2343', '', 2, 1, 0, ''),
(107, 181, 34, '58', '4545', '', 2, 1, 0, ''),
(108, 186, 34, '60', '12', '', 2, 1, 0, ''),
(109, 186, 34, '61', '12', '', 2, 1, 0, ''),
(110, 186, 34, '62', '12', '', 2, 1, 0, ''),
(111, 186, 37, '60', '1212', '', 2, 2, 0, ''),
(112, 186, 37, '61', '1212', '', 2, 1, 0, ''),
(113, 186, 37, '62', '1212', '', 2, 2, 0, ''),
(114, 186, 40, '60', '1212', '', 2, 1, 0, ''),
(115, 186, 40, '61', '1212', '', 2, 2, 0, ''),
(116, 186, 40, '62', '1212', '', 2, 2, 0, ''),
(117, 186, 42, '60', ' fd', '', 2, 1, 0, ''),
(118, 186, 42, '61', ' ttrt', '', 2, 1, 0, ''),
(119, 186, 42, '62', ' bbefbef', '', 2, 1, 0, ''),
(120, 193, 46, '80', ' ответ 1', '', 2, 1, 0, ''),
(121, 193, 46, '81', ' ответ 2', '', 2, 2, 0, ''),
(122, 193, 46, '82', ' ответ 3', '', 2, 2, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `sotr`
--

CREATE TABLE IF NOT EXISTS `sotr` (
  `idsotr` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `dolg` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `parol` varchar(45) DEFAULT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `surname` varchar(45) DEFAULT NULL,
  `datebor` varchar(45) DEFAULT NULL,
  `udal` int(1) NOT NULL,
  `igri` int(11) NOT NULL,
  `gorod` varchar(255) NOT NULL,
  `scool` varchar(255) NOT NULL,
  `klass` varchar(4) NOT NULL,
  `stud` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsotr`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=49 ;

--
-- Дамп данных таблицы `sotr`
--

INSERT INTO `sotr` (`idsotr`, `name`, `dolg`, `login`, `parol`, `dates`, `surname`, `datebor`, `udal`, `igri`, `gorod`, `scool`, `klass`, `stud`) VALUES
(43, 'Сиоров', NULL, '111111', '111111', '2012-04-11 08:47:00', 'Петр Петрович', '2012-04-24', 1, 0, '', '', '2', 0),
(42, 'Иванов', NULL, '121212', '121212', '2012-04-11 08:35:56', 'Иван Иваныч', '2012-04-27', 0, 0, '', '', '2', 0),
(48, 'Вадимов', NULL, '787878', '787878', '2012-04-11 12:09:53', 'Абдурахман Федорович', '2012-04-09', 0, 0, '', '', '1', 0),
(47, 'Петров', NULL, '565656', '565656', '2012-04-11 12:09:39', 'Федор Иванович', '2012-04-25', 0, 0, '', '', '1', 0),
(46, 'Ивано ', NULL, '121212', '121212', '2012-04-11 12:09:27', 'Иван Иванович', '2012-04-11', 0, 0, '', '', '1', 0),
(45, 'Аншелов', NULL, '343434', '343434', '2012-04-11 09:42:01', 'Анваз Иванович', '2012-04-25', 0, 0, 'доцент', '', '1', 0),
(44, 'Сидоров ', NULL, '898989', '898989', '2012-04-11 09:41:40', 'Федор Иванович', '2012-04-18', 0, 0, 'доцент', '', '2', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idu` int(11) NOT NULL AUTO_INCREMENT,
  `nameuser` varchar(25) COLLATE cp1251_bin NOT NULL,
  `datereg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login` varchar(25) COLLATE cp1251_bin NOT NULL,
  `password` varchar(25) COLLATE cp1251_bin NOT NULL,
  `status` int(1) NOT NULL,
  `udaluser` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idu`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 COLLATE=cp1251_bin AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`idu`, `nameuser`, `datereg`, `login`, `password`, `status`, `udaluser`) VALUES
(1, 'superadmin', '2010-09-29 13:59:33', 'admin', 'admin', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `voprosi`
--

CREATE TABLE IF NOT EXISTS `voprosi` (
  `idv` int(11) NOT NULL AUTO_INCREMENT,
  `idigra` int(11) NOT NULL,
  `vopros` text NOT NULL,
  `otvet` text NOT NULL,
  `udalv` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idv`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=83 ;

--
-- Дамп данных таблицы `voprosi`
--

INSERT INTO `voprosi` (`idv`, `idigra`, `vopros`, `otvet`, `udalv`) VALUES
(31, 171, '32234234', '23123', 0),
(30, 171, '1234', '23123', 0),
(29, 171, '1213', '123', 0),
(47, 167, 'вопрос2', 'ответ2', 0),
(22, 169, 'вопрос 3', 'ответ 3', 0),
(27, 169, 'вопрос 2', 'ответ 2', 0),
(26, 169, 'вопрос 1', 'ответ 1', 0),
(19, 168, 'вопрос 4', 'вопрос 5', 0),
(18, 168, 'вопрос 2', 'ответ 3', 0),
(32, 172, 'вопрос 1', 'ответ 1', 0),
(33, 172, 'вопрос 2', 'ответ 2', 0),
(40, 177, 'вопрос 1', 'ответ1', 0),
(39, 176, 'вопрос 2', 'ответ 2', 0),
(38, 176, 'вопрос 1', 'ответ 1', 0),
(41, 179, 'вопрос 1', 'ответ 1', 0),
(42, 167, 'вопрос 23', 'ответ 23', 0),
(43, 169, 'вопрос 56', 'ответ 56', 0),
(44, 177, 'вопрос 23', 'ответ 56', 0),
(45, 177, 'вопрос 55', 'отве 77', 0),
(46, 180, 'вопрос1', 'ответ1', 0),
(48, 167, 'вопрос3', 'ответ3', 0),
(49, 167, 'вопрос4', 'ответ4', 0),
(50, 162, '121212', '121212', 0),
(51, 162, '121123434', '122334', 0),
(52, 162, '233435', '3432435', 0),
(53, 162, '324353465', '23234325434', 0),
(54, 162, '214556', '123325435', 0),
(55, 181, '1212', '1212', 0),
(56, 181, '1234', '1234', 0),
(57, 181, '1234', '4556', 0),
(58, 181, '23435', '67657', 0),
(60, 186, '1', '1', 0),
(61, 186, '1', '1', 0),
(62, 186, '1', '1', 0),
(63, 187, '23', '23', 0),
(64, 187, '24', '24', 0),
(65, 187, '24', '24', 0),
(67, 189, '123', '1213', 0),
(68, 189, '122435', '345353', 0),
(69, 189, '1322424', '24342', 0),
(70, 190, '56565', '5656', 0),
(71, 190, '565656565', '5656565', 0),
(72, 190, '56565656', '56565656', 0),
(73, 190, '556865856', '6656578657', 0),
(78, 192, 'вопрос 2', 'ответ2', 0),
(77, 192, 'вопрос 1', 'ответ1', 0),
(79, 192, 'вопрос 3', 'ответ 3', 0),
(80, 193, 'вопрос № 1', 'ответ № 1', 0),
(81, 193, 'вопрос № 2', 'ответ № 2', 0),
(82, 193, 'вопрос № 3', 'ответ № 3', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `zan`
--

CREATE TABLE IF NOT EXISTS `zan` (
  `idzan` int(11) NOT NULL AUTO_INCREMENT,
  `idgrz` int(11) NOT NULL,
  `idprz` int(11) NOT NULL,
  `datez` varchar(255) NOT NULL,
  `timez` varchar(20) NOT NULL,
  `udalz` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idzan`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `zan`
--

INSERT INTO `zan` (`idzan`, `idgrz`, `idprz`, `datez`, `timez`, `udalz`) VALUES
(1, 1, 1, '2012-04-03', '11.00', 0),
(2, 1, 1, '2012-04-12', '12.00', 0),
(3, 1, 1, '2012-04-13', '10.00', 0),
(4, 2, 2, '2012-04-12', '12.00', 0),
(5, 2, 2, '2012-04-12', '12.00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
