-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 20 2023 г., 15:29
-- Версия сервера: 10.11.2-MariaDB
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gs54606`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `referal` varchar(24) NOT NULL,
  `money` int(10) NOT NULL DEFAULT 0,
  `donate` int(10) NOT NULL DEFAULT 0,
  `donate_p` int(10) NOT NULL DEFAULT 0,
  `donate_all` int(10) NOT NULL DEFAULT 0,
  `sex` int(1) NOT NULL DEFAULT 0,
  `skin` int(3) NOT NULL DEFAULT 0,
  `lvl` int(10) NOT NULL DEFAULT 0,
  `exp` int(3) NOT NULL DEFAULT 0,
  `Myaso` int(3) NOT NULL DEFAULT 0,
  `member` int(10) NOT NULL DEFAULT 0,
  `podmember` int(2) NOT NULL DEFAULT 0,
  `rank` int(10) NOT NULL DEFAULT 0,
  `skinm` int(3) NOT NULL DEFAULT 0,
  `leader` int(10) NOT NULL DEFAULT 0,
  `admlvl` int(10) NOT NULL DEFAULT 0,
  `ADMINSNUMBER` int(5) DEFAULT NULL,
  `register_ip` varchar(16) NOT NULL DEFAULT '127.0.0.1',
  `login_ip` varchar(16) NOT NULL DEFAULT '127.0.0.1',
  `last_ip` int(20) DEFAULT NULL,
  `regdate_day` int(10) NOT NULL DEFAULT 0,
  `regdate_month` int(10) NOT NULL DEFAULT 0,
  `regdate_year` int(10) NOT NULL DEFAULT 0,
  `logdate_day` int(10) NOT NULL DEFAULT 0,
  `logdate_month` int(10) NOT NULL DEFAULT 0,
  `logdate_year` int(10) NOT NULL DEFAULT 0,
  `mute` int(10) NOT NULL DEFAULT 0,
  `mutetime` int(10) NOT NULL DEFAULT 0,
  `vmute` int(10) DEFAULT NULL,
  `vmutetime` int(10) DEFAULT NULL,
  `warn` int(10) NOT NULL DEFAULT 0,
  `warntime` int(10) NOT NULL DEFAULT 0,
  `salary` int(10) NOT NULL DEFAULT 0,
  `bank` int(10) NOT NULL DEFAULT 0,
  `licb` int(1) NOT NULL DEFAULT 0,
  `licg` int(1) NOT NULL DEFAULT 0,
  `business` int(10) NOT NULL DEFAULT -1,
  `house` int(10) NOT NULL DEFAULT -1,
  `kv` int(10) NOT NULL DEFAULT -1,
  `padik` int(10) NOT NULL DEFAULT -1,
  `jb` int(10) NOT NULL DEFAULT -1,
  `ab` int(10) NOT NULL DEFAULT -1,
  `car_1` int(10) NOT NULL DEFAULT 0,
  `carfuel_1` int(10) NOT NULL DEFAULT 0,
  `car_color1_1` int(10) NOT NULL DEFAULT 0,
  `car_color2_1` int(10) NOT NULL DEFAULT 0,
  `car_2` int(10) NOT NULL DEFAULT 0,
  `carfuel_2` int(10) NOT NULL DEFAULT 0,
  `car_color1_2` int(10) NOT NULL DEFAULT 0,
  `car_color2_2` int(10) NOT NULL DEFAULT 0,
  `car_3` int(10) NOT NULL DEFAULT 0,
  `carfuel_3` int(10) NOT NULL DEFAULT 0,
  `car_color1_3` int(10) NOT NULL DEFAULT 0,
  `car_tpposx` float DEFAULT NULL,
  `car_tpposy` float DEFAULT NULL,
  `car_tpposz` float DEFAULT NULL,
  `car_tpangle` float DEFAULT 268.932,
  `patr` int(10) NOT NULL DEFAULT 0,
  `met` int(10) NOT NULL DEFAULT 0,
  `drugs` int(10) NOT NULL DEFAULT 0,
  `wanted` int(10) NOT NULL DEFAULT 0,
  `number` int(10) NOT NULL DEFAULT 0,
  `number_m` int(10) NOT NULL DEFAULT 0,
  `jail` int(10) NOT NULL DEFAULT 0,
  `jailtime` int(10) NOT NULL DEFAULT 0,
  `demorgan` int(10) DEFAULT NULL,
  `demorgan_time` int(10) DEFAULT NULL,
  `phone` int(10) NOT NULL DEFAULT 0,
  `phonebook` int(10) NOT NULL DEFAULT 0,
  `healthchest` int(2) NOT NULL DEFAULT 0,
  `mask` int(2) NOT NULL DEFAULT 0,
  `dir` int(10) NOT NULL DEFAULT 0,
  `satiety` int(10) NOT NULL DEFAULT 0,
  `hp` int(10) NOT NULL DEFAULT 0,
  `arm` int(10) NOT NULL DEFAULT 0,
  `med` int(10) NOT NULL DEFAULT 0,
  `spawn` int(10) NOT NULL DEFAULT 0,
  `hospital` int(10) NOT NULL DEFAULT 0,
  `job` int(2) NOT NULL DEFAULT 0,
  `polit` int(10) NOT NULL DEFAULT 0,
  `d_skill` int(10) NOT NULL DEFAULT 0,
  `d_exp` int(10) NOT NULL DEFAULT 0,
  `gun0` int(10) NOT NULL DEFAULT 0,
  `gun1` int(10) NOT NULL DEFAULT 0,
  `gun2` int(10) NOT NULL DEFAULT 0,
  `gun3` int(10) NOT NULL DEFAULT 0,
  `gun4` int(10) NOT NULL DEFAULT 0,
  `gun5` int(10) NOT NULL DEFAULT 0,
  `gun6` int(10) NOT NULL DEFAULT 0,
  `gun7` int(10) NOT NULL DEFAULT 0,
  `gun8` int(10) NOT NULL DEFAULT 0,
  `gun9` int(10) NOT NULL DEFAULT 0,
  `gun10` int(10) NOT NULL DEFAULT 0,
  `gun11` int(10) NOT NULL DEFAULT 0,
  `gun12` int(10) NOT NULL DEFAULT 0,
  `ammo0` int(10) NOT NULL DEFAULT 0,
  `ammo1` int(10) NOT NULL DEFAULT 0,
  `ammo2` int(10) NOT NULL DEFAULT 0,
  `ammo3` int(10) NOT NULL DEFAULT 0,
  `ammo4` int(10) NOT NULL DEFAULT 0,
  `ammo5` int(10) NOT NULL DEFAULT 0,
  `ammo6` int(10) NOT NULL DEFAULT 0,
  `ammo7` int(10) NOT NULL DEFAULT 0,
  `ammo8` int(10) NOT NULL DEFAULT 0,
  `ammo9` int(10) NOT NULL DEFAULT 0,
  `ammo10` int(10) NOT NULL DEFAULT 0,
  `ammo11` int(10) NOT NULL DEFAULT 0,
  `ammo12` int(10) NOT NULL DEFAULT 0,
  `golos` int(1) NOT NULL DEFAULT 0,
  `pistol_skill` int(10) NOT NULL DEFAULT 0,
  `sdpistol_skill` int(10) NOT NULL DEFAULT 0,
  `deagle_skill` int(10) NOT NULL DEFAULT 0,
  `shotgun_skill` int(10) NOT NULL DEFAULT 0,
  `mp5_skill` int(10) NOT NULL DEFAULT 0,
  `ak47_skill` int(10) NOT NULL DEFAULT 0,
  `rifle_skill` int(10) NOT NULL DEFAULT 0,
  `zakon` int(10) NOT NULL DEFAULT 0,
  `vip` int(1) NOT NULL DEFAULT 0,
  `time` int(10) NOT NULL DEFAULT 0,
  `podarok1` int(1) NOT NULL DEFAULT 0,
  `podarok2` int(1) NOT NULL DEFAULT 0,
  `podarok3` int(1) NOT NULL DEFAULT 0,
  `podarok4` int(1) NOT NULL DEFAULT 0,
  `podarok5` int(1) NOT NULL DEFAULT 0,
  `podarok6` int(1) NOT NULL DEFAULT 0,
  `podarok7` int(1) NOT NULL DEFAULT 0,
  `podarok8` int(1) NOT NULL DEFAULT 0,
  `contry` int(2) NOT NULL DEFAULT 0,
  `enter_ip` varchar(16) NOT NULL DEFAULT '127.0.0.1',
  `startx` float NOT NULL DEFAULT 0,
  `starty` float NOT NULL DEFAULT 0,
  `startz` float NOT NULL DEFAULT 0,
  `virti` int(20) NOT NULL DEFAULT 0,
  `virtw` int(20) NOT NULL DEFAULT 0,
  `reports` int(4) NOT NULL DEFAULT 0,
  `unicalcode` int(20) DEFAULT NULL,
  `twarn` int(1) NOT NULL DEFAULT 0,
  `medcard` int(11) NOT NULL DEFAULT 0,
  `kepka` varchar(80) NOT NULL,
  `kepkastatus` int(11) NOT NULL DEFAULT 0,
  `contenter` varchar(120) NOT NULL,
  `kopters` varchar(120) NOT NULL,
  `fixnabor` varchar(120) NOT NULL,
  `timerank` int(11) NOT NULL DEFAULT 0,
  `military` int(11) NOT NULL DEFAULT 0,
  `HIDEME` int(11) NOT NULL DEFAULT 0,
  `licnum` int(15) NOT NULL DEFAULT 0,
  `mednum` int(15) NOT NULL DEFAULT 0,
  `transfer` int(11) NOT NULL DEFAULT 0,
  `transfer_frac` int(11) NOT NULL DEFAULT 0,
  `transfer_rang` int(11) NOT NULL DEFAULT 0,
  `group` int(11) NOT NULL DEFAULT 0,
  `pstatus` int(11) DEFAULT 0,
  `groupid` int(11) NOT NULL DEFAULT 0,
  `ASACHAT` int(11) NOT NULL DEFAULT 0,
  `HEALPACKSKLAD` int(11) NOT NULL DEFAULT 0,
  `CAPTUREKILL` int(11) NOT NULL DEFAULT 0,
  `BOOST` int(11) NOT NULL DEFAULT 0,
  `GPCIBAN` varchar(8) NOT NULL,
  `bang` int(11) NOT NULL DEFAULT 0,
  `bangun` int(11) NOT NULL DEFAULT 0,
  `GID` int(11) NOT NULL DEFAULT -1,
  `uid` int(11) NOT NULL DEFAULT 0,
  `KILLFIST` int(11) NOT NULL DEFAULT 0,
  `pgive` int(11) NOT NULL DEFAULT 0,
  `ptime` int(11) NOT NULL DEFAULT 0,
  `CAPTURECMD` int(11) NOT NULL DEFAULT 0,
  `vkleader` int(11) NOT NULL DEFAULT -1,
  `snow` int(11) NOT NULL DEFAULT 0,
  `promocode` int(11) NOT NULL DEFAULT 0,
  `GPCI_REG` text NOT NULL,
  `GPCI` text NOT NULL,
  `version` varchar(32) NOT NULL,
  `vkid` int(50) NOT NULL DEFAULT 0,
  `vkcode` int(12) NOT NULL DEFAULT -1,
  `vkcodesend` int(11) NOT NULL DEFAULT -1,
  `vksend` int(11) NOT NULL DEFAULT -1,
  `usedrugs` int(11) NOT NULL,
  `admvig` int(11) NOT NULL,
  `accessory_1` int(11) NOT NULL DEFAULT 0,
  `accessory_2` int(11) NOT NULL DEFAULT 0,
  `accessory_3` int(11) NOT NULL DEFAULT 0,
  `accessory_4` int(11) NOT NULL DEFAULT 0,
  `accessory_use` int(11) NOT NULL DEFAULT 0,
  `accessory_5` int(11) NOT NULL DEFAULT 0,
  `accessory_6` int(11) NOT NULL DEFAULT 0,
  `accessory_7` int(11) NOT NULL DEFAULT 0,
  `accessory_8` int(11) NOT NULL DEFAULT 0,
  `accessory_9` int(11) NOT NULL DEFAULT 0,
  `accessory_10` int(11) NOT NULL DEFAULT 0,
  `takeaks` int(11) NOT NULL DEFAULT 0,
  `returnadm` int(11) NOT NULL DEFAULT 0,
  `rep_adm` int(11) NOT NULL DEFAULT 0,
  `mp_adm` int(11) NOT NULL DEFAULT 0,
  `vkbot` int(11) NOT NULL DEFAULT 0,
  `send` int(11) NOT NULL DEFAULT 1,
  `showfps` int(11) NOT NULL DEFAULT 1,
  `last_password` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `email`, `referal`, `money`, `donate`, `donate_p`, `donate_all`, `sex`, `skin`, `lvl`, `exp`, `Myaso`, `member`, `podmember`, `rank`, `skinm`, `leader`, `admlvl`, `ADMINSNUMBER`, `register_ip`, `login_ip`, `last_ip`, `regdate_day`, `regdate_month`, `regdate_year`, `logdate_day`, `logdate_month`, `logdate_year`, `mute`, `mutetime`, `vmute`, `vmutetime`, `warn`, `warntime`, `salary`, `bank`, `licb`, `licg`, `business`, `house`, `kv`, `padik`, `jb`, `ab`, `car_1`, `carfuel_1`, `car_color1_1`, `car_color2_1`, `car_2`, `carfuel_2`, `car_color1_2`, `car_color2_2`, `car_3`, `carfuel_3`, `car_color1_3`, `car_tpposx`, `car_tpposy`, `car_tpposz`, `car_tpangle`, `patr`, `met`, `drugs`, `wanted`, `number`, `number_m`, `jail`, `jailtime`, `demorgan`, `demorgan_time`, `phone`, `phonebook`, `healthchest`, `mask`, `dir`, `satiety`, `hp`, `arm`, `med`, `spawn`, `hospital`, `job`, `polit`, `d_skill`, `d_exp`, `gun0`, `gun1`, `gun2`, `gun3`, `gun4`, `gun5`, `gun6`, `gun7`, `gun8`, `gun9`, `gun10`, `gun11`, `gun12`, `ammo0`, `ammo1`, `ammo2`, `ammo3`, `ammo4`, `ammo5`, `ammo6`, `ammo7`, `ammo8`, `ammo9`, `ammo10`, `ammo11`, `ammo12`, `golos`, `pistol_skill`, `sdpistol_skill`, `deagle_skill`, `shotgun_skill`, `mp5_skill`, `ak47_skill`, `rifle_skill`, `zakon`, `vip`, `time`, `podarok1`, `podarok2`, `podarok3`, `podarok4`, `podarok5`, `podarok6`, `podarok7`, `podarok8`, `contry`, `enter_ip`, `startx`, `starty`, `startz`, `virti`, `virtw`, `reports`, `unicalcode`, `twarn`, `medcard`, `kepka`, `kepkastatus`, `contenter`, `kopters`, `fixnabor`, `timerank`, `military`, `HIDEME`, `licnum`, `mednum`, `transfer`, `transfer_frac`, `transfer_rang`, `group`, `pstatus`, `groupid`, `ASACHAT`, `HEALPACKSKLAD`, `CAPTUREKILL`, `BOOST`, `GPCIBAN`, `bang`, `bangun`, `GID`, `uid`, `KILLFIST`, `pgive`, `ptime`, `CAPTURECMD`, `vkleader`, `snow`, `promocode`, `GPCI_REG`, `GPCI`, `version`, `vkid`, `vkcode`, `vkcodesend`, `vksend`, `usedrugs`, `admvig`, `accessory_1`, `accessory_2`, `accessory_3`, `accessory_4`, `accessory_use`, `accessory_5`, `accessory_6`, `accessory_7`, `accessory_8`, `accessory_9`, `accessory_10`, `takeaks`, `returnadm`, `rep_adm`, `mp_adm`, `vkbot`, `send`, `showfps`, `last_password`) VALUES
(1, 'Matvey_Velasquez', '4297f44b13955235245b2497399d7a93', '123123@gmail.com', '123123', 0, 0, 0, 0, 1, 135, 1, 1, 0, 5, 0, 10, 8, 5, 8, 0, '37.112.116.31', '37.112.116.31', NULL, 19, 3, 2023, 20, 3, 2023, 0, 0, 0, 0, 0, 0, 0, 57800, 1, 0, -1, -1, -1, -1, -1, -1, 0, 50, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 268.932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, -3, 30, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, '37.112.116.31', 1803.3, 2525.57, 15.6639, 0, 0, 0, 1000001, 0, 0, '', 0, '', '', '0', 0, 0, 0, 6489519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 2, 3, -1, 0, 0, '98FDCF9F95CCE844FF95F4ED94D88E8E98F99D9F', '98FDCF9F95CCE844FF95F4ED94D88E8E98F99D9F', '0.3.7', 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '123123'),
(2, 'Angel_Arigato', 'fe031f4cb9e80f03fe35161867e094c8', 'wdawdwd@gmail.com', '', 659814650, 9249249, 0, 0, 1, 134, 2, 0, 0, 5, 0, 10, 117, 5, 8, 666, '178.120.60.69', '178.120.60.69', NULL, 19, 3, 2023, 19, 3, 2023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, 50, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 268.932, 924924933, 924924933, 924924933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 924924912, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 0, 89, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, '178.120.60.69', -429.841, -1410.66, 41.869, 0, 0, 0, 1000002, 0, 0, '', 0, '', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, '4884C9F9AA95E090A9EDAC4DE459C480AD4C455C', '4884C9F9AA95E090A9EDAC4DE459C480AD4C455C', '0.3.7', 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '555333'),
(3, 'Deadinside_Velasquez', 'e10adc3949ba59abbe56e057f20f883e', 'asdasd@mail.ru', '', 0, 2210, 0, 0, 1, 134, 1, 0, 0, 0, 0, 0, 0, 0, 7, 66, '91.224.206.162', '91.224.206.162', NULL, 20, 3, 2023, 20, 3, 2023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, 50, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 268.932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, '127.0.0.1', 0, 0, 0.5, 2, 0, 0, 1000003, 0, 0, '', 0, '', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, '490C9AAACDD90E4C4CCC0CE9D595ECAD95855DF0', '', '', 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 9, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, ''),
(4, 'Dima_Saqura', 'baea4ee81ae1358d53a350e0592ba12d', 'wqdwdoh@mail.ru', 'd', 0, 0, 0, 0, 1, 230, 1, 1, 0, 6, 0, 9, 114, 0, 7, 111, '78.36.26.54', '78.36.26.54', NULL, 20, 3, 2023, 20, 3, 2023, 0, 0, 0, 0, 0, 0, 0, 56300, 1, 0, -1, -1, -1, -1, -1, -1, 0, 50, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 268.932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 1, 90, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, '127.0.0.1', 1897.68, 2191.43, 15.9317, 0, 0, 0, 1000004, 0, 0, '', 0, '', '', '0', 167940079, 0, 0, 3541112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, -1, 0, 0, 0, 2, 1, -1, 0, 0, '94499AD8D54A4CE8D9959AE0ECC8ADCA5C58D89C', '94499AD8D54A4CE8D9959AE0ECC8ADCA5C58D89C', '0.3.7', 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'DimaSokol241105'),
(5, 'Danil_Ulyanovskiy', 'bfb94a476c4f828e0653fcd29a6e5692', 'lenokuyanova1979@gmail.com', '', 26440000, 0, 0, 0, 1, 43, 2, 5, 0, 7, 0, 10, 118, 7, 8, 777, '89.179.66.201', '89.179.66.201', NULL, 20, 3, 2023, 20, 3, 2023, 0, 0, 0, 0, 0, 0, 0, 767000, 1, 0, 0, -1, -1, -1, -1, -1, 0, 50, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 268.932, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 10, 90, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, '89.179.66.201', 1972, 1663.75, 16.9946, 0, 0, 0, 1000005, 0, 0, '', 0, '', '', '0', 0, 0, 0, 6604822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 26, 0, -1, 0, 0, 'DEF89488FE559994CC4444044EFC8E904CD49AC0', 'DEF89488FE559994CC4444044EFC8E904CD49AC0', '0.3.7', 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, '14022006'),
(7, 'Kesha_Volosatiy', 'c8837b23ff8aaa8a2dde915473ce0991', 'ergegerger@gmail.com', '', 0, 0, 0, 0, 1, 137, 1, 0, 0, 0, 0, 0, 0, 0, 8, 8, '185.228.135.39', '185.228.135.195', NULL, 20, 3, 2023, 20, 3, 2023, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -1, -1, -1, -1, -1, 0, 50, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 268.932, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, -1, 90, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, '185.228.135.195', 2102.4, 1789.22, 11.8626, 0, 0, 0, 1000007, 0, 0, '', 0, '', '', '0', 0, 0, 0, 2298961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 'DE44DA0CDCDFCCEEAED4E589D5D5A594C400989C', 'DE44DA0CDCDFCCEEAED4E589D5D5A594C400989C', '0.3.7', 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '123321'),
(8, 'Tatsuki_Svoy', '35d420cd0ddd40ef82ec6495b2690baa', 'sadfdf@mail.ru', '', 0, 0, 0, 0, 1, 18, 1, 0, 0, 0, 0, 0, 0, 0, 6, 999, '46.138.167.22', '46.138.167.22', NULL, 20, 3, 2023, 20, 3, 2023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, 50, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 268.932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 0, 90, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, '46.138.167.22', 1502.57, -1249.79, 13.3357, 0, 0, 0, 1000008, 0, 0, '', 0, '', '', '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 'F8CF9F4E9DECC554C89CDD05E4FA9C4D48FD08C5', 'F8CF9F4E9DECC554C89CDD05E4FA9C4D48FD08C5', '0.3.7', 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '20062009');

-- --------------------------------------------------------

--
-- Структура таблицы `auto_business`
--

CREATE TABLE `auto_business` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(24) NOT NULL,
  `owned` int(1) NOT NULL DEFAULT 0,
  `price` int(10) NOT NULL DEFAULT 0,
  `bank` int(10) NOT NULL DEFAULT 0,
  `procent` int(10) NOT NULL DEFAULT 0,
  `car1_job` int(10) NOT NULL DEFAULT 0,
  `car2_job` int(10) NOT NULL DEFAULT 0,
  `car3_job` int(10) NOT NULL DEFAULT 0,
  `car4_job` int(10) NOT NULL DEFAULT 0,
  `car5_job` int(10) NOT NULL DEFAULT 0,
  `car6_job` int(10) NOT NULL DEFAULT 0,
  `car7_job` int(10) NOT NULL DEFAULT 0,
  `car1_posx` float NOT NULL DEFAULT 0,
  `car1_posy` float NOT NULL DEFAULT 0,
  `car1_posz` float NOT NULL DEFAULT 0,
  `car1_posa` float NOT NULL DEFAULT 0,
  `car2_posx` float NOT NULL DEFAULT 0,
  `car2_posy` float NOT NULL DEFAULT 0,
  `car2_posz` float NOT NULL DEFAULT 0,
  `car2_posa` float NOT NULL DEFAULT 0,
  `car3_posx` float NOT NULL DEFAULT 0,
  `car3_posy` float NOT NULL DEFAULT 0,
  `car3_posz` float NOT NULL DEFAULT 0,
  `car3_posa` float NOT NULL DEFAULT 0,
  `car4_posx` float NOT NULL DEFAULT 0,
  `car4_posy` float NOT NULL DEFAULT 0,
  `car4_posz` float NOT NULL DEFAULT 0,
  `car4_posa` float NOT NULL DEFAULT 0,
  `car5_posx` float NOT NULL DEFAULT 0,
  `car5_posy` float NOT NULL DEFAULT 0,
  `car5_posz` float NOT NULL DEFAULT 0,
  `car5_posa` float NOT NULL DEFAULT 0,
  `car6_posx` float NOT NULL DEFAULT 0,
  `car6_posy` float NOT NULL DEFAULT 0,
  `car6_posz` float NOT NULL DEFAULT 0,
  `car6_posa` float NOT NULL DEFAULT 0,
  `car7_posx` float NOT NULL DEFAULT 0,
  `car7_posy` float NOT NULL DEFAULT 0,
  `car7_posz` float NOT NULL DEFAULT 0,
  `car7_posa` float NOT NULL DEFAULT 0,
  `info_posx` float NOT NULL DEFAULT 0,
  `info_posy` float NOT NULL DEFAULT 0,
  `info_posz` float NOT NULL DEFAULT 0,
  `job_posx` float NOT NULL DEFAULT 0,
  `job_posy` float NOT NULL DEFAULT 0,
  `job_posz` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `banlist`
--

CREATE TABLE `banlist` (
  `id` int(10) NOT NULL,
  `name` varchar(24) NOT NULL,
  `admin` varchar(24) NOT NULL,
  `day` int(2) NOT NULL,
  `text` varchar(100) NOT NULL,
  `ip` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `black_list`
--

CREATE TABLE `black_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `business`
--

