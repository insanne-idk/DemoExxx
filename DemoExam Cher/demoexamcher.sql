-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 04 2025 г., 19:14
-- Версия сервера: 5.7.24
-- Версия PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demoexamcher`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `ClientID` int(11) NOT NULL,
  `CompanyName` text NOT NULL,
  `NameClient` text NOT NULL,
  `ClientType` text NOT NULL,
  `Phone` text NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`ClientID`, `CompanyName`, `NameClient`, `ClientType`, `Phone`, `Rating`) VALUES
(1, 'StarTech', 'Ольга Козлова', 'ООО', '+79056789012', 8),
(2, 'NovaGroup', 'Павел Иванов', 'ИП', '+79057890123', 7),
(3, 'DigitalLab', 'Ирина Васильева', 'ООО', '+79058901234', 9),
(4, 'GlobalNet', 'Сергей Александров', 'ИП', '+79059012345', 6),
(5, 'GreenWorld', 'Наталья Петрова', 'ООО', '+79060123456', 5),
(6, 'QuantumTech', 'Александр Кузнецов', 'ИП', '+79061234567', 10),
(7, 'FutureTech', 'Екатерина Григорьева', 'ООО', '+79062345678', 4),
(8, 'CloudNet', 'Дмитрий Воронов', 'ИП', '+79063456789', 3),
(9, 'OptimaGroup', 'Марина Соколова', 'ООО', '+79064567890', 7),
(10, 'MaxTech', 'Алексей Михайлов', 'ИП', '+79065678901', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `ordern`
--

CREATE TABLE `ordern` (
  `ClientID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `ProductData` date NOT NULL,
  `Price` int(11) NOT NULL,
  `ammount` int(11) NOT NULL,
  `summ` int(11) NOT NULL,
  `FinalSum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ordern`
--

INSERT INTO `ordern` (`ClientID`, `ProductID`, `ProductName`, `ProductData`, `Price`, `ammount`, `summ`, `FinalSum`) VALUES
(1, 1, 'Батон', '2024-11-09', 45, 100, 4500, 4050),
(2, 2, 'Молоко', '2024-11-09', 145, 10, 1450, 1305),
(3, 3, 'Кефир', '2024-11-10', 90, 20, 1800, 1620),
(4, 4, 'Яйца', '2024-11-08', 60, 50, 3000, 2700),
(5, 5, 'Хлеб', '2024-11-11', 50, 80, 4000, 3600),
(6, 6, 'Сметана', '2024-11-11', 120, 25, 3000, 2700),
(7, 7, 'Масло', '2024-11-12', 200, 30, 6000, 5400);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientID`);

--
-- Индексы таблицы `ordern`
--
ALTER TABLE `ordern`
  ADD PRIMARY KEY (`ClientID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `ordern`
--
ALTER TABLE `ordern`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
