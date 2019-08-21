-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 авг 2019 в 23:36
-- Версия на сървъра: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `statistic_service`
--

-- --------------------------------------------------------

--
-- Структура на таблица `calculation_price`
--

CREATE TABLE `calculation_price` (
  `calculation_price` int(11) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `company`
--

CREATE TABLE `company` (
  `symbol` varchar(255) NOT NULL,
  `calculationPrice` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `delayedPrice` double DEFAULT NULL,
  `extendedPrice` double DEFAULT NULL,
  `iexAskPrice` double DEFAULT NULL,
  `iexBidPrice` double DEFAULT NULL,
  `iexRealtimePrice` double DEFAULT NULL,
  `latestPrice` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `company`
--

INSERT INTO `company` (`symbol`, `calculationPrice`, `companyName`, `delayedPrice`, `extendedPrice`, `iexAskPrice`, `iexBidPrice`, `iexRealtimePrice`, `latestPrice`) VALUES
('AAPL', 'close', 'Apple, Inc.', NULL, NULL, 0, 0, 212.605, 212.64),
('WVE', 'close', 'Wave Life Sciences Ltd.', NULL, NULL, 0, 0, 22.015, 22.01),
('ARAY', 'close', 'Accuray, Inc.', NULL, NULL, 0, 0, 2.785, 2.78);

-- --------------------------------------------------------

--
-- Структура на таблица `delayed_price`
--

CREATE TABLE `delayed_price` (
  `delayed_price_id` int(11) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `delayed_price`
--

INSERT INTO `delayed_price` (`delayed_price_id`, `symbol`, `value`) VALUES
(1, 'AAPL', 210.36),
(7, 'WVE', 21.29),
(17, 'ARAY', NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `extended_price`
--

CREATE TABLE `extended_price` (
  `extended_price_id` int(11) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `extended_price`
--

INSERT INTO `extended_price` (`extended_price_id`, `symbol`, `value`) VALUES
(2, 'AAPL', 210.69),
(8, 'WVE', 21.29),
(18, 'ARAY', NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(867),
(867),
(867),
(867),
(867),
(867),
(867);

-- --------------------------------------------------------

--
-- Структура на таблица `iex_ask_price`
--

CREATE TABLE `iex_ask_price` (
  `iex_ask_price_id` int(11) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `iex_ask_price`
--

INSERT INTO `iex_ask_price` (`iex_ask_price_id`, `symbol`, `value`) VALUES
(496, 'AAPL', 212.5),
(9, 'WVE', 0),
(502, 'AAPL', 212.37),
(19, 'ARAY', 0),
(504, 'AAPL', 212.35),
(508, 'AAPL', 212.33),
(514, 'AAPL', 212.29),
(517, 'AAPL', 212.5),
(34, 'WVE', 21.7),
(38, 'WVE', 21.71),
(529, 'AAPL', 212.27),
(534, 'AAPL', 212.5),
(539, 'AAPL', 213.01),
(542, 'AAPL', 212.36),
(545, 'AAPL', 212.38),
(546, 'AAPL', 212.42),
(550, 'AAPL', 213.01),
(551, 'AAPL', 212.4),
(559, 'AAPL', 213.01),
(563, 'AAPL', 212.38),
(564, 'AAPL', 212.34),
(568, 'AAPL', 212.3),
(572, 'AAPL', 212.24),
(576, 'AAPL', 212.18),
(580, 'AAPL', 212.38),
(583, 'AAPL', 212.19),
(87, 'WVE', 0),
(587, 'AAPL', 212.15),
(590, 'AAPL', 212.38),
(595, 'AAPL', 212.17),
(599, 'AAPL', 212.38),
(621, 'AAPL', 212.25),
(624, 'AAPL', 212.2),
(627, 'AAPL', 212.38),
(643, 'AAPL', 212.24),
(647, 'AAPL', 212.38),
(652, 'AAPL', 212.24),
(659, 'AAPL', 212.38),
(160, 'ARAY', 2.81),
(165, 'WVE', 21.77),
(168, 'WVE', 0),
(678, 'AAPL', 212.3),
(684, 'AAPL', 213.01),
(690, 'AAPL', 212.32),
(694, 'AAPL', 213.01),
(698, 'AAPL', 212.37),
(700, 'AAPL', 213.01),
(712, 'AAPL', 212.37),
(717, 'AAPL', 212.39),
(721, 'AAPL', 213.01),
(725, 'AAPL', 212.4),
(729, 'AAPL', 213.01),
(733, 'AAPL', 212.48),
(739, 'AAPL', 212.5),
(742, 'AAPL', 213.01),
(746, 'AAPL', 212.58),
(750, 'AAPL', 212.5),
(754, 'AAPL', 212.55),
(759, 'AAPL', 212.54),
(763, 'AAPL', 212.53),
(770, 'AAPL', 212.56),
(773, 'AAPL', 212.58),
(781, 'AAPL', 212.56),
(785, 'AAPL', 212.54),
(788, 'AAPL', 212.55),
(793, 'AAPL', 213.01),
(798, 'AAPL', 212.58),
(801, 'AAPL', 212.57),
(805, 'AAPL', 212.58),
(809, 'AAPL', 213.01),
(813, 'AAPL', 212.64),
(816, 'AAPL', 213.01),
(819, 'AAPL', 212.65),
(823, 'AAPL', 213.01),
(832, 'AAPL', 212.6),
(834, 'AAPL', 213.01),
(840, 'AAPL', 214),
(847, 'AAPL', 212.6),
(849, 'AAPL', 212.61),
(854, 'AAPL', 215),
(859, 'AAPL', 225),
(862, 'AAPL', 0),
(369, 'AAPL', 212.22),
(388, 'AAPL', 212.2),
(392, 'AAPL', 212.24),
(396, 'AAPL', 212.45),
(400, 'AAPL', 212.28),
(403, 'AAPL', 212.45),
(411, 'AAPL', 212.34),
(415, 'AAPL', 212.45),
(416, 'AAPL', 212.37),
(417, 'AAPL', 212.44),
(418, 'AAPL', 212.45),
(423, 'AAPL', 212.39),
(424, 'AAPL', 212.45),
(425, 'AAPL', 212.39),
(426, 'AAPL', 212.34),
(430, 'AAPL', 212.33),
(433, 'AAPL', 212.34),
(437, 'ARAY', 2.79),
(440, 'WVE', 22.06),
(444, 'AAPL', 212.33),
(450, 'AAPL', 212.5),
(454, 'AAPL', 212.33),
(457, 'AAPL', 212.5),
(458, 'WVE', 0),
(461, 'WVE', 22.06),
(475, 'AAPL', 212.4),
(479, 'WVE', 0),
(480, 'AAPL', 212.5),
(489, 'AAPL', 212.42),
(491, 'AAPL', 212.5),
(493, 'AAPL', 212.43),
(512, 'WVE', 22.07),
(556, 'WVE', 0),
(592, 'WVE', 22.09),
(615, 'WVE', 22.1),
(616, 'WVE', 0),
(648, 'WVE', 22.13),
(674, 'WVE', 0),
(682, 'WVE', 22.08),
(688, 'WVE', 22.07),
(758, 'WVE', 22.04),
(769, 'WVE', 22.03),
(772, 'WVE', 22.04),
(777, 'WVE', 22.03),
(779, 'WVE', 0),
(792, 'WVE', 22.03),
(800, 'WVE', 0),
(861, 'ARAY', 0);

-- --------------------------------------------------------

--
-- Структура на таблица `iex_bid_price`
--

CREATE TABLE `iex_bid_price` (
  `iex_bid_price_id` int(11) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `iex_bid_price`
--

INSERT INTO `iex_bid_price` (`iex_bid_price_id`, `symbol`, `value`) VALUES
(427, 'AAPL', 210.04),
(10, 'WVE', 0),
(434, 'AAPL', 212.3),
(20, 'ARAY', 0),
(445, 'AAPL', 210.04),
(460, 'AAPL', 212.32),
(462, 'AAPL', 212.33),
(464, 'AAPL', 212.3),
(467, 'AAPL', 210.04),
(469, 'AAPL', 212.35),
(473, 'AAPL', 212.36),
(474, 'AAPL', 212.35),
(476, 'AAPL', 212.36),
(481, 'AAPL', 212.38),
(482, 'AAPL', 212.41),
(485, 'AAPL', 212.42),
(486, 'AAPL', 212.39),
(490, 'AAPL', 210.04),
(492, 'AAPL', 212.4),
(494, 'AAPL', 210.04),
(495, 'AAPL', 212.41),
(497, 'AAPL', 210.04),
(503, 'AAPL', 212.34),
(505, 'AAPL', 212.32),
(509, 'AAPL', 210.04),
(518, 'AAPL', 212.3),
(521, 'AAPL', 212.35),
(524, 'AAPL', 212.33),
(525, 'AAPL', 212.32),
(530, 'AAPL', 210.04),
(535, 'AAPL', 212.23),
(538, 'AAPL', 210.04),
(547, 'AAPL', 212.38),
(552, 'AAPL', 212.36),
(555, 'AAPL', 210.04),
(565, 'AAPL', 212.29),
(569, 'AAPL', 210.04),
(573, 'AAPL', 212.19),
(577, 'AAPL', 212.16),
(584, 'AAPL', 210.04),
(591, 'AAPL', 212.14),
(200, 'WVE', 21.7),
(594, 'AAPL', 210.04),
(602, 'AAPL', 212.13),
(603, 'AAPL', 210.04),
(607, 'AAPL', 212.15),
(610, 'AAPL', 210.04),
(628, 'AAPL', 212.21),
(631, 'AAPL', 210.04),
(635, 'AAPL', 212.2),
(638, 'AAPL', 212.22),
(641, 'AAPL', 212.24),
(644, 'AAPL', 212.2),
(653, 'AAPL', 210.04),
(657, 'AAPL', 212.19),
(660, 'AAPL', 210.04),
(663, 'AAPL', 212.23),
(668, 'AAPL', 212.24),
(669, 'AAPL', 210.04),
(672, 'AAPL', 212.22),
(673, 'AAPL', 212.29),
(679, 'AAPL', 212.27),
(685, 'AAPL', 212.3),
(691, 'AAPL', 212.29),
(695, 'AAPL', 212.32),
(699, 'AAPL', 210.04),
(705, 'AAPL', 212.41),
(708, 'AAPL', 212.39),
(714, 'AAPL', 210.04),
(718, 'AAPL', 212.36),
(722, 'AAPL', 212.37),
(730, 'AAPL', 212.43),
(734, 'AAPL', 212.47),
(743, 'AAPL', 212.56),
(747, 'AAPL', 205.06),
(751, 'AAPL', 212.48),
(755, 'AAPL', 212.53),
(760, 'AAPL', 212.51),
(764, 'AAPL', 212.5),
(771, 'AAPL', 212.52),
(774, 'AAPL', 212.56),
(782, 'AAPL', 205.06),
(789, 'AAPL', 212.53),
(794, 'AAPL', 212.52),
(799, 'AAPL', 212.55),
(802, 'AAPL', 212.54),
(806, 'AAPL', 212.55),
(810, 'AAPL', 212.62),
(820, 'AAPL', 212.64),
(824, 'AAPL', 212.65),
(827, 'AAPL', 205.06),
(833, 'AAPL', 212.58),
(837, 'AAPL', 212.6),
(841, 'AAPL', 205.06),
(844, 'AAPL', 212.59),
(848, 'AAPL', 205.06),
(850, 'AAPL', 212.59),
(855, 'AAPL', 190.04),
(863, 'AAPL', 0),
(393, 'AAPL', 212.21),
(397, 'AAPL', 210.04),
(410, 'AAPL', 212.27),
(412, 'AAPL', 212.3),
(441, 'WVE', 22.01),
(448, 'WVE', 22),
(449, 'WVE', 22.01),
(453, 'WVE', 22),
(459, 'WVE', 22.01),
(463, 'WVE', 22),
(468, 'WVE', 22.01),
(472, 'ARAY', 2.78),
(513, 'WVE', 22.02),
(528, 'WVE', 22.03),
(532, 'WVE', 22.02),
(557, 'WVE', 22.05),
(593, 'WVE', 22.03),
(598, 'WVE', 22.04),
(605, 'WVE', 0),
(632, 'ARAY', 0),
(642, 'WVE', 22.07),
(649, 'WVE', 22.08),
(656, 'WVE', 22.09),
(658, 'WVE', 22.08),
(675, 'WVE', 0),
(683, 'WVE', 22.03),
(689, 'WVE', 22.02),
(711, 'WVE', 22.03),
(713, 'WVE', 22.02),
(728, 'WVE', 0),
(797, 'ARAY', 2.78),
(853, 'ARAY', 0),
(858, 'WVE', 22),
(860, 'WVE', 0);

-- --------------------------------------------------------

--
-- Структура на таблица `iex_realtime_price`
--

CREATE TABLE `iex_realtime_price` (
  `iex_realtime_price_id` int(11) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `iex_realtime_price`
--

INSERT INTO `iex_realtime_price` (`iex_realtime_price_id`, `symbol`, `value`) VALUES
(428, 'AAPL', 212.34),
(11, 'WVE', 21.265),
(431, 'AAPL', 212.315),
(21, 'ARAY', 2.82),
(23, 'WVE', 21.73),
(435, 'AAPL', 212.305),
(446, 'AAPL', 212.315),
(451, 'AAPL', 212.335),
(455, 'AAPL', 212.315),
(465, 'AAPL', 212.33),
(470, 'AAPL', 212.375),
(477, 'AAPL', 212.38),
(487, 'AAPL', 212.42),
(498, 'AAPL', 212.395),
(500, 'AAPL', 212.365),
(506, 'AAPL', 212.34),
(73, 'ARAY', 2.815),
(510, 'AAPL', 212.33),
(515, 'AAPL', 212.275),
(519, 'AAPL', 212.32),
(522, 'AAPL', 212.33),
(526, 'AAPL', 212.35),
(531, 'AAPL', 212.26),
(536, 'AAPL', 212.25),
(540, 'AAPL', 212.41),
(107, 'WVE', 21.7),
(543, 'AAPL', 212.39),
(112, 'ARAY', 2.81),
(548, 'AAPL', 212.35),
(120, 'WVE', 21.74),
(553, 'AAPL', 212.41),
(561, 'AAPL', 212.375),
(566, 'AAPL', 212.32),
(570, 'AAPL', 212.3),
(574, 'AAPL', 212.22),
(578, 'AAPL', 212.185),
(581, 'AAPL', 212.18),
(585, 'AAPL', 212.15),
(145, 'WVE', 21.78),
(588, 'AAPL', 212.14),
(596, 'AAPL', 212.16),
(600, 'AAPL', 212.17),
(604, 'AAPL', 212.175),
(608, 'AAPL', 212.18),
(611, 'AAPL', 212.21),
(613, 'AAPL', 212.22),
(617, 'AAPL', 212.24),
(622, 'AAPL', 212.22),
(625, 'AAPL', 212.195),
(629, 'AAPL', 212.21),
(192, 'WVE', 21.8),
(636, 'AAPL', 212.22),
(639, 'AAPL', 212.235),
(201, 'WVE', 21.835),
(645, 'AAPL', 212.21),
(650, 'AAPL', 212.23),
(654, 'AAPL', 212.21),
(661, 'AAPL', 212.24),
(664, 'AAPL', 212.245),
(670, 'AAPL', 212.24),
(680, 'AAPL', 212.35),
(686, 'AAPL', 212.32),
(692, 'AAPL', 212.285),
(696, 'AAPL', 212.31),
(701, 'AAPL', 212.37),
(706, 'AAPL', 212.43),
(709, 'AAPL', 212.39),
(715, 'AAPL', 212.35),
(719, 'AAPL', 212.38),
(726, 'AAPL', 212.4),
(731, 'AAPL', 212.44),
(735, 'AAPL', 212.46),
(740, 'AAPL', 212.48),
(744, 'AAPL', 212.5),
(748, 'AAPL', 212.565),
(752, 'AAPL', 212.49),
(756, 'AAPL', 212.54),
(761, 'AAPL', 212.53),
(765, 'AAPL', 212.515),
(767, 'AAPL', 212.52),
(775, 'AAPL', 212.565),
(778, 'AAPL', 212.58),
(783, 'AAPL', 212.55),
(786, 'AAPL', 212.54),
(795, 'AAPL', 212.53),
(803, 'AAPL', 212.56),
(807, 'AAPL', 212.58),
(811, 'AAPL', 212.57),
(814, 'AAPL', 212.625),
(817, 'AAPL', 212.63),
(821, 'AAPL', 212.645),
(825, 'AAPL', 212.67),
(828, 'AAPL', 212.6),
(835, 'AAPL', 212.59),
(838, 'AAPL', 212.6),
(842, 'AAPL', 212.59),
(845, 'AAPL', 212.6),
(851, 'AAPL', 212.59),
(856, 'AAPL', 212.605),
(386, 'AAPL', 212.205),
(390, 'AAPL', 212.18),
(394, 'AAPL', 212.22),
(398, 'AAPL', 212.21),
(401, 'AAPL', 212.235),
(404, 'AAPL', 212.25),
(406, 'AAPL', 212.28),
(408, 'AAPL', 212.295),
(413, 'AAPL', 212.32),
(419, 'AAPL', 212.34),
(421, 'AAPL', 212.345),
(438, 'ARAY', 2.785),
(442, 'WVE', 22.02),
(483, 'WVE', 22.075),
(558, 'WVE', 22.07),
(619, 'WVE', 22.075),
(633, 'ARAY', 2.79),
(666, 'WVE', 22.105),
(676, 'WVE', 22.09),
(703, 'WVE', 22.05),
(723, 'ARAY', 2.785),
(737, 'WVE', 22.03),
(790, 'WVE', 22.035),
(830, 'WVE', 22.015);

-- --------------------------------------------------------

--
-- Структура на таблица `latest_price`
--

CREATE TABLE `latest_price` (
  `latest_price_id` int(11) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `latest_price`
--

INSERT INTO `latest_price` (`latest_price_id`, `symbol`, `value`) VALUES
(429, 'AAPL', 212.34),
(12, 'WVE', 21.29),
(432, 'AAPL', 212.315),
(22, 'ARAY', 2.82),
(24, 'WVE', 21.73),
(436, 'AAPL', 212.305),
(447, 'AAPL', 212.315),
(452, 'AAPL', 212.335),
(456, 'AAPL', 212.315),
(466, 'AAPL', 212.33),
(471, 'AAPL', 212.375),
(478, 'AAPL', 212.38),
(488, 'AAPL', 212.42),
(499, 'AAPL', 212.395),
(501, 'AAPL', 212.365),
(507, 'AAPL', 212.34),
(75, 'ARAY', 2.815),
(511, 'AAPL', 212.33),
(516, 'AAPL', 212.275),
(520, 'AAPL', 212.32),
(523, 'AAPL', 212.33),
(527, 'AAPL', 212.35),
(533, 'AAPL', 212.26),
(537, 'AAPL', 212.25),
(541, 'AAPL', 212.41),
(108, 'WVE', 21.7),
(544, 'AAPL', 212.39),
(113, 'ARAY', 2.81),
(549, 'AAPL', 212.35),
(121, 'WVE', 21.74),
(554, 'AAPL', 212.41),
(562, 'AAPL', 212.375),
(567, 'AAPL', 212.32),
(571, 'AAPL', 212.3),
(575, 'AAPL', 212.22),
(579, 'AAPL', 212.185),
(582, 'AAPL', 212.18),
(586, 'AAPL', 212.15),
(147, 'WVE', 21.78),
(589, 'AAPL', 212.14),
(597, 'AAPL', 212.16),
(601, 'AAPL', 212.17),
(606, 'AAPL', 212.175),
(609, 'AAPL', 212.18),
(612, 'AAPL', 212.21),
(614, 'AAPL', 212.22),
(618, 'AAPL', 212.24),
(623, 'AAPL', 212.22),
(626, 'AAPL', 212.195),
(630, 'AAPL', 212.21),
(193, 'WVE', 21.8),
(637, 'AAPL', 212.22),
(640, 'AAPL', 212.235),
(202, 'WVE', 21.835),
(646, 'AAPL', 212.21),
(651, 'AAPL', 212.23),
(655, 'AAPL', 212.21),
(662, 'AAPL', 212.24),
(665, 'AAPL', 212.245),
(671, 'AAPL', 212.24),
(681, 'AAPL', 212.35),
(687, 'AAPL', 212.32),
(693, 'AAPL', 212.285),
(697, 'AAPL', 212.31),
(702, 'AAPL', 212.37),
(707, 'AAPL', 212.43),
(710, 'AAPL', 212.39),
(716, 'AAPL', 212.35),
(720, 'AAPL', 212.38),
(727, 'AAPL', 212.4),
(732, 'AAPL', 212.44),
(736, 'AAPL', 212.46),
(741, 'AAPL', 212.48),
(745, 'AAPL', 212.5),
(749, 'AAPL', 212.565),
(753, 'AAPL', 212.49),
(757, 'AAPL', 212.54),
(762, 'AAPL', 212.53),
(766, 'AAPL', 212.515),
(768, 'AAPL', 212.52),
(776, 'AAPL', 212.565),
(780, 'AAPL', 212.58),
(784, 'AAPL', 212.55),
(787, 'AAPL', 212.54),
(796, 'AAPL', 212.53),
(804, 'AAPL', 212.56),
(808, 'AAPL', 212.58),
(812, 'AAPL', 212.57),
(815, 'AAPL', 212.625),
(818, 'AAPL', 212.63),
(822, 'AAPL', 212.645),
(826, 'AAPL', 212.67),
(829, 'AAPL', 212.6),
(836, 'AAPL', 212.59),
(839, 'AAPL', 212.6),
(843, 'AAPL', 212.59),
(846, 'AAPL', 212.6),
(852, 'AAPL', 212.59),
(857, 'AAPL', 212.605),
(864, 'AAPL', 212.64),
(391, 'AAPL', 212.18),
(395, 'AAPL', 212.22),
(399, 'AAPL', 212.21),
(402, 'AAPL', 212.235),
(405, 'AAPL', 212.25),
(407, 'AAPL', 212.28),
(409, 'AAPL', 212.295),
(414, 'AAPL', 212.32),
(420, 'AAPL', 212.34),
(422, 'AAPL', 212.345),
(439, 'ARAY', 2.785),
(443, 'WVE', 22.02),
(484, 'WVE', 22.075),
(560, 'WVE', 22.07),
(620, 'WVE', 22.075),
(634, 'ARAY', 2.79),
(667, 'WVE', 22.105),
(677, 'WVE', 22.09),
(704, 'WVE', 22.05),
(724, 'ARAY', 2.785),
(738, 'WVE', 22.03),
(791, 'WVE', 22.035),
(831, 'WVE', 22.015),
(865, 'WVE', 22.01),
(866, 'ARAY', 2.78);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calculation_price`
--
ALTER TABLE `calculation_price`
  ADD PRIMARY KEY (`calculation_price`),
  ADD KEY `FK3rdaxl1lqedqpxc764qrs864s` (`symbol`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`symbol`);

--
-- Indexes for table `delayed_price`
--
ALTER TABLE `delayed_price`
  ADD PRIMARY KEY (`delayed_price_id`),
  ADD KEY `FKp52e4ama649xm05v4i55wlcg` (`symbol`);

--
-- Indexes for table `extended_price`
--
ALTER TABLE `extended_price`
  ADD PRIMARY KEY (`extended_price_id`),
  ADD KEY `FK21kslse68gi41xwpn2cs4ku58` (`symbol`);

--
-- Indexes for table `iex_ask_price`
--
ALTER TABLE `iex_ask_price`
  ADD PRIMARY KEY (`iex_ask_price_id`),
  ADD KEY `FK3qr4m6g6ot1j02b04uxri92l0` (`symbol`);

--
-- Indexes for table `iex_bid_price`
--
ALTER TABLE `iex_bid_price`
  ADD PRIMARY KEY (`iex_bid_price_id`),
  ADD KEY `FKrfkqyr3hsg38590v48erc1ebr` (`symbol`);

--
-- Indexes for table `iex_realtime_price`
--
ALTER TABLE `iex_realtime_price`
  ADD PRIMARY KEY (`iex_realtime_price_id`),
  ADD KEY `FKkwscijr1v0675ds98yuuqj8lc` (`symbol`);

--
-- Indexes for table `latest_price`
--
ALTER TABLE `latest_price`
  ADD PRIMARY KEY (`latest_price_id`),
  ADD KEY `FK4a22ttvvnr4kwcpilr52ffp8x` (`symbol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
