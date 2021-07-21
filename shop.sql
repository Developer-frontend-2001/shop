-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 21 2021 г., 13:54
-- Версия сервера: 5.5.62
-- Версия PHP: 8.0.1

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
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `c_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `image`, `c_order`) VALUES
(1, 0, 'Telefon', NULL, 1),
(2, 0, 'Noutbook', NULL, 2),
(3, 0, 'Telivizor', NULL, 3),
(4, 0, 'Boshqalar', NULL, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `id` int(5) UNSIGNED NOT NULL,
  `regionId` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `regionId`, `name`) VALUES
(1, 14, 'Шахрисабз шаҳар'),
(2, 3, 'Поп тумани'),
(3, 2, 'Асака туман'),
(4, 5, 'Тошкент тумани'),
(5, 5, 'Янгийўл шаҳар'),
(6, 5, 'Оҳангарон шаҳар'),
(7, 5, 'Нурафшон шаҳар'),
(8, 11, 'Нукус шаҳар'),
(9, 11, 'Тахиатош тумани'),
(10, 4, 'Хива шаҳар'),
(11, 11, 'Амударё туман'),
(12, 11, 'Беруний туман'),
(13, 11, 'Қонликул туман'),
(14, 11, 'Қораузак туман'),
(15, 11, 'Кегейли туман'),
(16, 11, 'Қўнғирот туман'),
(17, 11, 'Муйнақ туман'),
(18, 11, 'Нукус туман'),
(19, 11, 'Тахтакупир туман'),
(20, 11, 'Турткул туман'),
(21, 11, 'Хўжайли туман'),
(22, 11, 'Чимбой туман'),
(23, 11, 'Шуманай туман '),
(24, 11, 'Элликкалъа туман'),
(25, 2, 'Андижон шаҳар'),
(26, 2, 'Хонобод шаҳар'),
(27, 2, 'Андижон тумани'),
(28, 2, 'Балиқчи туман'),
(29, 2, 'Булоқбоши туман'),
(30, 2, 'Бўз туман'),
(31, 2, 'Жалақудуқ туман'),
(32, 2, 'Избоскан туман'),
(33, 2, 'Улуғнор туман'),
(34, 2, 'Марҳамат туман'),
(35, 2, 'Пахтаобод туман'),
(36, 2, 'Хўжаобод туман'),
(37, 2, 'Олтинкўл туман'),
(38, 2, 'Қўрғонтепа туман'),
(39, 2, 'Шахрихон туман'),
(40, 7, 'Бухоро шаҳар'),
(41, 7, 'Когон шаҳар'),
(42, 7, 'Бухоро туман'),
(43, 7, 'Бобкент туман '),
(44, 7, 'Жондор туман'),
(45, 7, 'Когон туман'),
(46, 7, 'Олот туман'),
(47, 7, 'Пешку туман'),
(48, 7, 'Ромитан туман'),
(49, 7, 'Шофиркон туман'),
(50, 7, 'Қоракўл туман'),
(51, 7, 'Қоровулбозор туман'),
(52, 7, 'Ғиждувон туман'),
(53, 9, 'Арнасой туман'),
(54, 9, 'Бахмал туман'),
(55, 9, 'Ғаллаорол туман'),
(56, 9, 'Дўстлик туман'),
(57, 9, 'Жиззах шаҳар'),
(58, 9, 'Жиззах туман'),
(59, 9, 'Зарбдор туман'),
(60, 9, 'Зафаробод туман'),
(61, 9, 'Зомин туман '),
(62, 9, 'Мирзачўл туман'),
(63, 9, 'Пахтакор туман'),
(64, 9, 'Фориш туман'),
(65, 9, 'Янгиобод туман'),
(66, 14, 'Қарши шаҳар'),
(67, 14, 'Қарши туман'),
(68, 14, 'Муборак туман'),
(69, 14, 'Ғузор тумани'),
(70, 14, 'Қамаши туман'),
(71, 14, 'Чироқчи туман'),
(72, 14, 'Шахрисабз туман'),
(73, 14, 'Касби туман'),
(74, 14, 'Косон туман'),
(75, 14, 'Китоб туман'),
(76, 14, 'Нишон туман'),
(77, 14, 'Миришкор туман '),
(78, 14, 'Деҳқонобод туман'),
(79, 14, 'Яккабоғ туман'),
(80, 10, 'Навоий шаҳар'),
(81, 10, 'Зарафшон шаҳар'),
(82, 10, 'Кармана туман'),
(83, 10, 'Томди тумани'),
(84, 10, 'Навбаҳор туман'),
(85, 10, 'Нурота туман'),
(86, 10, 'Хатирчи туман'),
(87, 10, 'Қизилтепа туман'),
(88, 10, 'Конимех туман'),
(89, 10, 'Учқудуқ туман'),
(90, 3, 'Наманган шаҳар'),
(91, 3, 'Мингбулоқ тумани'),
(92, 3, 'Косонсой тумани'),
(93, 3, 'Наманган тумани'),
(94, 3, 'Норин тумани'),
(95, 3, 'Тўрақўрғон тумани'),
(96, 3, 'Уйчи тумани'),
(97, 3, 'Учқўрғон тумани'),
(98, 3, 'Чортоқ тумани'),
(99, 3, 'Чуст тумани'),
(100, 3, 'Янгиқўрғон тумани'),
(101, 8, 'Самарқанд шаҳар'),
(102, 8, 'Ургут туман'),
(103, 8, 'Пахтачи туман'),
(104, 8, 'Каттақўрғон туман'),
(105, 8, 'Самарқанд туман'),
(106, 8, 'Булунғур туман'),
(107, 8, 'Жомбой туман'),
(108, 8, 'Қўшробод туман'),
(109, 8, 'Нарпай туман'),
(110, 8, 'Тайлоқ туман'),
(111, 8, 'Пастдарғом туман'),
(112, 8, 'Нуробод туман'),
(113, 8, 'Каттақўрғон шаҳар'),
(114, 8, 'Пайариқ туман'),
(115, 8, 'Оқдарё туман'),
(116, 8, 'Иштихон туман'),
(117, 13, 'Термиз шаҳар'),
(118, 13, 'Термиз туман'),
(119, 13, 'Музработ туман'),
(120, 13, 'Олтинсой туман'),
(121, 13, 'Денов туман'),
(122, 13, 'Сариосиё туман'),
(123, 13, 'Қизириқ туман'),
(124, 13, 'Жарқўрғон туман'),
(125, 13, 'Ангор туман'),
(126, 13, 'Қумқўрғон туман'),
(127, 13, 'Бойсун туман'),
(128, 13, 'Шўрчи туман'),
(129, 13, 'Шеробод туман'),
(130, 13, 'Узун туман'),
(131, 12, 'Гулистон шаҳар'),
(132, 12, 'Янгиер туман'),
(133, 12, 'Ширин туман'),
(134, 12, 'Оқолтин тумани'),
(135, 12, 'Боёвут туман'),
(136, 12, 'Гулистон туман'),
(137, 12, 'Мирзаобод туман'),
(138, 12, 'Сайхунобод туман'),
(139, 12, 'Сардоба туман'),
(140, 12, 'Сирдарё туман'),
(141, 12, 'Ховос туман'),
(142, 5, 'Ангрен шаҳар'),
(143, 5, 'Бекобод шаҳар'),
(144, 5, 'Олмалиқ шаҳар'),
(145, 5, 'Чирчиқ шаҳар'),
(146, 5, 'Бекобод туман'),
(147, 5, 'Бўстонлиқ туман'),
(148, 5, 'Қибрай туман'),
(149, 5, 'Зангиота туман'),
(150, 5, 'Қуйичирчиқ туман'),
(151, 5, 'Оққўрғон туман'),
(152, 5, 'Паркент туман'),
(154, 5, 'Ўртачирчиқ туман'),
(155, 5, 'Чиноз туман'),
(156, 5, 'Юқоричирчиқ туман'),
(157, 5, 'Бўка туман'),
(158, 5, 'Янгийўл туман'),
(159, 5, 'Охангарон туман'),
(160, 15, 'Фарғона шаҳар '),
(161, 15, 'Марғилон шаҳар'),
(162, 15, 'Қувасой шаҳар'),
(163, 15, 'Қўқон шаҳар'),
(164, 15, 'Боғдод туман'),
(165, 15, 'Бувайда туман'),
(166, 15, 'Данғара туман '),
(167, 15, 'Ёзёвон туман'),
(168, 15, 'Олтиариқ туман'),
(169, 15, 'Бешариқ туман'),
(170, 15, 'Қўштепа туман'),
(171, 15, 'Риштон туман'),
(172, 15, 'Сўх туман'),
(173, 15, 'Тошлоқ туман'),
(174, 15, 'Учкўприк туман'),
(175, 15, 'Фарғона туман'),
(176, 15, 'Ўзбекистон туман'),
(177, 15, 'Қува туман'),
(178, 15, 'Фурқат туман'),
(179, 4, 'Урганч шаҳар'),
(180, 4, 'Боғот туман'),
(181, 4, 'Урганч туман'),
(182, 4, 'Қўшкўпир туман'),
(183, 4, 'Хонка туман'),
(184, 4, 'Янгиариқ туман'),
(185, 4, 'Хива туман'),
(186, 4, 'Янгибозор туман'),
(187, 4, 'Хозарасп туман'),
(188, 4, 'Шовот туман'),
(189, 4, 'Гурлан туман'),
(190, 6, 'Бектемир тумани'),
(191, 6, 'Миробод тумани'),
(192, 6, 'М.Улуғбек тумани'),
(193, 6, 'Сергели тумани'),
(194, 6, 'Олмазор тумани'),
(195, 6, 'Учтепа тумани'),
(196, 6, 'Яшнобод тумани'),
(197, 6, 'Чилонзор тумани'),
(198, 6, 'Шайхонтохур тумани'),
(199, 6, 'Юнусобод тумани'),
(200, 6, 'Яккасарой тумани'),
(201, 5, 'Пискент туман');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `comment_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `product_id`, `comment_text`, `status`, `create_date`) VALUES
(4, 11, 7, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, '2021-07-19 02:54:17'),
(5, 11, 7, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, '2021-07-19 02:55:08'),
(6, 11, 9, 'dasdbdnsBKSDJksdjbVVVVVVVVVVJKDDDDDDDDDDDDDDDSJDVB', 1, '2021-07-20 04:06:27'),
(7, 11, 9, 'dasdbdnsBKSDJksdjbVVVVVVVVVVJKDDDDDDDDDDDDDDDSJDVB', 1, '2021-07-20 04:07:08'),
(8, 11, 9, 'dasdbdnsBKSDJksdjbVVVVVVVVVVJKDDDDDDDDDDDDDDDSJDVB', 1, '2021-07-20 04:07:34'),
(9, 11, 9, 'dasdbdnsBKSDJksdjbVVVVVVVVVVJKDDDDDDDDDDDDDDDSJDVB', 1, '2021-07-20 04:07:48'),
(10, 11, 1, 'ASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 1, '2021-07-20 04:41:19'),
(11, 11, 1, 'ASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 1, '2021-07-20 04:46:26'),
(12, 11, 1, 'ASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 1, '2021-07-20 04:46:52'),
(13, 11, 1, 'ASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 1, '2021-07-20 04:49:24'),
(14, 11, 1, 'ASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 1, '2021-07-20 04:52:21'),
(15, 11, 1, 'ASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 1, '2021-07-20 04:53:16'),
(16, 11, 1, 'ASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 1, '2021-07-20 04:59:18'),
(17, 11, 1, 'ASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 1, '2021-07-20 05:00:35'),
(18, 11, 6, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, '2021-07-20 05:06:58'),
(19, 11, 6, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, '2021-07-20 05:17:20'),
(20, 7, 1, 'salomfjnvsdjvbjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 1, '2021-07-20 05:24:52'),
(21, 7, 1, 'salomfjnvsdjvbjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 1, '2021-07-20 05:33:32'),
(22, 11, 8, 'adsfasdfffffffffffffffffffffffgdthsgdfgasdfgsdkn.s', 1, '2021-07-20 05:41:29'),
(23, 11, 8, 'adsfasdfffffffffffffffffffffffgdthsgdfgasdfgsdkn.s', 1, '2021-07-20 05:41:37'),
(24, 11, 8, 'adsfasdfffffffffffffffffffffffgdthsgdfgasdfgsdkn.s', 1, '2021-07-20 05:43:18'),
(25, 11, 8, 'adsfasdfffffffffffffffffffffffgdthsgdfgasdfgsdkn.s', 1, '2021-07-20 05:43:53'),
(26, 11, 8, 'adsfasdfffffffffffffffffffffffgdthsgdfgasdfgsdkn.s', 1, '2021-07-20 05:45:19'),
(27, 11, 8, 'adsfasdfffffffffffffffffffffffgdthsgdfgasdfgsdkn.s', 1, '2021-07-20 05:46:37'),
(28, 11, 8, 'adsfasdfffffffffffffffffffffffgdthsgdfgasdfgsdkn.s', 1, '2021-07-20 05:47:28'),
(29, 11, 5, 'afsdhba,sdhvbcvnajsdfjfaskdrjabgdfmv dva sdbfkbgja', 1, '2021-07-20 09:32:56'),
(30, 11, 5, 'afsdhba,sdhvbcvnajsdfjfaskdrjabgdfmv dva sdbfkbgja', 1, '2021-07-20 09:33:20'),
(31, 11, 5, 'Mening ismim Anvar men Bugun sizlarga yosishimdan ', 1, '2021-07-20 09:59:34'),
(32, 11, 5, 'Mening ismim Anvar men Bugun sizlarga yosishimdan ', 1, '2021-07-20 10:00:43'),
(33, 11, 5, 'Mening ismim Anvar men Bugun sizlarga yosishimdan ', 1, '2021-07-20 10:00:56'),
(34, 11, 5, 'Mening ismim Anvar men Bugun sizlarga yosishimdan maqsad menga IPHONE 12 pro max kerak', 1, '2021-07-20 10:02:05'),
(35, 11, 5, 'Mening ismim Anvar men Bugun sizlarga yosishimdan maqsad menga IPHONE 12 pro max kerak', 1, '2021-07-20 10:02:59'),
(36, 11, 5, 'Mening ismim Anvar men Bugun sizlarga yosishimdan maqsad menga IPHONE 12 pro max kerak', 1, '2021-07-20 10:15:11'),
(37, 11, 3, 'dafsjbvasdbfaWBGFSDBJcsdjc.AEHF..vdjbXBXCNBARGWOIEHegsdnfaLKFNAwlena', 1, '2021-07-21 08:42:15'),
(38, 11, 3, 'dafsjbvasdbfaWBGFSDBJcsdjc.AEHF..vdjbXBXCNBARGWOIEHegsdnfaLKFNAwlena', 1, '2021-07-21 08:43:16'),
(39, 11, 3, 'dafsjbvasdbfaWBGFSDBJcsdjc.AEHF..vdjbXBXCNBARGWOIEHegsdnfaLKFNAwlena', 1, '2021-07-21 08:43:54'),
(40, 11, 3, 'dafsjbvasdbfaWBGFSDBJcsdjc.AEHF..vdjbXBXCNBARGWOIEHegsdnfaLKFNAwlena', 1, '2021-07-21 08:44:46'),
(41, 11, 3, 'dafsjbvasdbfaWBGFSDBJcsdjc.AEHF..vdjbXBXCNBARGWOIEHegsdnfaLKFNAwlena', 1, '2021-07-21 09:21:56');

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_Name` varchar(25) NOT NULL,
  `last_Name` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `region_id` int(3) UNSIGNED NOT NULL,
  `city_id` int(11) UNSIGNED NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id`, `user_id`, `first_Name`, `last_Name`, `phone`, `region_id`, `city_id`, `image`) VALUES
(2, 0, 'Eshmat', 'Toshmatov', '+99894447777', 2, 3, ''),
(3, 0, 'Ismoil', 'Bobojonov', '+998984445556', 4, 188, ''),
(4, 0, 'Foziljon', 'Jalilov', '+998934010477', 3, 92, ''),
(5, 0, 'Akmal', 'Jabborov', '+998901112233', 8, 101, ''),
(6, 0, 'Eshmat', 'Toshmatov', '+99894555555', 2, 25, ''),
(7, 0, 'Yusufjon', 'Toshmatov', '+998932226669', 2, 3, ''),
(8, 0, 'Eshmat', 'Toshmatov', '+998932226669', 9, 54, ''),
(9, 0, 'Yusufjon', 'Ismatov', '+998932226669', 7, 41, ''),
(10, 7, 'Rahmatulloh', 'Muhammadjonov', '+998949119997', 6, 193, ''),
(11, 8, 'Anvar', 'Sanakulov', '901096560', 14, 72, '');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT '1',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `count`, `customer_id`, `product_id`, `status_id`, `date`) VALUES
(1, 2, 2, 5, 2, '2021-06-21 20:07:26'),
(2, 3, 3, 2, 2, '2021-06-21 20:08:18'),
(3, 15, 4, 3, 2, '2021-06-21 20:08:48'),
(4, 1, 5, 1, 2, '2021-06-21 20:09:36'),
(5, 1, 6, 4, 1, '2021-06-25 20:22:07'),
(6, 3, 8, 4, 1, '2021-06-25 20:40:54'),
(7, 1, 10, 8, 1, NULL),
(8, 1, 10, 10, 1, NULL),
(9, 2, 10, 9, 1, NULL),
(10, 1, 10, 4, 1, NULL),
(11, 1, 10, 8, 1, NULL),
(12, 1, 10, 10, 1, NULL),
(13, 2, 10, 9, 1, NULL),
(14, 1, 10, 4, 1, NULL),
(15, 1, 11, 10, 1, NULL),
(16, 2, 11, 9, 1, NULL),
(17, 1, 11, 8, 1, NULL),
(18, 1, 11, 7, 1, NULL),
(19, 2, 10, 9, 1, NULL),
(20, 1, 10, 10, 1, NULL),
(21, 1, 10, 8, 1, NULL),
(22, 1, 10, 7, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `in_stock` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `amount`, `price`, `in_stock`, `picture`, `content`) VALUES
(1, 4, 'Turnik', '160', NULL, 135, 'images/06-24.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.'),
(2, 2, 'Koptok', '10', NULL, 131, 'images/phone1.jpeg', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.'),
(3, 2, 'Tenis to\'pi', '1', NULL, 200, 'images/06-24.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.'),
(4, 1, 'Fudbolka Real', '7', NULL, 69, 'images/card.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.'),
(5, 1, 'Fudbolka Barcelona', '7', NULL, 71, 'images/card.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.'),
(6, 4, 'TEST2', NULL, '100.00', 1, 'images/phone1.jpeg', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.'),
(7, 3, 'sdasdsa', '1111', NULL, 1, 'images/06-24.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.'),
(8, 4, 'Tennis koptok', '1000', NULL, 20, 'images/06-24.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.'),
(9, 3, 'Plastik kartochka', '34000', NULL, 2, 'images/card.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.'),
(10, 1, 'Yusufjon Ismatov', '1000', NULL, 1, 'images/phone1.jpeg', 'Lorem ipsum, dolor sit amet consectetur adipisicing, elit. Aliquid beatae molestias odit ipsa accusamus modi adipisci dolorem voluptatum maiores incidunt voluptates ducimus, veritatis omnis ex dolores! Quo, numquam odit id laborum officia quidem animi, error, neque inventore beatae voluptatem accusantium! Eaque, nisi quas quo provident nemo unde dolorum perspiciatis perferendis incidunt voluptate iste, minima repellat aspernatur magni iusto blanditiis aliquid repudiandae qui quia, vel minus quis asperiores obcaecati. Fugiat odit nam delectus sunt nostrum optio, consequuntur nihil, maiores explicabo minus voluptates deserunt dolor ipsa eveniet, vero quod inventore obcaecati debitis, et soluta est. Suscipit optio consequuntur possimus, officiis incidunt. Ipsam, quisquam explicabo, nam in fuga cupiditate dicta accusantium est atque quia architecto et! Quisquam necessitatibus modi ex, eius iste rem magni voluptas itaque nihil natus voluptatum consequatur debitis fuga eveniet eaque officia, nam omnis reiciendis laboriosam perspiciatis dolorem, pariatur maxime corporis exercitationem. Libero eius expedita perferendis culpa quia minima animi accusantium fugiat laudantium et in, veritatis cupiditate iure placeat repudiandae autem labore quo, at veniam fuga. Obcaecati in maxime accusantium dolores, sunt doloribus quis deleniti tempore ipsa nesciunt molestiae eaque, nemo itaque quibusdam. Iure, quidem aut a velit dignissimos quos ea officiis natus, eligendi qui est? Provident debitis eos distinctio culpa rerum accusantium a eveniet illum dolorum necessitatibus quas est ex voluptate at nihil esse quo natus, impedit repellendus, officia. Odit sint numquam, veniam rem excepturi accusamus minima sapiente quasi cumque doloremque eius, suscipit, deserunt? Sint deleniti nobis aliquam error, ullam, blanditiis reiciendis consectetur. Dicta blanditiis provident dolores numquam hic alias earum ipsa fuga neque expedita recusandae ex, harum optio repellat fugiat commodi non eaque velit sunt, minus. Consectetur ipsa quidem natus illo voluptatibus sint quasi, iste officiis, dolorem, architecto maiores possimus perferendis. Amet sequi quas quos quod dicta tenetur cum, perferendis numquam fugit. Nostrum velit eum nemo reprehenderit, laudantium vel cum sint quo, quidem aspernatur laboriosam dicta aut vitae porro dolores impedit voluptatibus quibusdam molestias odit iusto recusandae nam saepe quia. Perferendis aliquam, harum, quas distinctio laboriosam maxime explicabo error quia animi illum vero repudiandae at accusantium sit magni magnam labore corporis suscipit. Reiciendis deleniti deserunt numquam autem aperiam, nam ipsa quaerat dolorum aspernatur sit eos similique, nesciunt, commodi voluptatibus vel necessitatibus odit sapiente magni molestias. Voluptatibus architecto odit ad voluptas numquam reiciendis rem distinctio sit, tempore hic unde temporibus, omnis, nisi quisquam enim. Reprehenderit unde est obcaecati dolores natus quasi excepturi dignissimos explicabo mollitia quibusdam quos cupiditate, reiciendis non dolorem! Similique tempora reprehenderit dignissimos illo esse at repellendus ad ipsam in sunt, cum ipsa, tenetur quidem, minus, neque pariatur eos. Distinctio doloremque placeat impedit aliquid libero, officiis dolorem asperiores explicabo quas dolores aspernatur itaque vel facilis quae magnam! Itaque nihil tempora quisquam est pariatur eos autem officiis accusamus ipsum, rem praesentium sed a. Magni quos, corporis alias! Labore, explicabo doloremque accusantium impedit, molestiae voluptas dolores iure commodi adipisci, facilis dolor! Deserunt unde nobis blanditiis enim voluptas vitae quibusdam dolores cum maxime nam qui quod corporis libero in perspiciatis vero tenetur at soluta, voluptatibus impedit, ipsam. Quidem, accusantium non.');

-- --------------------------------------------------------

--
-- Структура таблицы `region`
--

CREATE TABLE `region` (
  `id` int(3) UNSIGNED NOT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(2, 'Андижон'),
(7, 'Бухоро'),
(9, 'Жиззах'),
(14, 'Кашкадарё'),
(11, 'Коракалпогистон'),
(10, 'Навоий'),
(3, 'Наманган'),
(8, 'Самарканд'),
(12, 'Сирдарё'),
(13, 'Сурхондарё'),
(6, 'Тошкент'),
(5, 'Тошкент вил.'),
(15, 'Фаргона'),
(4, 'Хоразм');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Buyurtma qabul qilingan'),
(2, 'Buyurtma bekor qilingan');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `logged_at` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `created_at`, `updated_at`, `logged_at`, `status`) VALUES
(1, 1, 'iyusufjon', '123@$', NULL, NULL, NULL, 1),
(7, 3, 'Rahmatulloh', '9997', NULL, NULL, NULL, 1),
(11, 4, 'Anvar', '1234', NULL, NULL, NULL, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_city_region_idx` (`regionId`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_region` (`region_id`),
  ADD KEY `fk_customer_city` (`city_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_customer` (`customer_id`),
  ADD KEY `fk_orders_product` (`product_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amount` (`amount`);

--
-- Индексы таблицы `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `city`
--
ALTER TABLE `city`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_city_region` FOREIGN KEY (`regionId`) REFERENCES `region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `fk_customer_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `fk_customer_region` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `fk_orders_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