CREATE TABLE `business` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT 'none',
  `owner` varchar(24) NOT NULL DEFAULT 'none',
  `owned` int(1) NOT NULL DEFAULT 0,
  `price` int(10) NOT NULL DEFAULT 0,
  `mafia` int(10) NOT NULL DEFAULT 0,
  `enter_x` varchar(10) NOT NULL DEFAULT '0.0',
  `enter_y` varchar(10) NOT NULL DEFAULT '0.0',
  `enter_z` varchar(10) NOT NULL DEFAULT '0.0',
  `exit_x` varchar(10) NOT NULL DEFAULT '0.0',
  `exit_y` varchar(10) NOT NULL DEFAULT '0.0',
  `exit_z` varchar(10) NOT NULL DEFAULT '0.0',
  `exittp_x` float NOT NULL DEFAULT 0,
  `exittp_y` float NOT NULL DEFAULT 0,
  `exittp_z` float NOT NULL DEFAULT 0,
  `exittp_angle` float NOT NULL DEFAULT 0,
  `buy_x` varchar(10) NOT NULL DEFAULT '0.0',
  `buy_y` varchar(10) NOT NULL DEFAULT '0.0',
  `buy_z` varchar(10) NOT NULL DEFAULT '0.0',
  `prod` int(10) NOT NULL DEFAULT 0,
  `day` int(3) NOT NULL DEFAULT 0,
  `type` int(1) NOT NULL DEFAULT 0,
  `lock` int(1) NOT NULL DEFAULT 0,
  `bank` int(10) NOT NULL DEFAULT 0,
  `price_prod` int(10) NOT NULL DEFAULT 0,
  `cena` int(10) NOT NULL DEFAULT 0,
  `vw` int(10) NOT NULL DEFAULT 0,
  `int` int(10) NOT NULL DEFAULT 0,
  `mapicon` int(10) NOT NULL DEFAULT 0,
  `clients` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `business`
