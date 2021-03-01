

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `fifa`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchAge` (IN `page` INT(11))  SELECT
    player_name,
    age,
    overall_rating,
    nationality
FROM
    personal_details
WHERE
    personal_details.age = page$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchName` (IN `page` VARCHAR(30))  SELECT
    *
FROM
    personal_details
WHERE
    player_name = page$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchNationality` (IN `page` VARCHAR(30))  SELECT
    *
FROM
    personal_details
WHERE
    nationality = page$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchOverallRating` (IN `page` INT(11))  SELECT
    *
FROM
    personal_details
WHERE
    personal_details.overall_rating = page$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Searchplayerid` (IN `page` INT(11))  SELECT
    *
FROM
    personal_details
WHERE
    player_id = page$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchPosition` (IN `page` VARCHAR(11))  SELECT
    pd.player_name,
    pd.overall_rating,
    od.preferred_position,
    p.gk,
    p.df,
    p.cm,
    p.fr
FROM
    personal_details pd,
    other_details od,
    POSITION p
WHERE
    od.preferred_position = PAGE AND p.player_id = od.player_id AND p.player_id = pd.player_id
GROUP BY
    pd.player_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchTeam` (IN `page` VARCHAR(30))  SELECT
    pd.player_name,
    pd.overall_rating,
    pd.age,
    pd.nationality,
    od.club
FROM
    personal_details pd,
    other_details od
WHERE
    od.club = PAGE AND pd.player_id = od.player_id
ORDER BY
    pd.player_id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `delete_logs`
--

CREATE TABLE `delete_logs` (
  `id` int(10) NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delete_logs`
--

