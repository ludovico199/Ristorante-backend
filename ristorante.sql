-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 29, 2025 alle 18:51
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ristorante`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `comande`
--

CREATE TABLE `comande` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descrittivo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `comande`
--

INSERT INTO `comande` (`id`, `descrittivo`, `created_at`, `updated_at`) VALUES
(1, 'Turno 1', NULL, NULL),
(2, 'Turno 2', NULL, NULL),
(3, 'Turno 3', NULL, NULL),
(4, 'Turno 4', NULL, NULL),
(5, 'Turno 5', NULL, NULL),
(6, 'No Comanda', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipologia_id` bigint(20) UNSIGNED NOT NULL,
  `prezzo` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cucina` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `menu`
--

INSERT INTO `menu` (`id`, `nome`, `tipologia_id`, `prezzo`, `created_at`, `updated_at`, `cucina`) VALUES
(1, 'carpaccio', 1, 10.02, '2025-04-10 15:44:22', '2025-04-23 14:35:51', 0),
(2, 'Caprese', 4, 10.00, '2025-04-10 15:44:22', '2025-04-23 14:24:24', 0),
(3, 'Prosciutto e Melone', 3, 1222.00, '2025-04-10 15:44:22', '2025-04-23 13:59:00', 0),
(4, 'Lasagna', 1, 10.00, '2025-04-10 15:44:22', '2025-04-23 14:05:03', 0),
(5, 'Risotto ai Funghi', 5, 1220.00, '2025-04-10 15:44:22', '2025-04-23 14:35:55', 0),
(6, 'Tagliatelle al Ragù', 1, 2210.00, '2025-04-10 15:44:22', '2025-04-23 14:24:28', 0),
(7, 'Bistecca alla Fiorentina', 6, 10.00, '2025-04-10 15:44:22', '2025-04-23 14:05:07', 0),
(8, 'Pollo al Curry', 5, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(11, 'Panna Cotta', 1, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(12, 'Cheesecake', 4, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(13, 'Acqua Naturale', 4, 103.00, '2025-04-10 15:44:22', '2025-04-23 14:06:37', 0),
(14, 'Acqua Frizzante', 2, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(15, 'Coca-Cola', 1, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(16, 'Sprite', 4, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(17, 'Fanta', 1, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(18, 'Vino Rosso', 3, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(19, 'Vino Bianco', 2, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(20, 'Espresso', 6, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(21, 'Cappuccino', 1, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(22, 'Latte Macchiato', 4, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(23, 'Mojito', 2, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(24, 'Negroni', 6, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(25, 'Spritz', 5, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(26, 'Tagliere di Salumi', 3, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(27, 'Insalata di Mare', 2, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(28, 'ciaoooo', 4, 10.00, '2025-04-10 15:44:22', '2025-04-23 13:51:01', 0),
(29, 'Carpaccio di Manzo', 1, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(30, 'Gnocchi al Pesto', 7, 10.00, '2025-04-10 15:44:22', '2025-04-10 15:44:22', 0),
(31, 'Bruschette', 6, 5.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(32, 'Caprese', 5, 7.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(33, 'Prosciutto e Melone', 5, 8.50, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(36, 'Tagliatelle al Ragù', 1, 9.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(37, 'Bistecca alla Fiorentina', 3, 15.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(38, 'Pollo al Curry', 1, 12.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(39, 'Pesce Spada alla Griglia', 1, 13.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(40, 'Tiramisù', 7, 5.50, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(41, 'Panna Cotta', 3, 4.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(42, 'Cheesecake', 1, 6.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(43, 'Acqua Naturale', 2, 2.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(44, 'Acqua Frizzante', 5, 2.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(45, 'Coca-Cola', 6, 2.50, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(46, 'Sprite', 2, 2.50, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(47, 'Fanta', 2, 2.50, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(48, 'Vino Rosso', 6, 15.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(49, 'Nuovo nome', 3, 15.00, '2025-04-10 15:45:28', '2025-04-13 12:41:32', 0),
(50, 'Espresso', 7, 1.50, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(51, 'Cappuccino', 1, 2.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(52, 'Latte Macchiato', 2, 3.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(53, 'Mojito', 6, 7.50, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(54, 'Negroni', 5, 8.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(55, 'Spritz', 1, 6.50, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(56, 'Tagliere di Salumi', 4, 12.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(57, 'Insalata di Mare', 3, 14.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(58, 'Filetto al Pepe Verde', 1, 18.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(59, 'Carpaccio di Manzo', 2, 10.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0),
(60, 'Gnocchi al Pesto', 2, 9.00, '2025-04-10 15:45:28', '2025-04-10 15:45:28', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_25_224639_create_personal_access_tokens_table', 1),
(5, '2025_02_25_224742_create_tavoli_table', 2),
(6, '2025_02_25_224742_create_stato_ordini_table', 3),
(7, '2025_02_25_224742_create_ordini_table', 4),
(8, '2025_02_25_224743_create_tipologie_table', 5),
(9, '2025_02_25_224743_create_menu_table', 6),
(10, '2025_02_25_224743_create_comande_table', 7),
(11, '2025_02_25_224742_create_ordine_menu_table', 8),
(12, '2025_02_26_170622_update_menu_table', 8),
(13, '2025_03_13_170631_add_prezzo_to_menu_table', 8),
(14, '2025_04_01_182036_add_nr_coperti_to_ordini_table', 8),
(15, '2025_04_01_182100_remove_numero_coperti_from_tavoli_table', 8),
(16, '2025_04_03_182356_add_coperti_column_to_tavoli_table', 8),
(17, '2025_04_03_194447_rename_coperti_to_numero_coperti_in_tavoli', 8),
(18, '2025_04_03_201015_add_note_to_ordini_menus_table', 8),
(19, '2025_04_04_162220_change_nr_ordine_column_type_in_ordini_table', 8),
(20, '2025_04_28_181623_add_cucina_to_menu_table', 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine_menu`
--

