-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 07:21 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_tbl`
--

CREATE TABLE IF NOT EXISTS `attendance_tbl` (
`id` int(100) NOT NULL,
  `emp_id` int(100) NOT NULL,
  `attendance` varchar(100) NOT NULL,
  `date1` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=669 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance_tbl`
--

INSERT INTO `attendance_tbl` (`id`, `emp_id`, `attendance`, `date1`) VALUES
(138, 3, 'P', '10-10-2022'),
(139, 5, 'A', '10-10-2022'),
(140, 7, 'P', '10-10-2022'),
(141, 8, 'H', '10-10-2022'),
(142, 9, 'P', '10-10-2022'),
(143, 10, 'P', '10-10-2022'),
(144, 12, 'P', '10-10-2022'),
(145, 15, 'A', '10-10-2022'),
(146, 3, 'P', '11-10-2022'),
(147, 5, 'H', '11-10-2022'),
(148, 7, 'P', '11-10-2022'),
(149, 8, 'P', '11-10-2022'),
(150, 9, 'P', '11-10-2022'),
(151, 10, 'P', '11-10-2022'),
(152, 12, 'A', '11-10-2022'),
(153, 15, 'P', '11-10-2022'),
(154, 3, 'H', '12-10-2022'),
(155, 5, 'P', '12-10-2022'),
(156, 7, 'P', '12-10-2022'),
(157, 8, 'P', '12-10-2022'),
(158, 9, 'P', '12-10-2022'),
(159, 10, 'A', '12-10-2022'),
(160, 12, 'P', '12-10-2022'),
(161, 15, 'P', '12-10-2022'),
(162, 3, 'H', '13-10-2022'),
(163, 5, 'P', '13-10-2022'),
(164, 7, 'P', '13-10-2022'),
(165, 8, 'P', '13-10-2022'),
(166, 9, 'P', '13-10-2022'),
(167, 10, 'P', '13-10-2022'),
(168, 12, 'A', '13-10-2022'),
(169, 15, 'P', '13-10-2022'),
(170, 3, 'P', '14-10-2022'),
(171, 5, 'A', '14-10-2022'),
(172, 7, 'P', '14-10-2022'),
(173, 8, 'P', '14-10-2022'),
(174, 9, 'P', '14-10-2022'),
(175, 10, 'H', '14-10-2022'),
(176, 13, 'P', '14-10-2022'),
(177, 15, 'H', '14-10-2022'),
(178, 1, 'P', '15-10-2022'),
(179, 2, 'P', '15-10-2022'),
(180, 3, 'P', '15-10-2022'),
(181, 4, 'P', '15-10-2022'),
(182, 5, 'P', '15-10-2022'),
(183, 6, 'P', '15-10-2022'),
(184, 7, 'P', '15-10-2022'),
(185, 8, 'P', '15-10-2022'),
(186, 9, 'P', '15-10-2022'),
(187, 10, 'P', '15-10-2022'),
(188, 11, 'P', '15-10-2022'),
(189, 12, 'P', '15-10-2022'),
(190, 13, 'P', '15-10-2022'),
(191, 14, 'P', '15-10-2022'),
(192, 15, 'P', '15-10-2022'),
(193, 1, 'P', '16-10-2022'),
(221, 2, 'P', '16-10-2022'),
(222, 3, 'P', '16-10-2022'),
(223, 4, 'P', '16-10-2022'),
(224, 5, 'P', '16-10-2022'),
(225, 6, 'P', '16-10-2022'),
(226, 7, 'P', '16-10-2022'),
(227, 8, 'P', '16-10-2022'),
(235, 9, 'P', '16-10-2022'),
(236, 10, 'P', '16-10-2022'),
(237, 11, 'P', '16-10-2022'),
(238, 12, 'P', '16-10-2022'),
(239, 13, 'P', '16-10-2022'),
(240, 14, 'P', '16-10-2022'),
(241, 15, 'P', '16-10-2022'),
(249, 1, 'P', '18-10-2022'),
(250, 2, 'P', '18-10-2022'),
(251, 3, 'P', '18-10-2022'),
(252, 4, 'P', '18-10-2022'),
(253, 5, 'P', '18-10-2022'),
(254, 6, 'P', '18-10-2022'),
(255, 7, 'P', '18-10-2022'),
(266, 8, 'F', '18-10-2022'),
(267, 9, 'H', '18-10-2022'),
(272, 10, 'F', '18-10-2022'),
(273, 11, 'P', '18-10-2022'),
(275, 12, 'P', '18-10-2022'),
(276, 13, 'A', '18-10-2022'),
(277, 14, 'P', '18-10-2022'),
(278, 15, 'P', '18-10-2022'),
(279, 1, 'H', '19-10-2022'),
(280, 2, 'H', '19-10-2022'),
(281, 3, 'H', '19-10-2022'),
(282, 4, 'F', '19-10-2022'),
(283, 5, 'P', '19-10-2022'),
(284, 6, 'H', '19-10-2022'),
(285, 7, 'H', '19-10-2022'),
(286, 8, 'H', '19-10-2022'),
(287, 9, 'L', '19-10-2022'),
(288, 10, 'A', '19-10-2022'),
(289, 11, 'H', '19-10-2022'),
(290, 12, 'H', '19-10-2022'),
(291, 13, 'A', '19-10-2022'),
(292, 14, 'P', '19-10-2022'),
(293, 15, 'H', '19-10-2022'),
(294, 1, 'P', '20-10-2022'),
(295, 2, 'P', '20-10-2022'),
(296, 3, 'A', '20-10-2022'),
(297, 4, 'P', '20-10-2022'),
(298, 5, 'H', '20-10-2022'),
(299, 6, 'P', '20-10-2022'),
(300, 7, 'P', '20-10-2022'),
(301, 8, 'P', '20-10-2022'),
(302, 9, 'P', '20-10-2022'),
(303, 10, 'F', '20-10-2022'),
(304, 11, 'A', '20-10-2022'),
(305, 12, 'P', '20-10-2022'),
(306, 13, 'P', '20-10-2022'),
(307, 14, 'P', '20-10-2022'),
(308, 15, 'P', '20-10-2022'),
(309, 1, 'A', '21-10-2022'),
(310, 2, 'F', '21-10-2022'),
(311, 3, 'P', '21-10-2022'),
(312, 4, 'P', '21-10-2022'),
(313, 5, 'F', '21-10-2022'),
(314, 6, 'H', '21-10-2022'),
(315, 7, 'P', '21-10-2022'),
(316, 8, 'P', '21-10-2022'),
(317, 9, 'P', '21-10-2022'),
(318, 10, 'A', '21-10-2022'),
(319, 11, 'H', '21-10-2022'),
(320, 12, 'F', '21-10-2022'),
(321, 13, 'P', '21-10-2022'),
(322, 14, 'P', '21-10-2022'),
(323, 15, 'P', '21-10-2022'),
(324, 1, 'A', '22-10-2022'),
(325, 2, 'F', '22-10-2022'),
(326, 3, 'P', '22-10-2022'),
(327, 4, 'P', '22-10-2022'),
(328, 5, 'P', '22-10-2022'),
(329, 6, 'A', '22-10-2022'),
(330, 7, 'P', '22-10-2022'),
(331, 8, 'P', '22-10-2022'),
(332, 9, 'F', '22-10-2022'),
(333, 10, 'H', '22-10-2022'),
(334, 11, 'P', '22-10-2022'),
(335, 12, 'P', '22-10-2022'),
(336, 13, 'P', '22-10-2022'),
(337, 14, 'P', '22-10-2022'),
(338, 15, 'P', '22-10-2022'),
(339, 1, 'H', '23-10-2022'),
(340, 2, 'P', '23-10-2022'),
(341, 3, 'P', '23-10-2022'),
(342, 4, 'F', '23-10-2022'),
(343, 5, 'P', '23-10-2022'),
(344, 6, 'P', '23-10-2022'),
(345, 7, 'H', '23-10-2022'),
(346, 8, 'H', '23-10-2022'),
(347, 9, 'F', '23-10-2022'),
(348, 10, 'F', '23-10-2022'),
(349, 11, 'P', '23-10-2022'),
(350, 12, 'F', '23-10-2022'),
(351, 13, 'P', '23-10-2022'),
(352, 14, 'P', '23-10-2022'),
(353, 15, 'H', '23-10-2022'),
(354, 1, 'P', '24-10-2022'),
(355, 2, 'P', '24-10-2022'),
(356, 3, 'P', '24-10-2022'),
(357, 4, 'P', '24-10-2022'),
(358, 5, 'P', '24-10-2022'),
(359, 6, 'P', '24-10-2022'),
(360, 7, 'F', '24-10-2022'),
(361, 8, 'P', '24-10-2022'),
(362, 9, 'P', '24-10-2022'),
(363, 10, 'P', '24-10-2022'),
(364, 11, 'P', '24-10-2022'),
(365, 12, 'P', '24-10-2022'),
(366, 13, 'P', '24-10-2022'),
(367, 14, 'F', '24-10-2022'),
(368, 15, 'F', '24-10-2022'),
(369, 1, 'P', '25-10-2022'),
(370, 2, 'P', '25-10-2022'),
(371, 3, 'P', '25-10-2022'),
(372, 4, 'P', '25-10-2022'),
(373, 5, 'P', '25-10-2022'),
(374, 6, 'P', '25-10-2022'),
(375, 7, 'P', '25-10-2022'),
(376, 8, 'P', '25-10-2022'),
(377, 9, 'A', '25-10-2022'),
(378, 10, 'P', '25-10-2022'),
(379, 11, 'H', '25-10-2022'),
(380, 12, 'P', '25-10-2022'),
(381, 13, 'P', '25-10-2022'),
(382, 14, 'P', '25-10-2022'),
(383, 15, 'P', '25-10-2022'),
(384, 1, 'H', '26-10-2022'),
(385, 2, 'P', '26-10-2022'),
(386, 3, 'P', '26-10-2022'),
(387, 4, 'P', '26-10-2022'),
(388, 5, 'A', '26-10-2022'),
(389, 6, 'P', '26-10-2022'),
(390, 7, 'F', '26-10-2022'),
(391, 8, 'P', '26-10-2022'),
(392, 9, 'P', '26-10-2022'),
(393, 10, 'A', '26-10-2022'),
(394, 11, 'P', '26-10-2022'),
(395, 12, 'P', '26-10-2022'),
(396, 13, 'H', '26-10-2022'),
(397, 14, 'P', '26-10-2022'),
(398, 15, 'P', '26-10-2022'),
(399, 1, 'F', '27-10-2022'),
(400, 2, 'P', '27-10-2022'),
(401, 3, 'F', '27-10-2022'),
(402, 4, 'H', '27-10-2022'),
(403, 5, 'A', '27-10-2022'),
(404, 6, 'P', '27-10-2022'),
(405, 7, 'A', '27-10-2022'),
(406, 8, 'H', '27-10-2022'),
(407, 9, 'P', '27-10-2022'),
(408, 10, 'P', '27-10-2022'),
(409, 11, 'F', '27-10-2022'),
(410, 12, 'A', '27-10-2022'),
(411, 13, 'P', '27-10-2022'),
(412, 14, 'P', '27-10-2022'),
(413, 15, 'A', '27-10-2022'),
(414, 1, 'P', '28-10-2022'),
(415, 2, 'P', '28-10-2022'),
(416, 3, 'A', '28-10-2022'),
(417, 4, 'P', '28-10-2022'),
(418, 5, 'P', '28-10-2022'),
(419, 6, 'P', '28-10-2022'),
(420, 7, 'A', '28-10-2022'),
(421, 8, 'F', '28-10-2022'),
(422, 9, 'P', '28-10-2022'),
(423, 10, 'P', '28-10-2022'),
(424, 11, 'P', '28-10-2022'),
(425, 12, 'P', '28-10-2022'),
(426, 13, 'P', '28-10-2022'),
(427, 14, 'P', '28-10-2022'),
(428, 15, 'P', '28-10-2022'),
(429, 1, 'H', '29-10-2022'),
(430, 2, 'P', '29-10-2022'),
(431, 3, 'P', '29-10-2022'),
(432, 4, 'H', '29-10-2022'),
(433, 5, 'F', '29-10-2022'),
(434, 6, 'F', '29-10-2022'),
(435, 7, 'F', '29-10-2022'),
(436, 8, 'F', '29-10-2022'),
(437, 9, 'F', '29-10-2022'),
(438, 10, 'F', '29-10-2022'),
(439, 11, 'H', '29-10-2022'),
(440, 12, 'H', '29-10-2022'),
(441, 13, 'H', '29-10-2022'),
(442, 14, 'H', '29-10-2022'),
(443, 15, 'H', '29-10-2022'),
(444, 1, 'P', '30-10-2022'),
(445, 2, 'P', '30-10-2022'),
(446, 3, 'P', '30-10-2022'),
(447, 4, 'P', '30-10-2022'),
(448, 5, 'P', '30-10-2022'),
(449, 6, 'P', '30-10-2022'),
(450, 7, 'P', '30-10-2022'),
(451, 8, 'P', '30-10-2022'),
(452, 9, 'P', '30-10-2022'),
(453, 10, 'P', '30-10-2022'),
(454, 11, 'P', '30-10-2022'),
(455, 12, 'P', '30-10-2022'),
(456, 13, 'P', '30-10-2022'),
(457, 14, 'P', '30-10-2022'),
(458, 15, 'P', '30-10-2022'),
(459, 1, 'A', '31-10-2022'),
(460, 2, 'A', '31-10-2022'),
(461, 3, 'A', '31-10-2022'),
(462, 4, 'A', '31-10-2022'),
(463, 5, 'A', '31-10-2022'),
(464, 6, 'A', '31-10-2022'),
(465, 7, 'A', '31-10-2022'),
(466, 8, 'A', '31-10-2022'),
(467, 9, 'A', '31-10-2022'),
(468, 10, 'A', '31-10-2022'),
(469, 11, 'A', '31-10-2022'),
(470, 12, 'A', '31-10-2022'),
(471, 13, 'A', '31-10-2022'),
(472, 14, 'A', '31-10-2022'),
(473, 15, 'A', '31-10-2022'),
(474, 1, 'H', '01-11-2022'),
(475, 2, 'H', '01-11-2022'),
(476, 3, 'H', '01-11-2022'),
(477, 4, 'H', '01-11-2022'),
(478, 5, 'H', '01-11-2022'),
(479, 6, 'H', '01-11-2022'),
(480, 7, 'H', '01-11-2022'),
(481, 8, 'H', '01-11-2022'),
(482, 9, 'H', '01-11-2022'),
(483, 10, 'H', '01-11-2022'),
(484, 11, 'H', '01-11-2022'),
(485, 12, 'H', '01-11-2022'),
(486, 13, 'H', '01-11-2022'),
(487, 14, 'H', '01-11-2022'),
(488, 15, 'H', '01-11-2022'),
(489, 1, 'P', '03-11-2022'),
(490, 2, 'P', '03-11-2022'),
(491, 3, 'P', '03-11-2022'),
(492, 4, 'P', '03-11-2022'),
(493, 5, 'P', '03-11-2022'),
(494, 6, 'P', '03-11-2022'),
(495, 7, 'P', '03-11-2022'),
(496, 8, 'P', '03-11-2022'),
(497, 9, 'P', '03-11-2022'),
(498, 10, 'P', '03-11-2022'),
(499, 11, 'P', '03-11-2022'),
(500, 12, 'P', '03-11-2022'),
(501, 13, 'P', '03-11-2022'),
(502, 14, 'P', '03-11-2022'),
(503, 15, 'P', '03-11-2022'),
(504, 1, 'A', '04-11-2022'),
(505, 2, 'A', '04-11-2022'),
(506, 3, 'A', '04-11-2022'),
(507, 4, 'A', '04-11-2022'),
(508, 5, 'A', '04-11-2022'),
(509, 6, 'A', '04-11-2022'),
(510, 7, 'A', '04-11-2022'),
(511, 8, 'A', '04-11-2022'),
(512, 9, 'A', '04-11-2022'),
(513, 10, 'A', '04-11-2022'),
(514, 11, 'A', '04-11-2022'),
(515, 12, 'A', '04-11-2022'),
(516, 13, 'A', '04-11-2022'),
(517, 14, 'A', '04-11-2022'),
(518, 15, 'A', '04-11-2022'),
(519, 1, 'P', '05-11-2022'),
(520, 2, 'P', '05-11-2022'),
(521, 3, 'P', '05-11-2022'),
(522, 4, 'P', '05-11-2022'),
(523, 5, 'P', '05-11-2022'),
(524, 6, 'P', '05-11-2022'),
(525, 7, 'P', '05-11-2022'),
(526, 8, 'P', '05-11-2022'),
(527, 9, 'P', '05-11-2022'),
(528, 10, 'P', '05-11-2022'),
(529, 11, 'P', '05-11-2022'),
(530, 12, 'P', '05-11-2022'),
(531, 13, 'P', '05-11-2022'),
(532, 14, 'P', '05-11-2022'),
(533, 15, 'P', '05-11-2022'),
(534, 1, 'H', '06-11-2022'),
(535, 2, 'H', '06-11-2022'),
(536, 3, 'H', '06-11-2022'),
(537, 4, 'H', '06-11-2022'),
(538, 5, 'H', '06-11-2022'),
(539, 6, 'H', '06-11-2022'),
(540, 7, 'H', '06-11-2022'),
(541, 8, 'H', '06-11-2022'),
(542, 9, 'H', '06-11-2022'),
(543, 10, 'H', '06-11-2022'),
(544, 11, 'H', '06-11-2022'),
(545, 12, 'H', '06-11-2022'),
(546, 13, 'H', '06-11-2022'),
(547, 14, 'H', '06-11-2022'),
(548, 15, 'H', '06-11-2022'),
(549, 1, 'F', '07-11-2022'),
(550, 2, 'F', '07-11-2022'),
(551, 3, 'F', '07-11-2022'),
(552, 4, 'F', '07-11-2022'),
(553, 5, 'F', '07-11-2022'),
(554, 6, 'F', '07-11-2022'),
(555, 7, 'F', '07-11-2022'),
(556, 8, 'F', '07-11-2022'),
(557, 9, 'F', '07-11-2022'),
(558, 10, 'F', '07-11-2022'),
(559, 11, 'F', '07-11-2022'),
(560, 12, 'F', '07-11-2022'),
(561, 13, 'F', '07-11-2022'),
(562, 14, 'F', '07-11-2022'),
(563, 15, 'F', '07-11-2022'),
(564, 1, 'P', '08-11-2022'),
(565, 2, 'P', '08-11-2022'),
(566, 3, 'P', '08-11-2022'),
(567, 4, 'P', '08-11-2022'),
(568, 5, 'P', '08-11-2022'),
(569, 6, 'P', '08-11-2022'),
(570, 7, 'P', '08-11-2022'),
(571, 8, 'P', '08-11-2022'),
(572, 9, 'P', '08-11-2022'),
(573, 10, 'P', '08-11-2022'),
(574, 11, 'P', '08-11-2022'),
(575, 12, 'P', '08-11-2022'),
(576, 13, 'P', '08-11-2022'),
(577, 14, 'P', '08-11-2022'),
(578, 15, 'P', '08-11-2022'),
(594, 1, 'P', '09-11-2022'),
(595, 2, 'P', '09-11-2022'),
(596, 3, 'P', '09-11-2022'),
(597, 4, 'P', '09-11-2022'),
(598, 5, 'P', '09-11-2022'),
(599, 6, 'P', '09-11-2022'),
(600, 7, 'P', '09-11-2022'),
(601, 8, 'P', '09-11-2022'),
(602, 9, 'P', '09-11-2022'),
(603, 10, 'P', '09-11-2022'),
(604, 11, 'P', '09-11-2022'),
(605, 12, 'P', '09-11-2022'),
(606, 13, 'P', '09-11-2022'),
(607, 14, 'P', '09-11-2022'),
(608, 15, 'P', '09-11-2022'),
(624, 1, 'H', '10-11-2022'),
(625, 2, 'H', '10-11-2022'),
(626, 3, 'H', '10-11-2022'),
(627, 4, 'H', '10-11-2022'),
(628, 5, 'H', '10-11-2022'),
(629, 6, 'H', '10-11-2022'),
(630, 7, 'H', '10-11-2022'),
(631, 8, 'H', '10-11-2022'),
(632, 9, 'H', '10-11-2022'),
(633, 10, 'H', '10-11-2022'),
(634, 11, 'H', '10-11-2022'),
(635, 12, 'H', '10-11-2022'),
(636, 13, 'H', '10-11-2022'),
(637, 14, 'H', '10-11-2022'),
(638, 15, 'H', '10-11-2022'),
(639, 1, 'P', '11-11-2022'),
(640, 2, 'P', '11-11-2022'),
(641, 3, 'P', '11-11-2022'),
(642, 4, 'P', '11-11-2022'),
(643, 5, 'P', '11-11-2022'),
(644, 6, 'P', '11-11-2022'),
(645, 7, 'P', '11-11-2022'),
(646, 8, 'P', '11-11-2022'),
(647, 9, 'P', '11-11-2022'),
(648, 10, 'P', '11-11-2022'),
(649, 11, 'P', '11-11-2022'),
(650, 12, 'P', '11-11-2022'),
(651, 13, 'P', '11-11-2022'),
(652, 14, 'P', '11-11-2022'),
(653, 15, 'P', '11-11-2022'),
(654, 1, 'P', '13-11-2022'),
(655, 2, 'P', '13-11-2022'),
(656, 3, 'P', '13-11-2022'),
(657, 4, 'P', '13-11-2022'),
(658, 5, 'P', '13-11-2022'),
(659, 6, 'P', '13-11-2022'),
(660, 7, 'P', '13-11-2022'),
(661, 8, 'P', '13-11-2022'),
(662, 9, 'P', '13-11-2022'),
(663, 10, 'P', '13-11-2022'),
(664, 11, 'P', '13-11-2022'),
(665, 12, 'P', '13-11-2022'),
(666, 13, 'P', '13-11-2022'),
(667, 14, 'P', '13-11-2022'),
(668, 15, 'P', '13-11-2022');

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE IF NOT EXISTS `department_list` (
`id` int(30) NOT NULL,
  `department` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `department`, `description`) VALUES
