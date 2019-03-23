-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 08 2016 г., 17:00
-- Версия сервера: 5.5.47-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Ключи к играм'),
(2, 'Аккаунты');

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `name`, `value`) VALUES
(1, 'gdonate_publickey', '3d89b-1289'),
(2, 'gdonate_secretkey', 'd3d89b28fc6adf986f5a8883dcee45ef');

-- --------------------------------------------------------

--
-- Структура таблицы `md5`
--

CREATE TABLE IF NOT EXISTS `md5` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `md5` text COLLATE utf8_unicode_ci NOT NULL,
  `tovar` text COLLATE utf8_unicode_ci NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=503 ;

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `name`, `text`) VALUES
(1, 'О нас', 'Что такое <b>Takky-Shop</b>? В первую очередь это сервис автоматизации продаж цифровых товаров, посредством предоставления качественной торговой площадки. Хотите продавать игровые аккаунты, ключи и иные цифровые товары? Тогда Вы попали по адресу, ведь за Вас все сделает Takky-shop. Покупателю мгновенное получение товара, а Вам гарантированная оплата, без риска мошенничества. <br><br><i>Вся оплата происходит через сервисы приёма платежей: Gdonate.</i><br><br>Так что не теряйте времени с продажей.   \n    '),
(2, 'Как купить?', 'Ваш текст, текст, текст..'),
(3, 'Контакты', 'Ваш текст, текст, текст..'),
(4, 'Отзывы', 'Ваш текст, текст, текст..');

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `method` text COLLATE utf8_unicode_ci NOT NULL,
  `projectId` text COLLATE utf8_unicode_ci NOT NULL,
  `sum` text COLLATE utf8_unicode_ci NOT NULL,
  `sign` text COLLATE utf8_unicode_ci NOT NULL,
  `gdonateId` text COLLATE utf8_unicode_ci NOT NULL,
  `paymentType` text COLLATE utf8_unicode_ci NOT NULL,
  `date` text COLLATE utf8_unicode_ci NOT NULL,
  `owner` text COLLATE utf8_unicode_ci NOT NULL,
  `md5` text COLLATE utf8_unicode_ci NOT NULL,
  `attempts` text COLLATE utf8_unicode_ci NOT NULL,
  `received` text COLLATE utf8_unicode_ci NOT NULL,
  `tovar` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=768 ;

--
-- Дамп данных таблицы `payments`
--