--

INSERT INTO `business` (`id`, `name`, `owner`, `owned`, `price`, `mafia`, `enter_x`, `enter_y`, `enter_z`, `exit_x`, `exit_y`, `exit_z`, `exittp_x`, `exittp_y`, `exittp_z`, `exittp_angle`, `buy_x`, `buy_y`, `buy_z`, `prod`, `day`, `type`, `lock`, `bank`, `price_prod`, `cena`, `vw`, `int`, `mapicon`, `clients`) VALUES
(1, 'Магазин', 'none', 0, 4500000, 0, '1950.208', '1899.386', '15.512', '578.531', '86.949', '382.67', 1953.34, 1898.37, 15.512, 264.026, '582.042', '80.453', '382.67', 0, 0, 2, 0, 0, 6, 0, 1, 1, 38, 0),
(2, 'Магазин', 'none', 0, 4500000, 0, '1940.041', '2039.056', '15.869', '578.531', '86.949', '382.67', 1941.52, 2042.73, 15.877, 352.617, '582.042', '80.453', '382.67', 0, 0, 2, 0, 0, 6, 0, 2, 1, 38, 0),
(3, 'Магазин одежды', 'none', 0, 5000000, 0, '1945.599', '2069.135', '16.199', '204.666', '872.082', '1019.15', 1944.96, 2065.76, 15.705, 177.11, '206.215', '868.552', '1019.12', 0, 0, 3, 0, 0, 3, 0, 3, 1, 45, 0),
(4, 'АЗС', 'none', 0, 7000000, 0, '1969.11', '1650.392', '15.92', '1969.11', '1650.392', '15.92', 1972.17, 1653.56, 15.92, 317.747, '1969.11', '1650.392', '15.92', 0, 0, 1, 0, 0, 4, 10, 0, 0, 47, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `donate`
--

CREATE TABLE `donate` (
  `id` int(11) NOT NULL,
  `nick` varchar(100) NOT NULL,
  `sum` int(11) NOT NULL,
  `give` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fractions_blacklist`
--

CREATE TABLE `fractions_blacklist` (
  `bl_player` int(6) NOT NULL,
  `bl_fraction` int(6) NOT NULL,
  `bl_name` varchar(64) NOT NULL,
  `bl_day` int(11) NOT NULL,
  `bl_reason` varchar(64) NOT NULL,
  `bl_dob` varchar(64) NOT NULL,
  `bl_rank` varchar(64) NOT NULL,
  `bl_id` int(11) NOT NULL,
  `bl_name2` varchar(64) NOT NULL,
  `id_bl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `gangzone`
--

CREATE TABLE `gangzone` (
  `gzid` int(3) NOT NULL,
  `gzminx` double NOT NULL,
  `gzminy` double NOT NULL,
  `gzmaxx` double NOT NULL,
  `gzmaxy` double NOT NULL,
  `gzopg` int(1) NOT NULL,
  `standart_team` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `gangzone`
--

INSERT INTO `gangzone` (`gzid`, `gzminx`, `gzminy`, `gzmaxx`, `gzmaxy`, `gzopg`, `standart_team`) VALUES
(1, 2590.1669921875, 1738.1666259765625, 2696.1669921875, 1802.1666259765625, 5, 5),
(2, 2590.1669921875, 1802.1666259765625, 2696.1669921875, 1866.1666259765625, 5, 5),
(3, 2590.1669921875, 1866.1666259765625, 2696.1669921875, 1930.1666259765625, 5, 5),
(4, 2484.1669921875, 1866.1666259765625, 2590.1669921875, 1930.1666259765625, 5, 5),
(5, 2484.1669921875, 1802.1666259765625, 2590.1669921875, 1866.1666259765625, 5, 5),
(6, 2249.1669921875, 1802.1666259765625, 2484.1669921875, 1930.1666259765625, 5, 5),
(7, 2143.1669921875, 1866.1666564941406, 2249.1669921875, 1930.1666564941406, 5, 5),
(8, 2143.1669921875, 1802.1666564941406, 2249.1669921875, 1866.1666564941406, 5, 5),
(9, 2036.1669921875, 1802.1666564941406, 2142.1669921875, 1866.1666564941406, 5, 5),
(10, 2035.1484375, 1866.171875, 2143.1484375, 1930.171875, 5, 5),
(11, 1930.1669921875, 1867.1666564941406, 2035.1669921875, 1930.1666564941406, 5, 5),
(12, 1930.1669921875, 1802.1666564941406, 2036.1669921875, 1866.1666564941406, 5, 5),
(13, 1825.1669921875, 1867.1666564941406, 1930.1669921875, 1930.1666564941406, 5, 5),
(14, 1825.1669921875, 1803.1666564941406, 1930.1669921875, 1866.1666564941406, 5, 5),
(15, 1824.1669921875, 1930.1666564941406, 2036.1669921875, 2014.1666564941406, 5, 5),
(16, 1824.1669921875, 2014.1666564941406, 2036.1669921875, 2097.1666564941406, 5, 5),
(17, 1824.1669921875, 2097.1666564941406, 2036.1669921875, 2181.1666564941406, 5, 5),
(18, 1824.1669921875, 2181.1666564941406, 2036.1669921875, 2265.1666564941406, 5, 5),
(19, 1824.1669921875, 2265.1666564941406, 2036.1669921875, 2349.1666564941406, 5, 5),
(20, 1672.1669921875, 2265.1666412353516, 1824.1669921875, 2349.1666412353516, 5, 5),
(21, 1672.1669921875, 2181.1666412353516, 1824.1669921875, 2265.1666412353516, 5, 5),
(22, 1672.1669921875, 2097.1666412353516, 1824.1669921875, 2181.1666412353516, 5, 5),
(23, 1672.1669921875, 2013.1666412353516, 1824.1669921875, 2097.1666412353516, 5, 5),
(24, 1672.1669921875, 1929.1666412353516, 1824.1669921875, 2013.1666412353516, 5, 5),
(25, 1672.1669921875, 1802.1666259765625, 1825.1669921875, 1929.1666259765625, 5, 5),
(26, 1672.1669921875, 1673.1666259765625, 2037.1669921875, 1802.1666259765625, 5, 5),
(27, 1672.1669921875, 1544.1666259765625, 2037.1669921875, 1673.1666259765625, 5, 5),
(28, 1307.1669921875, 1673.1666259765625, 1672.1669921875, 1802.1666259765625, 5, 5),
(29, 1307.1669921875, 1544.1666259765625, 1672.1669921875, 1673.1666259765625, 5, 5),
(30, 1003.1668395996094, 1544.1666259765625, 1306.1668395996094, 1673.1666259765625, 5, 5),
(31, 1003.1668395996094, 1673.1666259765625, 1306.1668395996094, 1802.1666259765625, 5, 5),
(32, 1672.1669921875, 1415.1666259765625, 2037.1669921875, 1544.1666259765625, 5, 5),
(33, 1672.1669921875, 1286.1666259765625, 2037.1669921875, 1415.1666259765625, 5, 5),
(34, 1683.8336791992188, -2708.5001831054688, 1911.8336791992188, -2605.5001831054688, 6, 6),
(35, 1911.8336791992188, -2709.5001831054688, 2139.8336791992188, -2605.5001831054688, 6, 6),
(36, 2139.833740234375, -2709.5001831054688, 2367.833740234375, -2605.5001831054688, 6, 6),
(37, 2367.833740234375, -2709.5001831054688, 2595.833740234375, -2605.5001831054688, 6, 6),
(38, 2595.833740234375, -2709.5001831054688, 2823.833740234375, -2605.5001831054688, 6, 6),
(39, 2595.833740234375, -2605.5001831054688, 2823.833740234375, -2501.5001831054688, 6, 6),
(40, 2367.8336791992188, -2605.5001831054688, 2595.8336791992188, -2501.5001831054688, 6, 6),
(41, 2139.8336791992188, -2605.5001831054688, 2367.8336791992188, -2501.5001831054688, 6, 6),
(42, 1911.8336791992188, -2605.5001831054688, 2139.8336791992188, -2501.5001831054688, 6, 6),
(43, 1683.8336791992188, -2605.5001831054688, 1911.8336791992188, -2501.5001831054688, 6, 6),
(44, 1683.8336791992188, -2501.5003662109375, 1911.8336791992188, -2397.5003662109375, 6, 6),
(45, 1911.8336791992188, -2501.5003662109375, 2139.8336791992188, -2397.5003662109375, 6, 6),
(46, 2139.833740234375, -2501.5003662109375, 2367.833740234375, -2397.5003662109375, 6, 6),
(47, 2367.833740234375, -2501.5003662109375, 2595.833740234375, -2397.5003662109375, 6, 6),
(48, 2595.833740234375, -2501.5003662109375, 2823.833740234375, -2397.5003662109375, 6, 6),
(49, 2595.833740234375, -2397.5003356933594, 2823.833740234375, -2293.5003356933594, 6, 6),
(50, 2367.8336791992188, -2397.5003356933594, 2595.8336791992188, -2293.5003356933594, 6, 6),
(51, 2139.8336791992188, -2397.5003356933594, 2367.8336791992188, -2293.5003356933594, 6, 6),
(52, 1911.8336791992188, -2397.5003356933594, 2139.8336791992188, -2293.5003356933594, 6, 6),
(53, 1683.8336791992188, -2397.5003356933594, 1911.8336791992188, -2293.5003356933594, 6, 6),
(54, 1683.8336791992188, -2293.5003356933594, 1911.8336791992188, -2189.5003356933594, 6, 6),
(55, 1911.8336791992188, -2293.5003356933594, 2139.8336791992188, -2189.5003356933594, 6, 6),
(56, 2139.833740234375, -2293.5003356933594, 2367.833740234375, -2189.5003356933594, 6, 6),
(57, 2367.833740234375, -2293.5003356933594, 2595.833740234375, -2189.5003356933594, 6, 6),
(58, 2595.833740234375, -2293.5003356933594, 2823.833740234375, -2189.5003356933594, 6, 6),
(59, 2139.8336791992188, -2189.5001831054688, 2823.8336791992188, -2058.5001831054688, 6, 6),
(60, 1911.8336791992188, -2058.5, 2139.8336791992188, -1927.5, 6, 6),
(61, 1911.8336791992188, -2189.5, 2139.8336791992188, -2058.5, 6, 6),
(62, 1683.8336791992188, -2189.5003662109375, 1911.8336791992188, -2058.5003662109375, 6, 6),
(63, 2139.8336791992188, -2058.5001831054688, 2823.8336791992188, -1927.5001831054688, 6, 6),
(64, 2139.8336791992188, -1927.5001831054688, 2823.8336791992188, -1796.5001831054688, 6, 6),
(65, 1911.8333740234375, -1927.5, 2139.8333740234375, -1796.5, 6, 6),
(66, 2139.8333740234375, -1795.5, 2823.8333740234375, -1664.5, 6, 6),
(67, 2139.8333740234375, -1663.5003356933594, 2823.8333740234375, -1532.5003356933594, 6, 6),
(68, -671.833251953125, -1671.166748046875, -614.833251953125, -1571.166748046875, 7, 7),
(69, -614.833251953125, -1671.166748046875, -557.833251953125, -1571.166748046875, 7, 7),
(70, -557.833251953125, -1671.166748046875, -500.833251953125, -1571.166748046875, 7, 7),
(71, -501.833251953125, -1671.166748046875, -444.833251953125, -1571.166748046875, 7, 7),
(72, -445.833251953125, -1671.166748046875, -388.833251953125, -1571.166748046875, 7, 7),
(73, -389.833251953125, -1671.166748046875, -332.833251953125, -1571.166748046875, 7, 7),
(74, -333.833251953125, -1671.166748046875, -276.833251953125, -1571.166748046875, 7, 7),
(75, -333.833251953125, -1571.166748046875, -276.833251953125, -1471.166748046875, 7, 7),
(76, -389.833251953125, -1571.166748046875, -332.833251953125, -1471.166748046875, 7, 7),
(77, -445.833251953125, -1571.166748046875, -388.833251953125, -1471.166748046875, 7, 7),
(78, -501, -1571.166748046875, -444.833251953125, -1471.166748046875, 7, 7),
(79, -557.833251953125, -1571.1668701171875, -501.833251953125, -1471.1668701171875, 7, 7),
(80, -614.833251953125, -1571.166748046875, -557.833251953125, -1471.166748046875, 7, 7),
(81, -671.833251953125, -1571.166748046875, -614.833251953125, -1471.166748046875, 7, 7),
(82, -671.833251953125, -1471.166748046875, -614.833251953125, -1371.166748046875, 7, 7),
(83, -614.833251953125, -1471.166748046875, -558.833251953125, -1371.166748046875, 7, 7),
(84, -558.833251953125, -1471.166748046875, -500.833251953125, -1371.166748046875, 7, 7),
(85, -501.833251953125, -1471.166748046875, -444.833251953125, -1371.166748046875, 7, 7),
(86, -445.833251953125, -1471.166748046875, -388.833251953125, -1371.166748046875, 7, 7),
(87, -389.833251953125, -1471.166748046875, -332.833251953125, -1371.166748046875, 7, 7),
(88, -333.833251953125, -1471.166748046875, -276.833251953125, -1371.166748046875, 7, 7),
(89, -558.833251953125, -1371.1668395996094, -502.833251953125, -1271.1668395996094, 7, 7),
(90, -502.833251953125, -1371.1668395996094, -444.833251953125, -1271.1668395996094, 7, 7),
(91, -445.833251953125, -1371.1668395996094, -389.833251953125, -1271.1668395996094, 7, 7),
(92, -614.833251953125, -1371.1668395996094, -558.833251953125, -1271.1668395996094, 7, 7),
(93, -389.833251953125, -1371.1668395996094, -333.833251953125, -1271.1668395996094, 7, 7),
(94, -333.833251953125, -1371.1668395996094, -277.833251953125, -1271.1668395996094, 7, 7),
(95, -277.833251953125, -1371.1668395996094, -221.833251953125, -1271.1668395996094, 7, 7),
(96, -221.833251953125, -1371.1668395996094, -163.833251953125, -1271.1668395996094, 7, 7),
(97, -277.833251953125, -1271.1668395996094, -221.833251953125, -1171.1668395996094, 7, 7),
(98, -221.833251953125, -1270.1668395996094, -164.833251953125, -1171.1668395996094, 7, 7),
(99, -501.833251953125, -1771.166748046875, -443.833251953125, -1671.166748046875, 7, 7),
(100, -557.833251953125, -1771.166748046875, -499.833251953125, -1671.166748046875, 7, 7),
(101, 1449.5, -1355, 1591.5, -1133, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `gpci_ban`
--

CREATE TABLE `gpci_ban` (
  `id` int(11) NOT NULL,
  `gpci` text NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `gpci_ban`
--

INSERT INTO `gpci_ban` (`id`, `gpci`, `code`) VALUES
(1, '9A84AAEE8EF998D95F8AA9ACA494EF8C5F9DDEF9', 'H26MST');

-- --------------------------------------------------------

--
-- Структура таблицы `group`
--

CREATE TABLE `group` (
  `id` int(10) NOT NULL DEFAULT 0,
  `fraction` int(10) NOT NULL DEFAULT 0,
  `group_name` text NOT NULL DEFAULT '10',
  `skin_m` int(10) NOT NULL DEFAULT 0,
  `skin_g` int(10) NOT NULL DEFAULT 0,
  `standart` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `group`
--

INSERT INTO `group` (`id`, `fraction`, `group_name`, `skin_m`, `skin_g`, `standart`) VALUES
(0, 7, 'Нач.СС', 109, 13, 0),
(0, 7, 'Зам.СС', 109, 13, 0),
(0, 7, 'Основа СС', 109, 13, 0),
(0, 7, 'Запас СС', 109, 13, 0),
(0, 7, 'Нач.Запас ', 109, 13, 0),
(0, 7, 'Зам.Запас', 109, 13, 0),
(0, 7, 'Печень', 123, 13, 0),
(0, 7, 'Отец', 118, 13, 0),
(0, 7, 'Начальство', 108, 13, 0),
(0, 7, 'Нач.Печени', 109, 13, 0),
(0, 7, 'Зам.Печени', 109, 13, 0),
(0, 7, 'Нач.ВЧ', 109, 13, 0),
(0, 7, 'Зам.ВЧ', 109, 13, 0),
(0, 5, 'Данилл лох', 8, 13, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `houses`
--

CREATE TABLE `houses` (
  `id` int(10) NOT NULL,
  `enterx` float NOT NULL DEFAULT 0,
  `entery` float NOT NULL DEFAULT 0,
  `enterz` float NOT NULL DEFAULT 0,
  `exitx` float NOT NULL DEFAULT 0,
  `exity` float NOT NULL DEFAULT 0,
  `exitz` float NOT NULL DEFAULT 0,
  `carx` float NOT NULL DEFAULT 0,
  `cary` float NOT NULL DEFAULT 0,
  `carz` float NOT NULL DEFAULT 0,
  `cara` float NOT NULL DEFAULT 0,
  `price` int(20) NOT NULL,
  `owner` varchar(24) DEFAULT NULL,
  `lock` int(1) NOT NULL DEFAULT 1,
  `owned` int(1) DEFAULT NULL,
  `class` int(11) NOT NULL DEFAULT 0,
  `day` int(11) DEFAULT NULL,
  `int` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_business`
--

CREATE TABLE `job_business` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(24) NOT NULL,
  `owned` int(1) NOT NULL DEFAULT 0,
  `price` int(10) NOT NULL DEFAULT 0,
  `sklad` int(10) NOT NULL DEFAULT 0,
  `bank` int(10) NOT NULL DEFAULT 0,
  `sell_price_1` int(10) NOT NULL DEFAULT 0,
  `sell_price_2` int(10) NOT NULL DEFAULT 0,
  `sell_price_3` int(10) NOT NULL DEFAULT 0,
  `sell_price_4` int(10) NOT NULL DEFAULT 0,
  `sell_price_5` int(10) NOT NULL DEFAULT 0,
  `buy_price` int(11) NOT NULL,
  `bus_money` int(10) NOT NULL DEFAULT 0,
  `job_money` int(10) NOT NULL DEFAULT 0,
  `car1_job` int(1) NOT NULL DEFAULT 0,
  `car2_job` int(1) NOT NULL DEFAULT 0,
  `car3_job` int(11) NOT NULL DEFAULT 0,
  `car4_job` int(11) NOT NULL DEFAULT 0,
  `car5_job` int(11) NOT NULL DEFAULT 0,
  `car1_posx` float NOT NULL DEFAULT 0,
  `car1_posy` float NOT NULL DEFAULT 0,
  `car1_posz` float NOT NULL DEFAULT 0,
  `car1_posa` float NOT NULL DEFAULT 0,
  `car2_posx` float NOT NULL DEFAULT 0,
  `car2_posy` float NOT NULL DEFAULT 0,
  `car2_posz` float NOT NULL DEFAULT 0,
  `car2_posa` float NOT NULL DEFAULT 0,
  `car3_posx` float NOT NULL DEFAULT 0,
  `car3_posy` float NOT NULL DEFAULT 0,
  `car3_posz` float NOT NULL DEFAULT 0,
  `car3_posa` float NOT NULL DEFAULT 0,
  `car4_posx` float NOT NULL DEFAULT 0,
  `car4_posy` float NOT NULL DEFAULT 0,
  `car4_posz` float NOT NULL DEFAULT 0,
  `car4_posa` float NOT NULL DEFAULT 0,
  `car5_posx` float NOT NULL DEFAULT 0,
  `car5_posy` float NOT NULL DEFAULT 0,
  `car5_posz` float NOT NULL DEFAULT 0,
  `car5_posa` float NOT NULL DEFAULT 0,
  `info_posx` float NOT NULL DEFAULT 0,
  `info_posy` float NOT NULL DEFAULT 0,
  `info_posz` float NOT NULL DEFAULT 0,
  `job_posx` float NOT NULL DEFAULT 0,
  `job_posy` float NOT NULL DEFAULT 0,
  `job_posz` float NOT NULL DEFAULT 0,
  `bus_posx` float NOT NULL DEFAULT 0,
  `bus_posy` float NOT NULL DEFAULT 0,
  `bus_posz` float NOT NULL DEFAULT 0,
  `res_posx` float NOT NULL DEFAULT 0,
  `res_posy` float NOT NULL DEFAULT 0,
  `res_posz` float NOT NULL DEFAULT 0,
  `trailer_x` float NOT NULL DEFAULT 0,
  `trailer_y` float NOT NULL DEFAULT 0,
  `trailer_z` float NOT NULL DEFAULT 0,
  `trailer_a` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kvartiry`
--

CREATE TABLE `kvartiry` (
  `id` int(10) NOT NULL,
  `owner1` varchar(24) NOT NULL DEFAULT 'none',
  `owner2` varchar(24) NOT NULL DEFAULT 'none',
  `owner3` varchar(24) NOT NULL DEFAULT 'none',
  `owner4` varchar(24) NOT NULL DEFAULT 'none',
  `owner5` varchar(24) NOT NULL DEFAULT 'none',
  `owner6` varchar(24) NOT NULL DEFAULT 'none',
  `owned1` int(1) NOT NULL DEFAULT 0,
  `owned2` int(1) NOT NULL DEFAULT 0,
  `owned3` int(1) NOT NULL DEFAULT 0,
  `owned4` int(1) NOT NULL DEFAULT 0,
  `owned5` int(1) NOT NULL DEFAULT 0,
  `owned6` int(1) NOT NULL DEFAULT 0,
  `enter_x1` float NOT NULL DEFAULT 630.125,
  `enter_y1` float NOT NULL DEFAULT -168.712,
  `enter_z1` float NOT NULL DEFAULT 1002.82,
  `enter_x2` float NOT NULL DEFAULT 630.089,
  `enter_y2` float NOT NULL DEFAULT -165.891,
  `enter_z2` float NOT NULL DEFAULT 1002.82,
  `enter_x3` float NOT NULL DEFAULT 630.118,
  `enter_y3` float NOT NULL DEFAULT -168.707,
  `enter_z3` float NOT NULL DEFAULT 1006.91,
  `enter_x4` float NOT NULL DEFAULT 630.153,
  `enter_y4` float NOT NULL DEFAULT -165.893,
  `enter_z4` float NOT NULL DEFAULT 1006.91,
  `enter_x5` float NOT NULL DEFAULT 630.104,
  `enter_y5` float NOT NULL DEFAULT -168.707,
  `enter_z5` float NOT NULL DEFAULT 1011,
  `enter_x6` float NOT NULL DEFAULT 630.15,
  `enter_y6` float NOT NULL DEFAULT -165.877,
  `enter_z6` float NOT NULL DEFAULT 1011,
  `exit_x1` float NOT NULL DEFAULT -625.064,
  `exit_y1` float NOT NULL DEFAULT 79.0075,
  `exit_z1` float NOT NULL DEFAULT 1003.36,
  `exit_x2` float NOT NULL DEFAULT 647.669,
  `exit_y2` float NOT NULL DEFAULT -12.024,
  `exit_z2` float NOT NULL DEFAULT 1001.43,
  `exit_x3` float NOT NULL DEFAULT 574.747,
  `exit_y3` float NOT NULL DEFAULT -1.1061,
  `exit_z3` float NOT NULL DEFAULT 1001.48,
  `exit_x4` float NOT NULL DEFAULT 574.747,
  `exit_y4` float NOT NULL DEFAULT -1.1061,
  `exit_z4` float NOT NULL DEFAULT 1001.48,
  `exit_x5` float NOT NULL DEFAULT -625.064,
  `exit_y5` float NOT NULL DEFAULT 79.0075,
  `exit_z5` float NOT NULL DEFAULT 1003.36,
  `exit_x6` float NOT NULL DEFAULT 647.669,
  `exit_y6` float NOT NULL DEFAULT -12.024,
  `exit_z6` float NOT NULL DEFAULT 1001.43,
  `enter_x` float NOT NULL DEFAULT 0,
  `enter_y` float NOT NULL DEFAULT 0,
  `enter_z` float NOT NULL DEFAULT 0,
  `exit_x` float NOT NULL DEFAULT 630.345,
  `exit_y` float NOT NULL DEFAULT -178.275,
  `exit_z` float NOT NULL DEFAULT 997.004,
  `price1` int(10) NOT NULL DEFAULT 150000,
  `price2` int(10) NOT NULL DEFAULT 400000,
  `price3` int(10) NOT NULL DEFAULT 750000,
  `price4` int(10) NOT NULL DEFAULT 750000,
  `price5` int(10) NOT NULL DEFAULT 150000,
  `price6` int(10) NOT NULL DEFAULT 400000,
  `car_posx` float NOT NULL DEFAULT 0,
  `car_posy` float NOT NULL DEFAULT 0,
  `car_posz` float NOT NULL DEFAULT 0,
  `car_posa` float NOT NULL DEFAULT 0,
  `class1` int(1) NOT NULL DEFAULT 0,
  `class2` int(1) NOT NULL DEFAULT 1,
  `class3` int(1) NOT NULL DEFAULT 2,
  `class4` int(1) NOT NULL DEFAULT 2,
  `class5` int(1) NOT NULL DEFAULT 0,
  `class6` int(1) NOT NULL DEFAULT 1,
  `lock1` int(10) NOT NULL DEFAULT 0,
  `lock2` int(10) NOT NULL DEFAULT 0,
  `lock3` int(10) NOT NULL DEFAULT 0,
  `lock4` int(10) NOT NULL DEFAULT 0,
  `lock5` int(10) NOT NULL DEFAULT 0,
  `lock6` int(10) NOT NULL DEFAULT 0,
  `day1` int(10) NOT NULL DEFAULT 0,
  `day2` int(10) NOT NULL DEFAULT 0,
  `day3` int(10) NOT NULL DEFAULT 0,
  `day4` int(10) NOT NULL DEFAULT 0,
  `day5` int(10) NOT NULL DEFAULT 0,
  `day6` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `log_paymoney`
--

CREATE TABLE `log_paymoney` (
  `id` int(100) NOT NULL,
  `name` varchar(24) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `text` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `log_player`
--

CREATE TABLE `log_player` (
  `id` int(100) NOT NULL,
  `name` varchar(24) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `text` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `log_player`
--

INSERT INTO `log_player` (`id`, `name`, `date`, `time`, `text`) VALUES
(1, 'Danil_Ulyanovskiy', '2023-03-20', '15:24:51', 'купил бизнес ID:0');

-- --------------------------------------------------------

--
-- Структура таблицы `log_transfermoney`
--

CREATE TABLE `log_transfermoney` (
  `id` int(100) NOT NULL,
  `name` varchar(24) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `text` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `log_transfermoney`
--

INSERT INTO `log_transfermoney` (`id`, `name`, `date`, `time`, `text`) VALUES
(1, 'Matvey_Matthewball', '2023-03-19', '23:03:38', '35000 #71'),
(2, 'Angel_Arigato', '2023-03-19', '23:04:43', '35000 #71'),
(3, 'Angel_Arigato', '2023-03-19', '23:12:44', '500000 #givmoeny1'),
(4, 'Angel_Arigato', '2023-03-19', '23:13:07', '659314650 #setstat'),
(5, 'Deadinside_Velasquez', '2023-03-20', '14:33:22', '35000 #71'),
(6, 'Dima_Saqura', '2023-03-20', '14:35:36', '35000 #71'),
(7, 'Danil_Ulyanovskiy', '2023-03-20', '14:37:45', '35000 #71'),
(8, 'Marcus_Mattewball', '2023-03-20', '14:39:18', '35000 #71'),
(9, 'Danil_Ulyanovskiy', '2023-03-20', '15:03:07', '500000 #givmoeny1'),
(10, 'Danil_Ulyanovskiy', '2023-03-20', '15:03:35', '15000000 #5'),
(11, 'Danil_Ulyanovskiy', '2023-03-20', '15:23:35', '500000 #givmoeny1'),
(12, 'Danil_Ulyanovskiy', '2023-03-20', '15:23:43', '15000000 #5'),
(13, 'Danil_Ulyanovskiy', '2023-03-20', '15:24:51', '-4500000 #76'),
(14, 'Danil_Ulyanovskiy', '2023-03-20', '15:25:15', '-10000 #48'),
(15, 'Danil_Ulyanovskiy', '2023-03-20', '15:25:41', '-50000 #48'),
(16, 'Kesha_Volosatiy', '2023-03-20', '15:51:57', '35000 #71'),
(17, 'Tatsuki_Svoy', '2023-03-20', '15:55:12', '35000 #71');

-- --------------------------------------------------------

--
-- Структура таблицы `nickname_history`
--

CREATE TABLE `nickname_history` (
  `nh_owner` int(11) NOT NULL,
  `nh_oldname` varchar(32) NOT NULL,
  `nh_newname` varchar(32) NOT NULL,
  `nh_date` text NOT NULL,
  `nh_admin` text NOT NULL,
  `day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ownable`
--

CREATE TABLE `ownable` (
  `id` int(11) NOT NULL,
  `player` varchar(32) NOT NULL,
  `carid` int(11) NOT NULL,
  `color_1` int(11) NOT NULL,
  `color_2` int(11) NOT NULL,
  `car_x` int(11) NOT NULL,
  `car_y` int(11) NOT NULL,
  `car_z` int(11) NOT NULL,
  `car_angle` int(11) NOT NULL,
  `car_fuel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `name_add` varchar(32) NOT NULL,
  `day` int(11) NOT NULL,
  `mounth` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `data` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `punishment`
--

CREATE TABLE `punishment` (
  `player` varchar(32) NOT NULL,
  `reason` varchar(144) NOT NULL,
  `type` int(11) NOT NULL,
  `support` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `mounth` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `vkmasters`
--

CREATE TABLE `vkmasters` (
  `id` int(11) NOT NULL,
  `idvk` int(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `vksend`
--

CREATE TABLE `vksend` (
  `id` int(11) NOT NULL,
  `cmd` varchar(30) NOT NULL DEFAULT 'nonecmd',
  `text` varchar(75) NOT NULL DEFAULT 'nonetext',
  `sender` varchar(32) NOT NULL DEFAULT 'nonesend',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  `reason` varchar(35) NOT NULL DEFAULT 'none',
  `amount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(1) NOT NULL DEFAULT 1,
  `rostov_metal` int(10) NOT NULL DEFAULT 0,
  `rostov_patr` int(10) NOT NULL DEFAULT 0,
  `rostov_narko` int(10) NOT NULL DEFAULT 0,
  `maykop_metal` int(10) NOT NULL DEFAULT 0,
  `maykop_patr` int(10) NOT NULL DEFAULT 0,
  `maykop_narko` int(10) NOT NULL DEFAULT 0,
  `odessa_metal` int(10) NOT NULL DEFAULT 0,
  `odessa_patr` int(10) NOT NULL DEFAULT 0,
  `odessa_narko` int(10) NOT NULL DEFAULT 0,
  `army_metal` int(10) NOT NULL DEFAULT 0,
  `army_patr` int(10) NOT NULL DEFAULT 0,
  `smi_money` int(10) NOT NULL DEFAULT 0,
  `rostov_storage` int(11) NOT NULL,
  `maykop_storage` int(11) NOT NULL,
  `odessa_storage` int(11) NOT NULL,
  `moroz_kavkaz` int(11) NOT NULL DEFAULT 0,
  `moroz_gopota` int(11) NOT NULL DEFAULT 0,
  `moroz_skinhead` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `warehouse`
--

INSERT INTO `warehouse` (`id`, `rostov_metal`, `rostov_patr`, `rostov_narko`, `maykop_metal`, `maykop_patr`, `maykop_narko`, `odessa_metal`, `odessa_patr`, `odessa_narko`, `army_metal`, `army_patr`, `smi_money`, `rostov_storage`, `maykop_storage`, `odessa_storage`, `moroz_kavkaz`, `moroz_gopota`, `moroz_skinhead`) VALUES
(1, -3, 38875, 2286, 1944, 24897, 3650, 5526, 47165, 11465, 500000, 364855, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wbook`
--

CREATE TABLE `wbook` (
  `w_id` int(20) NOT NULL,
  `w_player` int(25) NOT NULL,
  `w_name` varchar(45) NOT NULL,
  `w_fraction` varchar(45) NOT NULL DEFAULT '-',
  `w_rank` int(3) NOT NULL,
  `w_reason` varchar(64) NOT NULL DEFAULT '',
  `w_mes` int(11) NOT NULL,
  `w_day` int(11) NOT NULL,
  `w_year` int(11) NOT NULL,
  `w_namerank` varchar(32) NOT NULL DEFAULT '-',
  `w_dal` varchar(32) NOT NULL DEFAULT '-',
  `w_reas` varchar(32) NOT NULL DEFAULT '-',
  `w_dalrank` varchar(32) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `wbook`
--

INSERT INTO `wbook` (`w_id`, `w_player`, `w_name`, `w_fraction`, `w_rank`, `w_reason`, `w_mes`, `w_day`, `w_year`, `w_namerank`, `w_dal`, `w_reas`, `w_dalrank`) VALUES
(1, 1, 'Matvey_Velasquez', '7', 8, 'Собственное желание', 3, 20, 2023, '-', '-', '-', '-'),
(2, 1, 'Matvey_Velasquez', '6', 10, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(3, 1, 'Matvey_Velasquez', '3', 10, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(4, 5, 'Danil_Ulyanovskiy', '7', 10, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(5, 1, 'Matvey_Velasquez', '3', 10, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(6, 5, 'Danil_Ulyanovskiy', '3', 9, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(7, 5, 'Danil_Ulyanovskiy', '0', 0, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(8, 5, 'Danil_Ulyanovskiy', '3', 10, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(9, 1, 'Matvey_Velasquez', '3', 7, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(10, 4, 'Dima_Saqura', '2', 10, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(11, 5, 'Danil_Ulyanovskiy', '3', 10, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(12, 4, 'Dima_Saqura', '6', 10, 'Снятие с поста лидера', 3, 20, 2023, '-', '-', '-', '-'),
(13, 4, 'Dima_Saqura', '6', 2, 'Собственное желание', 3, 20, 2023, '-', '-', '-', '-');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auto_business`
--
ALTER TABLE `auto_business`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `black_list`
--
ALTER TABLE `black_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fractions_blacklist`
--
ALTER TABLE `fractions_blacklist`
  ADD PRIMARY KEY (`id_bl`);

--
-- Индексы таблицы `gangzone`
--
ALTER TABLE `gangzone`
  ADD PRIMARY KEY (`gzid`);

--
-- Индексы таблицы `gpci_ban`
--
ALTER TABLE `gpci_ban`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `job_business`
--
ALTER TABLE `job_business`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kvartiry`
--
ALTER TABLE `kvartiry`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `log_paymoney`
--
ALTER TABLE `log_paymoney`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `log_player`
--
ALTER TABLE `log_player`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `log_transfermoney`
--
ALTER TABLE `log_transfermoney`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ownable`
--
ALTER TABLE `ownable`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `phonebook`
--
ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vkmasters`
--
ALTER TABLE `vkmasters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vksend`
--
ALTER TABLE `vksend`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wbook`
--
ALTER TABLE `wbook`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `auto_business`
--
ALTER TABLE `auto_business`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `banlist`
--
ALTER TABLE `banlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `black_list`
--
ALTER TABLE `black_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `business`
--
ALTER TABLE `business`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `donate`
--
ALTER TABLE `donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fractions_blacklist`
--
ALTER TABLE `fractions_blacklist`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gangzone`
--
ALTER TABLE `gangzone`
  MODIFY `gzid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `gpci_ban`
--
ALTER TABLE `gpci_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `job_business`
--
ALTER TABLE `job_business`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kvartiry`
--
ALTER TABLE `kvartiry`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `log_paymoney`
--
ALTER TABLE `log_paymoney`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `log_player`
--
ALTER TABLE `log_player`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `log_transfermoney`
--
ALTER TABLE `log_transfermoney`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `ownable`
--
ALTER TABLE `ownable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `phonebook`
--
ALTER TABLE `phonebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vkmasters`
--
ALTER TABLE `vkmasters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vksend`
--
ALTER TABLE `vksend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbook`
--
ALTER TABLE `wbook`
  MODIFY `w_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