(1, 'IT Department', 'Information Technology Department'),
(4, 'Project Management', 'Project Management'),
(5, 'Finance', 'Finance'),
(6, 'Research', 'Research'),
(7, 'Support', 'Support'),
(8, 'Network Engineering', 'Network Engineering'),
(9, 'Sales and Marketing', 'Sales and Marketing'),
(10, 'HRM', 'Human Resource Management'),
(11, 'Transport', 'Transport'),
(12, 'Helpdesk', 'Helpdesk'),
(13, 'Administration', 'Administration');

-- --------------------------------------------------------

--
-- Table structure for table `designation_list`
--

CREATE TABLE IF NOT EXISTS `designation_list` (
`id` int(30) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation_list`
--

INSERT INTO `designation_list` (`id`, `designation`, `description`) VALUES
(1, 'Sr. Programmer', 'Senior Programmer'),
(2, 'Jr. Programmer', 'Junior Programmer'),
(3, 'Project Manager', 'Project Manager'),
(4, 'QA/QC Analyst', 'Quality Assurance and Quality Control Analyst'),
(5, 'Sales Analyst', 'Sales Analyst'),
(6, 'Accountant', 'Accountant'),
(7, 'Research Associate', 'Research Associate'),
(8, 'Jr. Research Associate', 'Junior Research Associate'),
(9, 'IT Analyst', 'IT Analyst'),
(10, 'Software Engineer', 'Software Engineer'),
(11, 'Programmer Analyst', 'Programmer Analyst'),
(12, 'Vice Chairman', 'Vice Chairman'),
(13, 'CEO', 'Chief Executive Officer '),
(14, 'Chief Finance & Admin Officer', 'Chief Finance & Admin Officer'),
(15, 'Technical Specialist', 'Technical Specialist'),
(16, 'Trainee Engineer', 'Trainee Engineer'),
(17, 'Intern', 'Intern'),
(18, 'Head of Department', 'Head of Department'),
(19, 'Web Developer', 'Web Developer'),
(20, 'Big Data Engineer', 'Big Data Engineer'),
(21, 'Assistant Manager', 'Assistant Manager'),
(23, 'HR Manager', 'Human Resource Management'),
(24, 'Project Evaluator', 'Project Evaluator');

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE IF NOT EXISTS `employee_list` (
`id` int(30) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `designation_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `doj` date NOT NULL,
  `avatar` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`id`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `department_id`, `designation_id`, `evaluator_id`, `doj`, `avatar`, `date_created`) VALUES