INSERT INTO `delete_logs` (`id`, `action`, `time`) VALUES
(8, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-04 04:48:45'),
(9, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-03 04:48:45'),
(10, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-07 04:48:45'),
(11, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-08 04:48:45'),
(12, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-08 14:04:29'),
(13, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-08 14:04:29'),
(14, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-09 02:06:37'),
(15, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-09 02:14:33'),
(16, 'Deleted Successfully in PLAYER CLUB\'S Table', '2020-12-09 02:43:36'),
(17, 'Deleted Successfully in PLAYER CLUB\'S Table', '2020-12-09 02:50:21'),
(18, 'Deleted Successfully in PLAYER\'S POSITION Table', '2020-12-09 02:56:29'),
(19, 'Deleted Successfully in PLAYER\'S SALARY Table', '2020-12-09 04:33:03'),
(20, 'Deleted Successfully in PLAYER\'S POSITION Table', '2020-12-09 04:33:42'),
(21, 'Deleted Successfully in PLAYER STATS Table', '2020-12-09 04:48:02'),
(22, 'Deleted Successfully in PLAYER STATS Table', '2020-12-09 05:23:38'),
(23, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-09 05:33:31'),
(24, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-09 09:47:18'),
(25, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-09 11:00:06'),
(26, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-04 19:11:45'),
(27, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-06 11:09:58'),
(28, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-06 11:09:58'),
(29, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-06 11:09:58'),
(30, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-06 11:09:58'),
(31, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-06 17:18:18'),
(32, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-06 17:32:10'),
(33, 'Deleted Successfully in PERSONAL DETAILS Table', '2020-12-10 16:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `insert_logs`
--

CREATE TABLE `insert_logs` (
  `id` int(10) NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insert_logs`
--

INSERT INTO `insert_logs` (`id`, `action`, `time`) VALUES
(6, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-02 07:54:27'),
(7, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-03 04:34:37'),
(8, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-07 15:00:34'),
(9, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-08 11:41:38'),
(10, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-08 13:31:40'),
(11, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-08 13:32:55'),
(12, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-09 02:01:53'),
(13, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-09 02:07:05'),
(14, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-09 02:39:09'),
(15, 'Inserted Successfully in PLAYER CLUB\'S Table', '2020-12-09 02:39:31'),
(22, 'Inserted Successfully in PLAYER STATS Table', '2020-12-09 02:42:05'),
(23, 'Inserted Successfully in PLAYER\'S POSITION Table', '2020-12-09 02:42:18'),
(24, 'Inserted Successfully in PLAYER SALARY Table', '2020-12-09 02:42:29'),
(25, 'Inserted Successfully in PLAYER CLUB\'S Table', '2020-12-09 02:44:08'),
(26, 'Inserted Successfully in PLAYER\'S POSITION Table', '2020-12-09 02:56:45'),
(27, 'Inserted Successfully in PLAYER STATS Table', '2020-12-09 04:48:30'),
(28, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-09 09:45:06'),
(29, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-09 09:51:05'),
(30, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-04 19:13:02'),
(31, 'Inserted Successfully in PLAYER CLUB\'S Table', '2020-12-04 19:15:30'),
(32, 'Inserted Successfully in PLAYER SALARY Table', '2020-12-04 19:16:36'),
(33, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-05 13:48:06'),
(34, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-06 11:21:59'),
(35, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-06 17:19:32'),
(36, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-06 17:33:08'),
(37, 'Inserted Successfully in PERSONAL DETAILS Table', '2020-12-10 16:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `other_details`
--

CREATE TABLE `other_details` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `club` char(30) DEFAULT NULL,
  `preferred_position` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_details`
--

INSERT INTO `other_details` (`id`, `player_id`, `club`, `preferred_position`) VALUES
(2, 1001, 'FC Barcelona', 'RW'),
(3, 1002, 'Paris Saint-Germain', 'LW'),
(4, 1003, 'FC Barcelona', 'ST'),
(5, 1004, 'FC Bayern Munich', 'GK'),
(23, 1005, 'Real madrid', 'GK'),
(8, 1007, 'Chelsea', 'LW'),
(9, 1008, 'Real Madrid CF', 'CM'),
(10, 1009, 'Juventus', 'ST'),
(11, 1010, 'Real Madrid CF', 'CB'),
(13, 1012, 'Chelsea', 'GK'),
(14, 1013, 'Arsenal', 'LW'),
(15, 1014, 'Real Madrid CF', 'CM'),
(16, 1015, 'Real Madrid CF', 'RW'),
(17, 1016, 'Manchester City', 'ST'),
(18, 1017, 'Juventus', 'CB'),
(19, 1018, 'Juventus', 'GK');

--
-- Triggers `other_details`
--
DELIMITER $$
CREATE TRIGGER `delete_in_otherdetails` AFTER DELETE ON `other_details` FOR EACH ROW INSERT INTO delete_logs(ACTION, TIME)
VALUES(
    "Deleted Successfully in PLAYER CLUB'S Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_in_otherdetails` AFTER INSERT ON `other_details` FOR EACH ROW INSERT INTO insert_logs(ACTION, TIME)
VALUES(
    "Inserted Successfully in PLAYER CLUB'S Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_in_otherdetails` AFTER UPDATE ON `other_details` FOR EACH ROW INSERT INTO update_logs
VALUES(
    NULL,
    "Updated Successfully in CLUB's Table",
    NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `id` int(11) NOT NULL,
  `player_id` int(7) NOT NULL,
  `player_name` char(30) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `overall_rating` int(2) DEFAULT NULL,
  `nationality` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`id`, `player_id`, `player_name`, `age`, `overall_rating`, `nationality`) VALUES
(2, 1001, 'SHIVANSH M', 30, 94, 'INDIA'),
(3, 1002, 'LOKESH S', 25, 92, 'INDIA'),
(4, 1003, 'AKSHAY T', 30, 92, 'INDIA'),
(5, 1004, 'ANIKET J', 31, 92, 'Germany'),
(31, 1005, 'JITESH G', 32, 21, 'INDIAN'),
(8, 1007, 'AKSHAY M', 26, 90, 'Belgium'),
(9, 1008, 'NISHANT J', 27, 90, 'Germany'),
(10, 1009, 'GIRISH P', 32, 90, 'Argentina'),
(11, 1010, 'MAYURESH P', 32, 90, 'Spain'),
(13, 1012, 'OMKAR A', 25, 89, 'Belgium'),
(14, 1013, 'ABHISHEKH T', 28, 89, 'Chile'),
(15, 1014, 'SAHIL M', 31, 89, 'Croatia'),
(16, 1015, 'NIKHIL S', 27, 89, 'Wales'),
(17, 1016, 'MAYUR P', 32, 89, 'Argentina'),
(18, 1017, 'VINIT P', 32, 89, 'Italy'),
(19, 1018, 'PRANIT P', 32, 89, 'Italy'),
(33, 1234, 'CR7', 34, 90, 'portugal'),
(35, 12345, 'sanmesh y', 21, 100, 'indianp');

--
-- Triggers `personal_details`
--
DELIMITER $$
CREATE TRIGGER `delete_trigger` AFTER DELETE ON `personal_details` FOR EACH ROW INSERT INTO delete_logs(ACTION, TIME)
VALUES(
    "Deleted Successfully in PERSONAL DETAILS Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_trigger` AFTER INSERT ON `personal_details` FOR EACH ROW INSERT INTO insert_logs
VALUES(
    NULL,
    "Inserted Successfully in PERSONAL DETAILS Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_trigger` AFTER UPDATE ON `personal_details` FOR EACH ROW INSERT INTO update_logs(ACTION, TIME)
VALUES(
    "Updated Successfully in PERSONAL DETAILS Table",
    NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `player_stats`
--

CREATE TABLE `player_stats` (
  `id` int(3) NOT NULL,
  `player_id` int(7) NOT NULL,
  `acceleration` int(2) DEFAULT NULL,
  `balance` int(2) DEFAULT NULL,
  `ball_control` int(2) DEFAULT NULL,
  `crossing` int(2) DEFAULT NULL,
  `curve` int(2) DEFAULT NULL,
  `dribbling` int(2) DEFAULT NULL,
  `finishing` int(2) DEFAULT NULL,
  `gk_kicking` int(2) DEFAULT NULL,
  `gk_positioning` int(2) DEFAULT NULL,
  `penalties` int(2) DEFAULT NULL,
  `short_pass` int(2) DEFAULT NULL,
  `stamina` int(2) DEFAULT NULL,
  `strength` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_stats`
--

INSERT INTO `player_stats` (`id`, `player_id`, `acceleration`, `balance`, `ball_control`, `crossing`, `curve`, `dribbling`, `finishing`, `gk_kicking`, `gk_positioning`, `penalties`, `short_pass`, `stamina`, `strength`) VALUES
(2, 1001, 92, 95, 95, 77, 89, 97, 95, 15, 14, 74, 88, 73, 59),
(3, 1002, 94, 82, 95, 75, 81, 96, 89, 15, 15, 81, 81, 78, 53),
(4, 1003, 88, 60, 91, 77, 86, 86, 94, 31, 33, 85, 83, 89, 80),
(5, 1004, 58, 35, 48, 15, 14, 30, 13, 95, 91, 47, 55, 44, 83),
(8, 1007, 93, 91, 92, 80, 82, 93, 83, 6, 8, 86, 86, 79, 65),
(9, 1008, 60, 69, 89, 85, 85, 79, 76, 13, 7, 73, 90, 77, 74),
(10, 1009, 78, 69, 85, 68, 74, 84, 91, 7, 5, 70, 75, 72, 85),
(11, 1010, 75, 60, 84, 66, 73, 61, 60, 9, 7, 68, 78, 84, 81),
(13, 1012, 46, 45, 23, 14, 19, 13, 14, 69, 86, 27, 32, 38, 70),
(14, 1013, 88, 87, 87, 80, 78, 90, 85, 15, 12, 77, 81, 85, 72),
(15, 1014, 75, 94, 92, 78, 79, 86, 71, 7, 14, 80, 92, 52, 88),
(16, 1015, 93, 65, 87, 87, 86, 89, 87, 11, 5, 76, 86, 76, 80),
(17, 1016, 90, 91, 89, 70, 82, 89, 90, 6, 11, 83, 79, 74, 74),
(18, 1017, 68, 64, 57, 58, 60, 58, 33, 2, 4, 50, 59, 68, 91),
(19, 1018, 49, 49, 28, 13, 20, 25, 15, 74, 90, 22, 37, 39, 69);

--
-- Triggers `player_stats`
--
DELIMITER $$
CREATE TRIGGER `delete_in_playerstats` AFTER DELETE ON `player_stats` FOR EACH ROW INSERT INTO delete_logs(ACTION, TIME)
VALUES(
    "Deleted Successfully in PLAYER STATS Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_trigger_in_playerstats` AFTER INSERT ON `player_stats` FOR EACH ROW INSERT INTO insert_logs(ACTION, TIME)
VALUES(
    "Inserted Successfully in PLAYER STATS Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_in_player_stats` AFTER UPDATE ON `player_stats` FOR EACH ROW INSERT INTO update_logs
VALUES(
    NULL,
    "Updated Successfully in PLAYER STATS Table",
    NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `gk` int(11) DEFAULT NULL,
  `df` int(11) DEFAULT NULL,
  `cm` int(11) DEFAULT NULL,
  `fr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `player_id`, `gk`, `df`, `cm`, `fr`) VALUES
(2, 1001, 6, 45, 82, 94),
(3, 1002, 10, 46, 79, 93),
(4, 1003, 12, 50, 80, 92),
(5, 1004, 92, 10, 8, 4),
(8, 1007, 12, 47, 81, 90),
(9, 1008, 16, 72, 90, 84),
(10, 1009, 12, 46, 71, 89),
(11, 1010, 23, 89, 74, 70),
(13, 1012, 89, 20, 15, 10),
(14, 1013, 20, 56, 79, 89),
(15, 1014, 30, 72, 89, 83),
(16, 1015, 24, 67, 81, 89),
(17, 1016, 20, 44, 75, 89),
(18, 1017, 30, 89, 60, 55),
(19, 1018, 89, 30, 15, 10);

--
-- Triggers `position`
--
DELIMITER $$
CREATE TRIGGER `delete_in_position` AFTER DELETE ON `position` FOR EACH ROW INSERT INTO delete_logs(ACTION, TIME)
VALUES(
    "Deleted Successfully in PLAYER'S POSITION Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_in_playerposition` AFTER INSERT ON `position` FOR EACH ROW INSERT INTO insert_logs(ACTION, TIME)
VALUES(
    "Inserted Successfully in PLAYER'S POSITION Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_in_position` AFTER UPDATE ON `position` FOR EACH ROW INSERT INTO update_logs
VALUES(
    NULL,
    "Updated Successfully in PLAYER'S POSITION Table",
    NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `wage` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `player_id`, `wage`, `value`) VALUES
(2, 1001, 565, 10500000),
(3, 1002, 280, 12300000),
(4, 1003, 510, 9700000),
(5, 1004, 230, 6100000),
(22, 1005, 520, 2500000),
(8, 1007, 290, 9050000),
(9, 1008, 340, 7900000),
(10, 1009, 275, 7750000),
(11, 1010, 310, 5200000),
(13, 1012, 190, 5900000),
(14, 1013, 265, 6750000),
(15, 1014, 340, 5700000),
(16, 1015, 370, 6950000),
(17, 1016, 325, 6650000),
(18, 1017, 225, 38000000),
(19, 1018, 110, 450000);

--
-- Triggers `salary`
--
DELIMITER $$
CREATE TRIGGER `delete_in_salary` AFTER DELETE ON `salary` FOR EACH ROW INSERT INTO delete_logs(ACTION, TIME)
VALUES(
    "Deleted Successfully in PLAYER'S SALARY Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_in_salary` AFTER INSERT ON `salary` FOR EACH ROW INSERT INTO insert_logs(ACTION, TIME)
VALUES(
    "Inserted Successfully in PLAYER SALARY Table",
    NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_in_salary` AFTER UPDATE ON `salary` FOR EACH ROW INSERT INTO update_logs
VALUES(
    NULL,
    "Updated Successfully in PLAYER SALARY Table",
    NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `update_logs`
--

CREATE TABLE `update_logs` (
  `id` int(10) NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `update_logs`
--

INSERT INTO `update_logs` (`id`, `action`, `time`) VALUES
(1, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-07 15:18:39'),
(2, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-07 15:20:42'),
(3, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-08 04:00:19'),
(4, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-08 14:04:45'),
(5, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 02:11:48'),
(6, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 02:12:03'),
(7, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 02:13:35'),
(8, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 02:14:08'),
(9, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 02:14:23'),
(10, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 02:17:32'),
(11, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 02:17:50'),
(12, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 02:44:47'),
(13, 'Updated Successfully in CLUB\'s Table', '2020-12-09 02:49:48'),
(14, 'Updated Successfully in CLUB\'s Table', '2020-12-09 02:50:00'),
(15, 'Updated Successfully in CLUB\'s Table', '2020-12-09 02:50:12'),
(16, 'Updated Successfully in PLAYER SALARY Table', '2020-12-09 04:31:00'),
(17, 'Updated Successfully in PLAYER SALARY Table', '2020-12-09 04:31:12'),
(18, 'Updated Successfully in PLAYER SALARY Table', '2020-12-09 04:31:18'),
(19, 'Updated Successfully in PLAYER SALARY Table', '2020-12-09 04:32:58'),
(20, 'Updated Successfully in PLAYER\'S POSITION Table', '2020-12-09 04:33:21'),
(21, 'Updated Successfully in PLAYER STATS Table', '2020-12-09 04:46:27'),
(22, 'Updated Successfully in PLAYER STATS Table', '2020-12-09 04:55:04'),
(23, 'Updated Successfully in PLAYER STATS Table', '2020-12-09 05:13:47'),
(24, 'Updated Successfully in PLAYER STATS Table', '2020-12-09 05:14:30'),
(25, 'Updated Successfully in PLAYER STATS Table', '2020-12-09 05:16:45'),
(26, 'Updated Successfully in PLAYER STATS Table', '2020-12-09 05:16:52'),
(27, 'Updated Successfully in PLAYER STATS Table', '2020-12-09 05:19:37'),
(28, 'Updated Successfully in PLAYER STATS Table', '2020-12-09 05:22:48'),
(29, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 05:33:29'),
(30, 'Updated Successfully in PLAYER\'S POSITION Table', '2020-12-09 08:01:53'),
(31, 'Updated Successfully in PLAYER\'S POSITION Table', '2020-12-09 08:01:59'),
(32, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-09 09:46:34'),
(33, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-04 19:14:16'),
(34, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-06 11:23:08'),
(35, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-06 11:23:44'),
(36, 'Updated Successfully in PERSONAL DETAILS Table', '2020-12-06 11:23:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delete_logs`
--
ALTER TABLE `delete_logs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `insert_logs`
--
ALTER TABLE `insert_logs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `other_details`
--
ALTER TABLE `other_details`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`player_id`,`player_name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `update_logs`
--
ALTER TABLE `update_logs`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delete_logs`
--
ALTER TABLE `delete_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `insert_logs`
--
ALTER TABLE `insert_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `other_details`
--
ALTER TABLE `other_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_details`
--
ALTER TABLE `personal_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `player_stats`
--
ALTER TABLE `player_stats`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `update_logs`
--
ALTER TABLE `update_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `other_details`
--
ALTER TABLE `other_details`
  ADD CONSTRAINT `other_details_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `personal_details` (`player_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD CONSTRAINT `player_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `personal_details` (`player_id`) ON DELETE CASCADE;

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `personal_details` (`player_id`) ON DELETE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `personal_details` (`player_id`) ON DELETE CASCADE;
COMMIT;

