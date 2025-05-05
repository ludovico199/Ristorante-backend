-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 06, 2025 alle 00:22
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
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `ordine_menu` (`id`, `ordine_id`, `menu_id`, `quantita`, `comanda_id`, `created_at`, `updated_at`, `note`) VALUES
(1, 25, 2, 1, 6, '2025-05-05 16:01:13', '2025-05-05 16:01:13', NULL),
(2, 26, 2, 1, 6, '2025-05-05 16:48:57', '2025-05-05 16:48:57', NULL),
(3, 26, 2, 1, 1, '2025-05-05 16:48:57', '2025-05-05 16:48:57', NULL),
(4, 26, 3, 1, 1, '2025-05-05 16:48:57', '2025-05-05 16:48:57', NULL),
(5, 26, 5, 1, 2, '2025-05-05 16:48:57', '2025-05-05 16:48:57', NULL),
(6, 26, 6, 1, 3, '2025-05-05 16:48:57', '2025-05-05 16:48:57', NULL),
(7, 26, 7, 1, 4, '2025-05-05 16:48:57', '2025-05-05 16:48:57', NULL),
(8, 26, 8, 1, 5, '2025-05-05 16:48:57', '2025-05-05 16:48:57', NULL),
(9, 27, 3, 1, 3, '2025-05-05 16:51:31', '2025-05-05 16:51:31', NULL),
(10, 28, 14, 1, 3, '2025-05-05 17:07:42', '2025-05-05 17:07:42', NULL),
(11, 28, 27, 1, 5, '2025-05-05 17:07:42', '2025-05-05 17:07:42', NULL),
(12, 28, 43, 1, 1, '2025-05-05 17:07:42', '2025-05-05 17:07:42', 'asdasdasd'),
(13, 29, 16, 1, 6, '2025-05-05 17:11:58', '2025-05-05 17:11:58', NULL),
(14, 30, 6, 1, 4, '2025-05-05 17:15:03', '2025-05-05 17:15:03', NULL),
(15, 30, 14, 1, 1, '2025-05-05 17:15:03', '2025-05-05 17:15:03', NULL),
(16, 30, 24, 1, 6, '2025-05-05 17:15:03', '2025-05-05 17:15:03', 'dasdada'),
(17, 30, 28, 4, 6, '2025-05-05 17:15:03', '2025-05-05 17:15:03', NULL),
(18, 31, 8, 3, 6, '2025-05-05 17:15:37', '2025-05-05 17:15:37', NULL),
(19, 31, 19, 1, 6, '2025-05-05 17:15:37', '2025-05-05 17:15:37', NULL),
(20, 31, 25, 2, 3, '2025-05-05 17:15:37', '2025-05-05 17:15:37', 'adsda'),
(21, 31, 26, 1, 5, '2025-05-05 17:15:37', '2025-05-05 17:15:37', 'dsadas');

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
(25, '6818fce9b7866', 1, 2, 74, '2025-05-05 16:01:13', '2025-05-05 16:49:12'),
(26, '681908194e547', 1, 2, 74, '2025-05-05 16:48:57', '2025-05-05 16:49:13'),
(27, '681908b362860', 3, 2, 4, '2025-05-05 16:51:31', '2025-05-05 17:15:22'),
(28, '68190c7e3511f', 3, 2, 4, '2025-05-05 17:07:42', '2025-05-05 17:15:20'),
(29, '68190d7e91166', 3, 2, 4, '2025-05-05 17:11:58', '2025-05-05 17:15:19'),
(30, '68190e376d9e8', 3, 2, 4, '2025-05-05 17:15:03', '2025-05-05 17:15:23'),
(31, '68190e5964d44', 3, 1, 4, '2025-05-05 17:15:37', '2025-05-05 17:15:37');

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
('23OejAAsb2InPAq0mPYZXEjbrQPvCFRQxHAWj43m', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1hoUGptTDhybnFPQkk2YzA1a1ltTTlZUk5FbmZQcU52QWZyWUFRaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1746463102),
('cWNjvTDanWzgpPmY7tvRLC87JkNwv2cuXdFjCuTV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQW5tdGY3RU9xN3g2STUzQ0NKU0dyZ251a1hMV1BaRGVzbkVXaWNidCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1746463092),
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
(1, 1, NULL, '2025-05-05 16:51:00', 0),
(2, 2, NULL, '2025-04-29 14:41:08', 0),
(3, 3, NULL, '2025-05-05 16:51:11', 4),
(4, 4, NULL, '2025-05-05 16:51:05', 0),
(5, 5, NULL, '2025-05-05 16:51:06', 0);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ordine_menu_unique` (`ordine_id`,`menu_id`,`comanda_id`),
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
-- AUTO_INCREMENT per la tabella `ordine_menu`
--
ALTER TABLE `ordine_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `ordini`
--
ALTER TABLE `ordini`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