(1, '', 'John', '', 'Smith', 'jsmith@mail.com', '1254737c076cf867dc53d60a0364f38e', 1, 2, 1, '2022-10-10', '1666195980_1666195980_male employee.jpg', '2022-10-05 10:15:38'),
(2, '', 'Michael', 'J', 'Williams', 'mwilliams@mail.com', '3cc93e9a6741d8b40460457139cf8ced', 1, 1, 1, '2022-10-10', '1666196040_male employee.jpg', '2022-10-05 13:52:48'),
(3, '', 'Jacob', '', 'Greenwood', 'jgreenwood@mail.com', '1b6188908a4886613d9c5e5ea03f8a1e', 5, 6, 1, '2022-10-10', '1666195920_male employee.jpg', '2022-10-19 21:10:40'),
(4, '', 'George', '', 'Nicolson', 'gnicolson@mail.com', '674f3feeee86c245e156af7b7df9893c', 8, 15, 2, '2022-10-10', '1666195980_male employee.jpg', '2022-10-19 21:37:42'),
(5, '', 'Stephany', '', 'Robs', 'srobs@mail.com', '37b3fa40ac27f571407b5ddec77d9350', 9, 5, 3, '2022-10-10', '1666195980_1666195920_female employee.png', '2022-10-19 21:38:57'),
(6, '', 'Emily', '', 'Denn', 'edenn@mail.com', '65881bf6618189612f907e6b1fd76aa5', 6, 8, 2, '2022-10-10', '1666195920_female employee.png', '2022-10-19 21:40:00'),
(7, '', 'Amita', '', 'Bansal', 'abansal@mail.com', 'ebfe93d47d084b1d69ab36528ec06686', 11, 3, 3, '2022-10-10', '1666198320_1666195980_1666195920_female employee.png', '2022-10-19 22:22:49'),
(8, '', 'Amelia', '', 'Cary', 'acary@mail.com', '327b5dc1b0b7fb5d87a9660a65078ebf', 9, 4, 2, '2022-10-10', '1666198380_female employee.png', '2022-10-19 22:23:55'),
(9, '', 'Ben', '', 'Thompson', 'bthompson@mail.com', '67c105f26ebcbb2a53c86a80425672b7', 1, 1, 1, '2022-10-15', '1666198560_1666195980_male employee.jpg', '2022-10-19 22:26:05'),
(10, '', 'Richard', '', 'Anderson', 'randerson@mail.com', 'f1daf4ec5cde20bf4d00942b8e309880', 1, 16, 2, '2022-10-15', '1666198680_1666195920_male employee.jpg', '2022-10-19 22:28:23'),
(11, '', 'Rose', '', 'Dawson', 'rdawson@mail.com', '7a5b1f9a8885622882ed3cbef4987bfa', 12, 17, 2, '2022-10-15', '1666198800_1666195920_female employee.png', '2022-10-19 22:30:17'),
(12, '', 'Chandler', 'M', 'Bing', 'cbing@mail.com', 'c26bc8dbd44105a304dfd97a394ce564', 5, 18, 3, '2022-10-15', '1666198860_1666195920_male employee.jpg', '2022-10-19 22:31:57'),
(13, '', 'Bella', '', 'Ann', 'bann@mail.com', 'fad79809c94334764db2125c9a30a03e', 1, 20, 3, '2022-10-15', '1666198980_1666195920_female employee.png', '2022-10-19 22:33:41'),
(14, '', 'Anant', '', 'Tyagi', 'atyagi@mail.com', 'f1f79411330c82be2c3e0cbc4ff79bc7', 4, 19, 1, '2022-10-15', '1666199160_1666198560_1666195980_male employee.jpg', '2022-10-19 22:36:36'),
(15, '', 'Kiara', '', 'Sahni', 'ksahni@mail.com', '7c087d3b9ae8758bf5d446e69a594b4c', 7, 2, 2, '2022-10-15', '1666199220_1666198320_1666195980_1666195920_female employee.png', '2022-10-19 22:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_list`
--

CREATE TABLE IF NOT EXISTS `evaluator_list` (
`id` int(30) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `designation_id` int(30) NOT NULL,
  `avatar` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluator_list`
--

INSERT INTO `evaluator_list` (`id`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `department_id`, `designation_id`, `avatar`, `date_created`) VALUES
(1, '', 'Claire', '', 'Blake', 'cblake@mail.com', '4744ddea876b11dcb1d169fadf494418', 13, 24, '1666194480_user1.jpg', '2022-10-19 21:21:16'),
(2, '', 'Sera', '', 'Wayne', 'swayne@mail.com', '96305e0eeeab93a9c53ee53eb41c924e', 10, 23, '1666194660_picture.jpg', '2022-10-19 21:21:18'),
(3, '', 'Karan', '', 'Singh', 'ksingh@mail.com', '5ea793a5b73a725eee063ed339c7efde', 10, 23, '1666194720_img.jpg', '2022-10-19 21:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `kpi`
--

CREATE TABLE IF NOT EXISTS `kpi` (
`id` int(30) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `evaluator_id` int(11) NOT NULL,
  `work_efficiency` int(11) NOT NULL,
  `hcroi` int(11) NOT NULL,
  `nps` int(11) NOT NULL,
  `performance_growth` int(11) NOT NULL,
  `profit_per_fte` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kpi`
--

INSERT INTO `kpi` (`id`, `employee_id`, `evaluator_id`, `work_efficiency`, `hcroi`, `nps`, `performance_growth`, `profit_per_fte`, `date_created`) VALUES
(1, 8, 2, 4, 3, 4, 4, 4, '2022-10-21 01:50:10'),
(2, 13, 3, 4, 4, 4, 4, 5, '2022-10-23 01:49:14'),
(14, 14, 1, 4, 4, 4, 5, 4, '2022-10-29 01:52:14'),
(16, 3, 1, 4, 3, 4, 4, 4, '2022-10-31 19:46:39'),
(17, 10, 2, 3, 3, 3, 4, 4, '2022-11-01 00:54:24'),
(18, 15, 2, 3, 2, 3, 4, 3, '2022-11-01 00:54:53'),
(19, 6, 2, 2, 3, 3, 4, 2, '2022-11-01 00:55:23'),
(20, 5, 3, 4, 5, 5, 4, 5, '2022-11-01 00:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
`id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `efficiency` int(11) NOT NULL,
  `timeliness` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `attention` int(11) NOT NULL,
  `creativity` int(11) NOT NULL,
  `accuracy` int(11) NOT NULL,
  `communication` int(11) NOT NULL,
  `punctuality` int(11) NOT NULL,
  `consistency` int(11) NOT NULL,
  `teamwork` int(11) NOT NULL,
  `presentation` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `employee_id`, `task_id`, `evaluator_id`, `efficiency`, `timeliness`, `quality`, `attention`, `creativity`, `accuracy`, `communication`, `punctuality`, `consistency`, `teamwork`, `presentation`, `remarks`, `date_created`) VALUES
(4, 8, 2, 2, 4, 2, 4, 4, 3, 4, 5, 4, 5, 3, 4, 'Could be better! Get your work evaluated.', '2022-10-21 01:57:06'),
(7, 13, 11, 3, 4, 5, 2, 2, 3, 4, 5, 4, 5, 3, 4, 'Could have been better!', '2022-10-23 01:49:24'),
(11, 2, 4, 1, 5, 3, 4, 4, 5, 4, 5, 5, 5, 5, 5, 'Good', '2022-10-29 02:03:52'),
(13, 14, 8, 1, 3, 3, 3, 2, 4, 3, 1, 3, 3, 4, 3, 'Sorry Anant, late communication', '2022-10-29 02:26:20'),
(15, 2, 10, 1, 2, 5, 5, 5, 5, 3, 4, 5, 5, 2, 5, 'Good work!', '2022-10-29 15:37:27'),
(16, 3, 23, 1, 4, 4, 4, 5, 5, 4, 3, 5, 4, 5, 4, 'Frequent communication reqd. Update progress asap.', '2022-10-31 19:36:27'),
(17, 14, 29, 1, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4, 'Keep up the good work!', '2022-11-11 02:03:50'),
(18, 2, 16, 1, 4, 3, 3, 4, 4, 4, 3, 4, 4, 5, 3, 'Try submitting before deadline and provide updates in time.', '2022-10-11 19:40:45'),
(19, 2, 17, 1, 3, 3, 3, 4, 4, 4, 3, 4, 3, 5, 4, 'Consistent negligence! Please talk to TL.', '2022-10-31 19:44:28'),
(20, 5, 18, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 4, 'Good work!', '2022-10-31 19:48:19'),
(21, 13, 20, 3, 5, 5, 5, 4, 4, 4, 3, 5, 4, 3, 5, 'Must try to delegate work among teammates.', '2022-11-11 19:51:41'),
(22, 12, 24, 3, 4, 5, 4, 3, 4, 4, 4, 4, 3, 5, 5, 'Must review work before submission. Keep up the good work!', '2022-10-31 19:58:44'),
(23, 10, 14, 2, 5, 4, 4, 4, 4, 4, 4, 3, 5, 4, 5, 'Great work!', '2022-11-12 00:40:37'),
(24, 8, 15, 2, 5, 4, 5, 5, 4, 5, 4, 5, 5, 5, 3, 'Good job!', '2022-11-12 00:44:41'),
(25, 6, 13, 2, 3, 4, 3, 3, 3, 4, 3, 4, 4, 5, 4, 'Pay more attention to details!', '2022-11-12 00:46:58'),
(26, 6, 21, 2, 5, 5, 5, 5, 4, 4, 4, 5, 5, 4, 4, 'Significant improv.... Good job!', '2022-11-12 00:47:52'),
(27, 15, 19, 2, 4, 5, 2, 3, 4, 3, 3, 4, 4, 4, 3, 'Need to focus more on low credit metrics', '2022-11-12 00:51:44'),
(28, 10, 26, 2, 5, 3, 4, 4, 5, 4, 3, 5, 4, 3, 4, 'Lack of communication with teammates.', '2022-11-01 00:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE IF NOT EXISTS `system_settings` (
`id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Appraisal Management System', 'info@sample.comm', '+91 80800 00000', 'Kolkata', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE IF NOT EXISTS `task_list` (
`id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `employee_id` int(30) NOT NULL,
  `due_date` date NOT NULL,
  `completed` date NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=pending, 1=on-progress, 2=completed',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `task`, `description`, `employee_id`, `due_date`, `completed`, `status`, `date_created`) VALUES
(13, 'Market Research', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 6, '2022-10-01', '0000-00-00', 2, '2022-09-25 01:30:45'),
(14, 'Documents Review', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 10, '2022-10-19', '0000-00-00', 2, '2022-09-25 01:36:36'),
(15, 'Feasibility Study', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 8, '2022-10-23', '0000-00-00', 2, '2022-09-25 01:37:35'),
(16, 'Create proposals for upcoming project', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;b&gt;Note:&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;', 2, '2022-10-10', '0000-00-00', 2, '2022-09-25 01:36:03'),
(17, 'Client meetup & finalization', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 2, '2022-10-27', '0000-00-00', 1, '2022-09-25 01:40:18'),
(18, 'Risk Analysis ', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 5, '2022-10-30', '0000-00-00', 2, '2022-10-31 01:46:56'),
(19, 'Create Budget', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 15, '2022-11-05', '0000-00-00', 2, '2022-10-31 01:48:33'),
(20, 'Present project constraints', '														&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;																									', 13, '2022-11-10', '0000-00-00', 2, '2022-10-31 01:49:34'),
(21, 'Project Charter approval', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 6, '2022-11-07', '0000-00-00', 2, '2022-10-31 01:53:44'),
(22, 'Add client company and setup eoffice', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 2, '2022-11-02', '0000-00-00', 2, '2022-10-31 01:55:23'),
(23, 'Hire potential vendors', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 3, '2022-10-31', '0000-00-00', 1, '2022-10-31 01:56:00'),
(24, 'Manage sales record', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 12, '2022-11-03', '0000-00-00', 2, '2022-10-31 01:56:53'),
(25, 'Manage inventory', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 5, '2022-11-08', '0000-00-00', 1, '2022-10-31 01:58:26'),
(26, 'Get C-Suite approval', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 10, '2022-11-01', '0000-00-00', 1, '2022-10-31 01:59:51'),
(27, 'Propose sample product for client', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 4, '2022-11-09', '0000-00-00', 0, '2022-10-31 02:01:02'),
(28, 'Recap Financial Implications', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 12, '2022-11-07', '0000-00-00', 1, '2022-10-31 02:02:13'),
(29, 'Submittals', '							&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;																			', 14, '2022-11-18', '0000-00-00', 2, '2022-10-31 02:03:14'),
(31, 'Weekly Inspection reports', '&lt;p&gt;This is the description for your task.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Note:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Point #1&lt;/li&gt;&lt;li&gt;Point #2&lt;/li&gt;&lt;li&gt;Point #3&lt;/li&gt;&lt;/ol&gt;													', 3, '2022-11-14', '0000-00-00', 0, '2022-11-13 11:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `task_progress`
--

CREATE TABLE IF NOT EXISTS `task_progress` (
`id` int(11) NOT NULL,
  `task_id` int(30) NOT NULL,
  `progress` text NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=no,1=Yes',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_progress`
--

INSERT INTO `task_progress` (`id`, `task_id`, `progress`, `is_complete`, `date_created`) VALUES
(1, 1, '&lt;p&gt;Sample Progress&lt;/p&gt;', 0, '2022-10-17 12:52:05'),
(2, 1, '&lt;p&gt;Sample Progress&lt;/p&gt;', 0, '2022-10-17 12:58:45'),
(3, 1, '&lt;p&gt;Sample 2&lt;/p&gt;', 0, '2022-10-17 12:59:58'),
(4, 1, 'asdasd', 0, '2022-10-17 13:01:13'),
(5, 1, '&lt;p&gt;complete&lt;/p&gt;', 1, '2022-10-17 13:03:24'),
(6, 3, '&lt;p&gt;Done&lt;/p&gt;', 1, '2022-10-17 13:04:26'),
(7, 2, '&lt;p&gt;Almost done&lt;/p&gt;', 0, '2022-10-17 20:59:35'),
(8, 2, '&lt;p&gt;Done&lt;/p&gt;', 1, '2022-10-19 11:45:34'),
(9, 4, '&lt;p&gt;Stage 1 over&lt;/p&gt;', 0, '2022-10-20 20:20:14'),
(10, 6, '&lt;p&gt;On it.&lt;/p&gt;', 0, '2022-10-20 21:20:15'),
(11, 6, '&lt;p&gt;Done&lt;/p&gt;', 1, '2022-10-20 21:26:42'),
(12, 5, '&lt;p&gt;I&amp;#x2019;m on it.&lt;/p&gt;', 0, '2022-10-20 21:35:45'),
(13, 9, '&lt;p&gt;I&amp;#x2019;m right on it!&lt;/p&gt;', 0, '2022-10-20 21:36:23'),
(14, 4, '&lt;p&gt;Doing&amp;nbsp;&lt;/p&gt;', 0, '2022-10-22 20:59:48'),
(15, 4, '&lt;p&gt;Done.&lt;/p&gt;', 1, '2022-10-22 21:00:01'),
(16, 11, '&lt;p&gt;Doing&lt;/p&gt;', 0, '2022-10-22 22:06:42'),
(17, 11, '&lt;p&gt;Done&lt;/p&gt;', 1, '2022-10-22 22:06:51'),
(18, 10, '&lt;p&gt;On progress&lt;/p&gt;', 0, '2022-10-27 22:15:14'),
(19, 10, '&lt;p&gt;doing&lt;/p&gt;', 0, '2022-10-27 22:18:39'),
(20, 8, '&lt;p&gt;Initiated... Need some more time&lt;/p&gt;', 0, '2022-10-29 02:25:07'),
(21, 10, '&lt;p&gt;Done.&lt;/p&gt;', 1, '2022-10-29 15:40:14'),
(22, 13, '&lt;p&gt;Phase 1 over.&lt;/p&gt;', 0, '2022-09-26 01:50:20'),
(23, 13, '&lt;p&gt;Phase 2 over.&lt;/p&gt;', 0, '2022-09-27 01:50:29'),
(24, 13, '&lt;p&gt;Phase 3 over.&lt;/p&gt;', 0, '2022-09-28 01:50:38'),
(25, 13, '&lt;p&gt;Phase 4 over.&lt;/p&gt;', 0, '2022-09-30 01:51:05'),
(26, 13, '&lt;p&gt;Done. Sent the report to analyst.&lt;/p&gt;', 1, '2022-10-02 01:51:38'),
(27, 21, '&lt;p&gt;Phase 1 over.&lt;/p&gt;', 0, '2022-10-20 02:05:05'),
(28, 21, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-22 02:05:15'),
(29, 21, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-28 02:05:24'),
(30, 21, '&lt;p&gt;Done.&lt;/p&gt;', 1, '2022-11-01 02:05:33'),
(31, 24, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-25 02:06:01'),
(32, 24, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-26 02:06:09'),
(33, 24, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-27 02:06:20'),
(34, 24, '&lt;p&gt;Phase 4 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-29 02:06:29'),
(35, 24, '&lt;p&gt;Phase 5 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-31 02:06:38'),
(36, 24, '&lt;p&gt;Done.&lt;/p&gt;', 1, '2022-11-02 02:06:46'),
(37, 28, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-31 02:09:43'),
(38, 28, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-01 02:10:03'),
(41, 16, 'Phase 1 over.', 0, '2022-10-01 02:21:55'),
(42, 16, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-02 02:22:03'),
(43, 16, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-08 02:22:15'),
(44, 16, '&lt;p&gt;Phase 4 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-12 02:22:25'),
(45, 16, '&lt;p&gt;Phase 5 over. Done.&lt;br&gt;&lt;/p&gt;', 1, '2022-10-13 02:22:38'),
(46, 17, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-22 02:22:48'),
(47, 17, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-27 02:23:00'),
(48, 22, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-25 02:23:09'),
(49, 22, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-26 02:23:21'),
(50, 22, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-30 02:23:30'),
(51, 22, '&lt;p&gt;Phase 4 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-01 02:23:39'),
(52, 22, '&lt;p&gt;Phase 5 over. Done.&lt;br&gt;&lt;/p&gt;', 1, '2022-11-01 02:23:57'),
(53, 18, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-19 02:29:31'),
(54, 18, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-21 02:29:42'),
(55, 18, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-27 02:29:51'),
(56, 18, '&lt;p&gt;Phase 4 over. Done.&lt;br&gt;&lt;/p&gt;', 1, '2022-11-01 02:30:03'),
(57, 25, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-30 02:30:13'),
(58, 25, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-01 02:30:22'),
(59, 15, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-13 02:32:06'),
(60, 15, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-16 02:32:17'),
(61, 15, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-20 02:32:23'),
(62, 15, '&lt;p&gt;Phase 4 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-22 02:32:29'),
(63, 15, '&lt;p&gt;Phase 5 over. Done.&lt;br&gt;&lt;/p&gt;', 1, '2022-10-24 02:32:40'),
(64, 29, '&lt;p&gt;Phase 1 over.&lt;/p&gt;', 0, '2022-10-31 02:34:50'),
(65, 29, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-03 02:34:56'),
(66, 29, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-06 02:35:02'),
(67, 29, '&lt;p&gt;Phase 4 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-10 02:35:12'),
(68, 20, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-31 02:37:44'),
(69, 20, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-01 02:37:53'),
(70, 20, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-03 02:37:59'),
(71, 20, '&lt;p&gt;Phase 4 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-04 02:38:06'),
(72, 20, '&lt;p&gt;Phase 5 over. Done.&lt;br&gt;&lt;/p&gt;', 1, '2022-11-05 02:38:15'),
(73, 19, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-30 02:39:46'),
(74, 19, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-31 02:39:55'),
(75, 19, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-11-01 02:40:01'),
(76, 19, '&lt;p&gt;Phase 4 over. Done.&lt;br&gt;&lt;/p&gt;', 1, '2022-11-03 02:40:12'),
(77, 14, 'Phase 1 over.', 0, '2022-10-11 02:45:53'),
(78, 14, 'Phase 2 over.', 0, '2022-10-13 02:46:05'),
(79, 14, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-17 02:46:13'),
(80, 14, '&lt;p&gt;Done.&lt;/p&gt;', 1, '2022-10-21 02:46:22'),
(81, 26, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-28 02:46:31'),
(82, 26, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-31 02:46:37'),
(83, 23, '&lt;p&gt;Phase 1 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-27 02:55:54'),
(84, 23, '&lt;p&gt;Phase 2 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-29 02:56:02'),
(85, 23, '&lt;p&gt;Phase 3 over.&lt;br&gt;&lt;/p&gt;', 0, '2022-10-31 02:56:10'),
(86, 29, '&lt;p&gt;Over&lt;/p&gt;', 1, '2022-11-13 11:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `designation_id` int(30) NOT NULL,
  `avatar` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `designation_id`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@mail.com', '0192023a7bbd73250516f069df18b500', 0, '1607135820_avatar.jpg', '2022-10-04 09:11:46'),
(6, 'Sneha', 'Tiwari', 'stiwari@mail.com', '90766fec6d90565bae9a01abd786939c', 12, '1666460460_about2.jpg', '2022-10-22 23:11:53'),
(7, 'Shubham', 'Mishra', 'smishra@mail.com', '597c89b998684a3b7a89aba07131ea65', 13, '1666462560_crop.jpeg', '2022-10-22 23:46:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_tbl`
--
ALTER TABLE `attendance_tbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_list`
--
ALTER TABLE `designation_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluator_list`
--
ALTER TABLE `evaluator_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi`
--
ALTER TABLE `kpi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_progress`
--
ALTER TABLE `task_progress`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_tbl`
--
ALTER TABLE `attendance_tbl`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=669;
--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `designation_list`
--
ALTER TABLE `designation_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `employee_list`
--
ALTER TABLE `employee_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `evaluator_list`
--
ALTER TABLE `evaluator_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kpi`
--
ALTER TABLE `kpi`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `task_progress`
--
ALTER TABLE `task_progress`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