INSERT INTO `payments` (`id`, `method`, `projectId`, `sum`, `sign`, `gdonateId`, `paymentType`, `date`, `owner`, `md5`, `attempts`, `received`, `tovar`) VALUES
(766, 'pay', '1289', '1', 'bf5e491dbe94e2661518b748f48882d0', '65634', 'freekassa', '2016-05-08 15:14:25', 'lol', '29d0275d769767a1eedd4348aa824b9b', '4', ' 9', '13');

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE IF NOT EXISTS `tovar` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `price` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL,
  `orders` int(11) NOT NULL DEFAULT '0',
  `img1` text COLLATE utf8_unicode_ci NOT NULL,
  `screen1` text COLLATE utf8_unicode_ci NOT NULL,
  `screen2` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id`, `name`, `desc`, `keywords`, `price`, `link`, `category`, `orders`, `img1`, `screen1`, `screen2`) VALUES
(13, 'РАНДОМНЫЙ КЛЮЧ- SILVER', 'Данный товар, это подписанный ключ для Steam с любой случайной игрой до 150 рублей.<br>Активация: нажмите в Steam клиенте в левом нижнем углу "Добавить игру" -> "Активировать в Steam", и скопируйте туда ключ без названия.<br>Шанс получить игру дороже 50 рублей - 80%', 'cs, csgo, кс, го, гоу, ксго, ксгоу, ключ, аккаунт, рандом, pc, xbox one, playstation 4, steam, stopgame, stopgame.ru, игры, the witness, xcom 2, far cry primal, tom clancy''s the division, hitman, torment: tides of numenera, quantum break, dark souls iii, doom, mafia iii, uncharted 4: a thief''s end, mirror''s edge catalyst, no man''s sky, overwatch, hellblade, the last guardian, gran turismo sport, star citizen, kingdom come: deliverance, deus ex: mankind divided, gears of war 4, mass effect: andromeda, routine, detroit: become human, south park: the fractured but whole, top, far cry: primal, adr1ft, dark souls 3, uncharted 4: a thief’s end, total war: warhammer, mirror’s edge: catalyst, mafia 3, dishonored 2, outlast 2, tom clancy’s ghost recon: wildlands, gta, 5, гта,', '1', '1, 5, 6, 7, 10', '1', 13, 'http://i.imgur.com/jHhfXbS.png', 'http://i.imgur.com/Xp1mHB4.jpg', 'http://i.imgur.com/T8DERaq.png'),
(14, 'РАНДОМНЫЙ КЛЮЧ-BRONZE BOX', 'Данный товар, это подписанный ключ для Steam с любой случайной игрой до 350 рублей.<br>Активация: нажмите в Steam клиенте в левом нижнем углу "Добавить игру" -> "Активировать в Steam", и скопируйте туда ключ без названия.<br>Шанс получить игру дороже 250 рублей - 89%', 'cs, csgo, кс, го, гоу, ксго, ксгоу, ключ, аккаунт, рандом, pc, xbox one, playstation 4, steam, stopgame, stopgame.ru, игры, the witness, xcom 2, far cry primal, tom clancy''s the division, hitman, torment: tides of numenera, quantum break, dark souls iii, doom, mafia iii, uncharted 4: a thief''s end, mirror''s edge catalyst, no man''s sky, overwatch, hellblade, the last guardian, gran turismo sport, star citizen, kingdom come: deliverance, deus ex: mankind divided, gears of war 4, mass effect: andromeda, routine, detroit: become human, south park: the fractured but whole, top, far cry: primal, adr1ft, dark souls 3, uncharted 4: a thief’s end, total war: warhammer, mirror’s edge: catalyst, mafia 3, dishonored 2, outlast 2, tom clancy’s ghost recon: wildlands, gta, 5, гта,', '50', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '1', 0, 'http://i.imgur.com/1L7WSoU.png', 'http://i.imgur.com/Xp1mHB4.jpg', 'http://i.imgur.com/T8DERaq.png'),
(15, 'РАНДОМНЫЙ КЛЮЧ- GOLDEN BOX', 'Данный товар, это подписанный ключ для Steam с любой случайной игрой до 650 рублей.<br>Активация: нажмите в Steam клиенте в левом нижнем углу "Добавить игру" -> "Активировать в Steam", и скопируйте туда ключ без названия.<br>Шанс получить игру дороже 550 рублей - 78%', 'cs, csgo, кс, го, гоу, ксго, ксгоу, ключ, аккаунт, рандом, pc, xbox one, playstation 4, steam, stopgame, stopgame.ru, игры, the witness, xcom 2, far cry primal, tom clancy''s the division, hitman, torment: tides of numenera, quantum break, dark souls iii, doom, mafia iii, uncharted 4: a thief''s end, mirror''s edge catalyst, no man''s sky, overwatch, hellblade, the last guardian, gran turismo sport, star citizen, kingdom come: deliverance, deus ex: mankind divided, gears of war 4, mass effect: andromeda, routine, detroit: become human, south park: the fractured but whole, top, far cry: primal, adr1ft, dark souls 3, uncharted 4: a thief’s end, total war: warhammer, mirror’s edge: catalyst, mafia 3, dishonored 2, outlast 2, tom clancy’s ghost recon: wildlands, gta, 5, гта,', '70', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '1', 0, 'http://i.imgur.com/zpMZWBL.png', 'http://i.imgur.com/Xp1mHB4.jpg', 'http://i.imgur.com/T8DERaq.png'),
(16, 'РАНДОМНЫЙ КЛЮЧ- DIAMOND BOX', 'Данный товар, это подписанный ключ для Steam с любой случайной игрой до 1100 рублей.<br>Активация: нажмите в Steam клиенте в левом нижнем углу "Добавить игру" -> "Активировать в Steam", и скопируйте туда ключ без названия.<br>Шанс получить игру дороже 950 рублей - 87%', 'cs, csgo, кс, го, гоу, ксго, ксгоу, ключ, аккаунт, рандом, pc, xbox one, playstation 4, steam, stopgame, stopgame.ru, игры, the witness, xcom 2, far cry primal, tom clancy''s the division, hitman, torment: tides of numenera, quantum break, dark souls iii, doom, mafia iii, uncharted 4: a thief''s end, mirror''s edge catalyst, no man''s sky, overwatch, hellblade, the last guardian, gran turismo sport, star citizen, kingdom come: deliverance, deus ex: mankind divided, gears of war 4, mass effect: andromeda, routine, detroit: become human, south park: the fractured but whole, top, far cry: primal, adr1ft, dark souls 3, uncharted 4: a thief’s end, total war: warhammer, mirror’s edge: catalyst, mafia 3, dishonored 2, outlast 2, tom clancy’s ghost recon: wildlands, gta, 5, гта,', '120', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '1', 0, 'http://i.imgur.com/VcjFzwy.png', 'http://i.imgur.com/Xp1mHB4.jpg', 'http://i.imgur.com/T8DERaq.png'),
(17, 'РАНДОМНЫЙ КЛЮЧ- GABE BOX', 'Данный товар, это подписанный ключ для Steam с любой случайной игрой до 2500 рублей.<br>Активация: нажмите в Steam клиенте в левом нижнем углу "Добавить игру" -> "Активировать в Steam", и скопируйте туда ключ без названия.<br>Шанс получить игру дороже 1550 рублей - 77%', 'cs, csgo, кс, го, гоу, ксго, ксгоу, ключ, аккаунт, рандом, pc, xbox one, playstation 4, steam, stopgame, stopgame.ru, игры, the witness, xcom 2, far cry primal, tom clancy''s the division, hitman, torment: tides of numenera, quantum break, dark souls iii, doom, mafia iii, uncharted 4: a thief''s end, mirror''s edge catalyst, no man''s sky, overwatch, hellblade, the last guardian, gran turismo sport, star citizen, kingdom come: deliverance, deus ex: mankind divided, gears of war 4, mass effect: andromeda, routine, detroit: become human, south park: the fractured but whole, top, far cry: primal, adr1ft, dark souls 3, uncharted 4: a thief’s end, total war: warhammer, mirror’s edge: catalyst, mafia 3, dishonored 2, outlast 2, tom clancy’s ghost recon: wildlands, gta, 5, гта,', '350', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', '1', 0, 'http://i.imgur.com/eLRPINP.png', 'http://i.imgur.com/Xp1mHB4.jpg', 'http://i.imgur.com/T8DERaq.png'),
(18, 'Тестовая покупка', 'Данный товар предназначен для проверки работоспособности оплаты.', 'кс, го, гоу, ксго, ксгоу, ключ, аккаунт, рандом, pc, xbox one, playstation 4, steam, stopgame, stopgame.ru, игры, the witness, xcom 2, far cry primal, tom clancy''s the division, hitman, torment: tides of numenera, quantum break, dark souls iii, doom, mafia iii, uncharted 4: a thief''s end, mirror''s edge catalyst, no man''s sky, overwatch, hellblade, the last guardian, gran turismo sport, star citizen, kingdom come: deliverance, deus ex: mankind divided, gears of war 4, mass effect: andromeda, routine, detroit: become human, south park: the fractured but whole, top, far cry: primal, adr1ft, dark souls 3, uncharted 4: a thief’s end, total war: warhammer, mirror’s edge: catalyst, mafia 3, dishonored 2, outlast 2, tom clancy’s ghost recon: wildlands, gta, 5, гта,', '2', '1, 2, 3, 4, 6, 7, 8, 9, 10', '2', 14, 'http://i.imgur.com/aSnWcbX.png', 'http://i.imgur.com/FXUMgf9.png', 'http://i.imgur.com/aSnWcbX.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