CREATE TABLE `ordine_menu` (
  `ordine_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `quantita` int(11) NOT NULL,
  `comanda_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `ordine_menu`
--

INSERT INTO `ordine_menu` (`ordine_id`, `menu_id`, `quantita`, `comanda_id`, `created_at`, `updated_at`, `note`) VALUES
(37, 1, 1, 3, '2025-04-18 16:47:13', '2025-04-18 16:47:13', NULL),
(37, 4, 1, 3, '2025-04-18 16:47:13', '2025-04-18 16:47:13', NULL),
(37, 7, 1, 6, '2025-04-18 16:47:13', '2025-04-18 16:47:13', NULL),
(38, 4, 1, 6, '2025-04-18 16:47:19', '2025-04-18 16:47:19', NULL),
(39, 1, 1, 6, '2025-04-18 17:39:43', '2025-04-18 17:39:43', NULL),
(40, 1, 1, 6, '2025-04-18 17:39:46', '2025-04-18 17:39:46', NULL),
(41, 1, 1, 6, '2025-04-18 17:39:51', '2025-04-18 17:39:51', NULL),
(42, 1, 1, 6, '2025-04-18 17:39:59', '2025-04-18 17:39:59', NULL),
(43, 1, 1, 6, '2025-04-18 17:40:02', '2025-04-18 17:40:02', NULL),
(44, 1, 1, 6, '2025-04-18 17:40:04', '2025-04-18 17:40:04', NULL),
(45, 1, 1, 6, '2025-04-18 17:40:04', '2025-04-18 17:40:04', NULL),
(46, 1, 1, 6, '2025-04-18 17:40:05', '2025-04-18 17:40:05', NULL),
(47, 1, 1, 6, '2025-04-18 17:40:05', '2025-04-18 17:40:05', NULL),
(48, 1, 1, 6, '2025-04-18 17:40:06', '2025-04-18 17:40:06', NULL),
(49, 1, 1, 6, '2025-04-18 17:40:06', '2025-04-18 17:40:06', NULL),
(50, 1, 1, 6, '2025-04-18 17:40:06', '2025-04-18 17:40:06', NULL),
(51, 1, 1, 6, '2025-04-18 17:40:06', '2025-04-18 17:40:06', NULL),
(52, 3, 1, 6, '2025-04-18 17:40:22', '2025-04-18 17:40:22', NULL),
(53, 2, 1, 6, '2025-04-18 17:48:07', '2025-04-18 17:48:07', NULL),
(54, 1, 1, 3, '2025-04-18 17:48:18', '2025-04-18 17:48:18', NULL),
(54, 4, 1, 3, '2025-04-18 17:48:18', '2025-04-18 17:48:18', NULL),
(55, 2, 1, 6, '2025-04-18 17:53:32', '2025-04-18 17:53:32', NULL),
(56, 4, 1, 1, '2025-04-18 17:53:46', '2025-04-18 17:53:46', NULL),
(56, 5, 1, 1, '2025-04-18 17:53:46', '2025-04-18 17:53:46', NULL),
(57, 4, 1, 2, '2025-04-18 17:54:01', '2025-04-18 17:54:01', 'Hdhdjdhdhebe'),
(58, 1, 1, 6, '2025-04-19 08:57:37', '2025-04-19 08:57:37', NULL),
(58, 7, 1, 6, '2025-04-19 08:57:37', '2025-04-19 08:57:37', NULL),
(59, 3, 1, 6, '2025-04-19 08:58:23', '2025-04-19 08:58:23', 'Fufufjfjcj'),
(60, 6, 1, 6, '2025-04-19 09:00:00', '2025-04-19 09:00:00', 'asda'),
(61, 4, 1, 3, '2025-04-19 09:07:07', '2025-04-19 09:07:07', 'Jcviuvuv'),
(62, 4, 1, 2, '2025-04-19 09:16:00', '2025-04-19 09:16:00', 'Dbhssh'),
(63, 4, 1, 3, '2025-04-19 09:16:35', '2025-04-19 09:16:35', NULL),
(64, 2, 1, 6, '2025-04-19 09:16:39', '2025-04-19 09:16:39', NULL),
(65, 4, 1, 3, '2025-04-19 09:17:21', '2025-04-19 09:17:21', NULL),
(65, 6, 1, 5, '2025-04-19 09:17:21', '2025-04-19 09:17:21', NULL),
(65, 7, 1, 6, '2025-04-19 09:17:21', '2025-04-19 09:17:21', NULL),
(65, 8, 1, 1, '2025-04-19 09:17:21', '2025-04-19 09:17:21', NULL),
(66, 2, 2, 3, '2025-04-28 15:44:24', '2025-04-28 15:44:24', NULL),
(67, 4, 1, 3, '2025-04-28 16:08:44', '2025-04-28 16:08:44', NULL),
(68, 3, 1, 6, '2025-04-29 14:11:01', '2025-04-29 14:11:01', NULL),
(69, 3, 1, 3, '2025-04-29 14:11:29', '2025-04-29 14:11:29', NULL),
(69, 15, 1, 2, '2025-04-29 14:11:29', '2025-04-29 14:11:29', NULL),
(69, 18, 1, 5, '2025-04-29 14:11:29', '2025-04-29 14:11:29', NULL),
(70, 3, 1, 3, '2025-04-29 14:11:32', '2025-04-29 14:11:32', NULL),
(70, 15, 1, 2, '2025-04-29 14:11:32', '2025-04-29 14:11:32', NULL),
(70, 18, 1, 5, '2025-04-29 14:11:32', '2025-04-29 14:11:32', NULL),
(71, 3, 1, 3, '2025-04-29 14:11:35', '2025-04-29 14:11:35', NULL),
(71, 15, 1, 2, '2025-04-29 14:11:35', '2025-04-29 14:11:35', NULL),
(71, 18, 1, 5, '2025-04-29 14:11:35', '2025-04-29 14:11:35', NULL),
(74, 18, 1, 3, '2025-04-29 14:14:46', '2025-04-29 14:14:46', 'asdadas'),
(75, 15, 1, 6, '2025-04-29 14:15:28', '2025-04-29 14:15:28', NULL),
(75, 16, 1, 3, '2025-04-29 14:15:28', '2025-04-29 14:15:28', 'sadasd'),
(75, 22, 1, 6, '2025-04-29 14:15:28', '2025-04-29 14:15:28', NULL),
(75, 26, 1, 3, '2025-04-29 14:15:28', '2025-04-29 14:15:28', 'dadasd');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE `ordini` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nr_ordine` varchar(255) NOT NULL,
  `tavolo_id` bigint(20) UNSIGNED NOT NULL,
  `stato_ordine_id` bigint(20) UNSIGNED NOT NULL,
  `nr_coperti` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `ordini`
--

INSERT INTO `ordini` (`id`, `nr_ordine`, `tavolo_id`, `stato_ordine_id`, `nr_coperti`, `created_at`, `updated_at`) VALUES
(1, '67f804843c41a', 4, 2, 8, '2025-04-10 15:48:52', '2025-04-18 17:51:34'),
(2, '67f804e4961f5', 4, 2, 8, '2025-04-10 15:50:28', '2025-04-18 17:51:35'),
(3, '67f805d41c25c', 4, 2, 8, '2025-04-10 15:54:28', '2025-04-18 17:51:36'),
(4, '67f94d571c00b', 1, 2, 6, '2025-04-11 15:11:51', '2025-04-18 16:40:36'),
(5, '67f94d770fa6e', 1, 2, 6, '2025-04-11 15:12:23', '2025-04-18 16:40:37'),
(6, '67f94d92c12bf', 1, 2, 6, '2025-04-11 15:12:50', '2025-04-18 16:40:38'),
(7, '67f94dbee39a0', 1, 2, 6, '2025-04-11 15:13:34', '2025-04-18 16:40:38'),
(8, '67f955a811a27', 4, 2, 8, '2025-04-11 15:47:20', '2025-04-18 17:51:36'),
(9, '67f95fc66fe8b', 4, 2, 8, '2025-04-11 16:30:30', '2025-04-18 17:51:38'),
(10, '67f95fe27b74f', 4, 2, 8, '2025-04-11 16:30:58', '2025-04-18 17:51:43'),
(11, '67f9609734817', 1, 2, 6, '2025-04-11 16:33:59', '2025-04-18 16:40:39'),
(12, '67f960a4a4607', 1, 2, 6, '2025-04-11 16:34:12', '2025-04-18 16:40:30'),
(13, '67f9615a144af', 1, 2, 6, '2025-04-11 16:37:14', '2025-04-18 16:40:33'),
(14, '67f96573b34fd', 1, 2, 6, '2025-04-11 16:54:43', '2025-04-18 16:38:48'),
(15, '67f9662ae8d96', 1, 2, 6, '2025-04-11 16:57:46', '2025-04-18 16:40:39'),
(16, '67f9670608f65', 1, 2, 6, '2025-04-11 17:01:26', '2025-04-18 16:40:40'),
(17, '67f9685c6481b', 1, 2, 6, '2025-04-11 17:07:08', '2025-04-18 16:40:40'),
(18, '67f96ba8aad47', 2, 2, 2, '2025-04-11 17:21:12', '2025-04-18 17:53:08'),
(19, '67f96c372a0ba', 1, 2, 6, '2025-04-11 17:23:35', '2025-04-18 16:40:26'),
(20, '67f96c4fc5690', 3, 2, 9, '2025-04-11 17:23:59', '2025-04-18 17:53:12'),
(21, '67f96d5aeddcd', 2, 2, 2, '2025-04-11 17:28:26', '2025-04-18 17:53:18'),
(22, '67f96e24beddd', 2, 2, 2, '2025-04-11 17:31:48', '2025-04-18 17:53:03'),
(23, '67f96e4e3c07d', 2, 2, 2, '2025-04-11 17:32:30', '2025-04-18 17:52:53'),
(24, '67fb82b5b9f88', 5, 2, 6, '2025-04-13 07:24:05', '2025-04-18 17:53:00'),
(25, '67fb919c4beac', 5, 2, 6, '2025-04-13 08:27:40', '2025-04-18 17:52:55'),
(26, '67fb91f07654b', 2, 2, 2, '2025-04-13 08:29:04', '2025-04-18 17:53:04'),
(27, '67fb920a5cd0d', 2, 2, 2, '2025-04-13 08:29:30', '2025-04-18 17:53:01'),
(28, '67fb926243e89', 2, 2, 2, '2025-04-13 08:30:58', '2025-04-18 17:53:03'),
(29, '67fb92b399288', 2, 2, 2, '2025-04-13 08:32:19', '2025-04-18 17:52:56'),
(30, '67fb9331ef2db', 2, 2, 2, '2025-04-13 08:34:25', '2025-04-18 17:53:02'),
(31, '67fb9f71e6410', 2, 2, 2, '2025-04-13 09:26:41', '2025-04-18 17:53:00'),
(32, '67fb9f7900376', 2, 2, 2, '2025-04-13 09:26:49', '2025-04-18 17:52:59'),
(33, '67fd49289ae66', 5, 2, 6, '2025-04-14 15:43:04', '2025-04-18 17:52:58'),
(34, '67fd493b5aab6', 5, 2, 6, '2025-04-14 15:43:23', '2025-04-18 17:53:05'),
(35, '6801259a3de4b', 1, 2, 2, '2025-04-17 14:00:26', '2025-04-18 16:40:42'),
(36, '680125aebb6c9', 1, 2, 2, '2025-04-17 14:00:46', '2025-04-18 16:40:43'),
(37, '68029e31a7f0d', 1, 2, 2, '2025-04-18 16:47:13', '2025-04-18 16:47:52'),
(38, '68029e37715b3', 1, 2, 2, '2025-04-18 16:47:19', '2025-04-18 16:47:53'),
(39, '6802aa7fcec72', 2, 2, 2, '2025-04-18 17:39:43', '2025-04-18 17:53:07'),
(40, '6802aa82a52c7', 2, 2, 2, '2025-04-18 17:39:46', '2025-04-18 17:53:12'),
(41, '6802aa879aa90', 2, 2, 2, '2025-04-18 17:39:51', '2025-04-18 17:53:14'),
(42, '6802aa8fc052c', 2, 2, 2, '2025-04-18 17:39:59', '2025-04-18 17:53:09'),
(43, '6802aa92eca79', 2, 2, 2, '2025-04-18 17:40:02', '2025-04-18 17:53:11'),
(44, '6802aa9446892', 2, 2, 2, '2025-04-18 17:40:04', '2025-04-18 17:53:19'),
(45, '6802aa94c7a36', 2, 2, 2, '2025-04-18 17:40:04', '2025-04-18 17:53:17'),
(46, '6802aa9572267', 2, 2, 2, '2025-04-18 17:40:05', '2025-04-18 17:53:10'),
(47, '6802aa95daa5f', 2, 2, 2, '2025-04-18 17:40:05', '2025-04-18 17:53:20'),
(48, '6802aa962d3e4', 2, 2, 2, '2025-04-18 17:40:06', '2025-04-18 17:53:20'),
(49, '6802aa96745cd', 2, 2, 2, '2025-04-18 17:40:06', '2025-04-18 17:51:52'),
(50, '6802aa96becea', 2, 2, 2, '2025-04-18 17:40:06', '2025-04-18 17:53:15'),
(51, '6802aa96e96df', 2, 2, 2, '2025-04-18 17:40:06', '2025-04-18 17:53:16'),
(52, '6802aaa607073', 2, 2, 2, '2025-04-18 17:40:22', '2025-04-18 17:53:22'),
(53, '6802ac778fca9', 2, 2, 2, '2025-04-18 17:48:07', '2025-04-18 17:53:15'),
(54, '6802ac827d3b9', 2, 2, 2, '2025-04-18 17:48:18', '2025-04-18 17:53:21'),
(55, '6802adbc0a817', 2, 2, 2, '2025-04-18 17:53:32', '2025-04-19 08:57:20'),
(56, '6802adca6fedc', 2, 2, 2, '2025-04-18 17:53:46', '2025-04-19 08:57:21'),
(57, '6802add91e252', 2, 2, 2, '2025-04-18 17:54:01', '2025-04-19 08:57:23'),
(58, '680381a0f34be', 1, 2, 2, '2025-04-19 08:57:36', '2025-04-19 09:11:55'),
(59, '680381cf61a13', 1, 2, 2, '2025-04-19 08:58:23', '2025-04-19 09:11:54'),
(60, '68038230d7037', 1, 2, 2, '2025-04-19 09:00:00', '2025-04-19 09:11:56'),
(61, '680383dbcd6ab', 3, 2, 8, '2025-04-19 09:07:07', '2025-04-19 09:11:57'),
(62, '680385f07b0e0', 3, 2, 8, '2025-04-19 09:16:00', '2025-04-19 09:57:21'),
(63, '6803861353e03', 3, 2, 8, '2025-04-19 09:16:35', '2025-04-19 09:58:10'),
(64, '680386172b487', 2, 2, 2, '2025-04-19 09:16:39', '2025-04-19 09:58:11'),
(65, '68038641185cd', 3, 2, 8, '2025-04-19 09:17:21', '2025-04-19 09:58:12'),
(66, '680fbe78b7f77', 1, 2, 2, '2025-04-28 15:44:24', '2025-04-28 15:51:02'),
(67, '680fc42cc1d0d', 1, 2, 2, '2025-04-28 16:08:44', '2025-04-29 14:15:06'),
(68, '6810fa156f1c4', 1, 2, 2, '2025-04-29 14:11:01', '2025-04-29 14:15:06'),
(69, '6810fa31e0b47', 1, 2, 2, '2025-04-29 14:11:29', '2025-04-29 14:15:07'),
(70, '6810fa34e3a29', 1, 2, 2, '2025-04-29 14:11:32', '2025-04-29 14:15:07'),
(71, '6810fa37606b0', 1, 2, 2, '2025-04-29 14:11:35', '2025-04-29 14:15:08'),
(72, '6810facb99a08', 1, 2, 2, '2025-04-29 14:14:03', '2025-04-29 14:15:08'),
(73, '6810fad03a2e9', 1, 2, 2, '2025-04-29 14:14:08', '2025-04-29 14:15:09'),
(74, '6810faf665ff4', 1, 2, 2, '2025-04-29 14:14:46', '2025-04-29 14:15:10'),
(75, '6810fb2042679', 2, 2, 2, '2025-04-29 14:15:28', '2025-04-29 14:16:50');

-- --------------------------------------------------------

--
-- Struttura della tabella `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('f6S0CcPhmEKGYWx1XONrjs5ulAyqQmnd6EpZlB6u', NULL, '192.168.1.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2F5cmo5U0V5ZGl5aldZZGNjS21PT3dVeW9kSlpqSFdwMVBYYzZndyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xOTIuMTY4LjEuMTM6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745942590);

-- --------------------------------------------------------

--
-- Struttura della tabella `stato_ordini`
--

CREATE TABLE `stato_ordini` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descrittivo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `stato_ordini`
--

INSERT INTO `stato_ordini` (`id`, `descrittivo`, `created_at`, `updated_at`) VALUES
(1, 'In Corso', NULL, NULL),
(2, 'Concluso', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `tavoli`
--

CREATE TABLE `tavoli` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_tavolo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `numero_coperti` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tavoli`
--

INSERT INTO `tavoli` (`id`, `numero_tavolo`, `created_at`, `updated_at`, `numero_coperti`) VALUES
(1, 1, NULL, '2025-04-29 14:33:38', 0),
(2, 2, NULL, '2025-04-29 14:41:08', 0),
(3, 3, NULL, '2025-04-29 14:40:56', 0),
(4, 4, NULL, NULL, 0),
(5, 5, NULL, '2025-04-12 19:07:40', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `tipologie`
--

CREATE TABLE `tipologie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descrittivo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tipologie`
--

INSERT INTO `tipologie` (`id`, `descrittivo`, `created_at`, `updated_at`) VALUES
(1, 'Antipasti', '2025-04-10 15:37:31', '2025-04-10 15:37:31'),
(2, 'Primi', '2025-04-10 15:37:31', '2025-04-10 15:37:31'),
(3, 'Secondi', '2025-04-10 15:37:31', '2025-04-10 15:37:31'),
(4, 'Dolci', '2025-04-10 15:37:31', '2025-04-10 15:37:31'),
(5, 'Bevande', '2025-04-10 15:37:31', '2025-04-10 15:37:31'),
(6, 'Vini', '2025-04-10 15:37:31', '2025-04-10 15:37:31'),
(7, 'Caffè', '2025-04-10 15:37:32', '2025-04-10 15:37:32');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indici per le tabelle `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indici per le tabelle `comande`
--
ALTER TABLE `comande`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indici per le tabelle `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_tipologia_id_foreign` (`tipologia_id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `ordine_menu`
--
ALTER TABLE `ordine_menu`
  ADD PRIMARY KEY (`ordine_id`,`menu_id`),
  ADD KEY `ordine_menu_menu_id_foreign` (`menu_id`),
  ADD KEY `ordine_menu_comanda_id_foreign` (`comanda_id`);

--
-- Indici per le tabelle `ordini`
--
ALTER TABLE `ordini`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordini_tavolo_id_foreign` (`tavolo_id`),
  ADD KEY `ordini_stato_ordine_id_foreign` (`stato_ordine_id`);

--
-- Indici per le tabelle `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indici per le tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indici per le tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indici per le tabelle `stato_ordini`
--
ALTER TABLE `stato_ordini`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tavoli`
--
ALTER TABLE `tavoli`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tipologie`
--
ALTER TABLE `tipologie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `comande`
--
ALTER TABLE `comande`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `ordini`
--
ALTER TABLE `ordini`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `stato_ordini`
--
ALTER TABLE `stato_ordini`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `tavoli`
--
ALTER TABLE `tavoli`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `tipologie`
--
ALTER TABLE `tipologie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_tipologia_id_foreign` FOREIGN KEY (`tipologia_id`) REFERENCES `tipologie` (`id`);

--
-- Limiti per la tabella `ordine_menu`
--
ALTER TABLE `ordine_menu`
  ADD CONSTRAINT `ordine_menu_comanda_id_foreign` FOREIGN KEY (`comanda_id`) REFERENCES `comande` (`id`),
  ADD CONSTRAINT `ordine_menu_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `ordine_menu_ordine_id_foreign` FOREIGN KEY (`ordine_id`) REFERENCES `ordini` (`id`);

--
-- Limiti per la tabella `ordini`
--
ALTER TABLE `ordini`
  ADD CONSTRAINT `ordini_stato_ordine_id_foreign` FOREIGN KEY (`stato_ordine_id`) REFERENCES `stato_ordini` (`id`),
  ADD CONSTRAINT `ordini_tavolo_id_foreign` FOREIGN KEY (`tavolo_id`) REFERENCES `tavoli` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
