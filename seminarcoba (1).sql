-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2021 pada 10.46
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seminarcoba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '6c8cb7028550bfb72025f5f86672bb55', '2021-05-17 06:36:26'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '5cd034223e1ef363b7857a7f0774ac7f', '2021-05-17 06:44:02'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '38fb2f875f829e136f22dfc5b7fe21b9', '2021-06-08 06:08:04'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'db58589538badc3ca2681dc226cea25b', '2021-06-08 06:16:12'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'db9774157d456c978801aeff58d1b838', '2021-06-14 03:40:13'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'db9774157d456c978801aeff58d1b838', '2021-06-14 03:41:33'),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'db9774157d456c978801aeff58d1b838', '2021-06-14 03:42:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'Super admin'),
(2, 'User', 'Regular user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(2, 1),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'seminaradmin', NULL, '2021-05-17 06:36:38', 0),
(2, '::1', 'zakiawaluddin@gmail.com', 1, '2021-05-17 06:36:45', 1),
(3, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-05-17 06:44:14', 1),
(4, '::1', 'seminaradmin', NULL, '2021-05-17 07:19:34', 0),
(5, '::1', 'zakiawaluddin@gmail.com', 1, '2021-05-17 07:19:44', 1),
(6, '::1', '18081010133@student.upnjatim.ac.id', NULL, '2021-05-17 07:41:54', 0),
(7, '::1', 'fayiaz', NULL, '2021-05-17 07:42:03', 0),
(8, '::1', 'fayiaz', NULL, '2021-05-17 07:42:27', 0),
(9, '::1', '18081010133@student.upnjatim.ac.id', NULL, '2021-05-17 07:42:37', 0),
(10, '::1', '18081010133@student.upnjatim.ac.id', NULL, '2021-05-17 07:42:58', 0),
(11, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-05-17 07:43:38', 1),
(12, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-05-17 07:55:26', 1),
(13, '::1', '18081010133@student.upnjatim.ac.id', NULL, '2021-05-24 22:05:33', 0),
(14, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-05-24 22:06:39', 1),
(15, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-05-24 22:57:55', 1),
(16, '::1', 'seminaradmin', NULL, '2021-05-24 22:59:24', 0),
(17, '::1', 'adminseminar', NULL, '2021-05-24 22:59:59', 0),
(18, '::1', 'seminaradmin', NULL, '2021-05-24 23:01:13', 0),
(19, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-05-24 23:03:36', 1),
(20, '::1', 'zakiawaluddin@gmail.com', NULL, '2021-05-24 23:05:12', 0),
(21, '::1', 'zakiawaluddin@gmail.com', NULL, '2021-05-24 23:05:18', 0),
(22, '::1', 'zakiawaluddin@gmail.com', NULL, '2021-05-24 23:05:28', 0),
(23, '::1', 'seminaradmin', NULL, '2021-05-24 23:05:36', 0),
(24, '::1', 'seminaradmin', NULL, '2021-05-24 23:05:44', 0),
(25, '::1', 'seminaradmin', NULL, '2021-05-24 23:05:56', 0),
(26, '::1', 'zakiawaluddin@gmail.com', 1, '2021-05-24 23:09:01', 1),
(27, '::1', 'zakiawaluddin@gmail.com', NULL, '2021-05-25 22:11:58', 0),
(28, '::1', 'zakiawaluddin@gmail.com', NULL, '2021-05-25 22:12:05', 0),
(29, '::1', 'fayiaz', NULL, '2021-05-25 22:13:32', 0),
(30, '::1', 'fayiaz', NULL, '2021-05-25 22:13:39', 0),
(31, '::1', 'zakiawaluddin@gmail.com', 1, '2021-05-25 22:13:45', 1),
(32, '::1', 'zakiawaluddin@gmail.com', 1, '2021-05-25 22:14:04', 1),
(33, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-05-25 22:20:49', 1),
(34, '::1', 'fayiaz', NULL, '2021-05-25 23:05:26', 0),
(35, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-05-25 23:05:36', 1),
(36, '::1', 'zakiawaluddin@gmail.com', 1, '2021-05-27 07:55:16', 1),
(37, '::1', 'zakiawaluddin@gmail.com', NULL, '2021-05-27 08:39:28', 0),
(38, '::1', 'zakiawaluddin@gmail.com', 1, '2021-05-27 08:39:35', 1),
(39, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-05-27 08:40:26', 1),
(40, '::1', 'zakiawaluddin@gmail.com', 1, '2021-05-27 08:44:04', 1),
(41, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-02 21:12:20', 1),
(42, '::1', 'seminaradmin', NULL, '2021-06-05 21:00:38', 0),
(43, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-05 21:00:46', 1),
(44, '::1', 'fayiaz', NULL, '2021-06-05 21:30:51', 0),
(45, '::1', '18081010133@student.upnjatim.ac.id', 2, '2021-06-05 21:31:02', 1),
(46, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-05 22:47:00', 1),
(47, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-06 08:33:34', 1),
(48, '::1', 'adminseminar', NULL, '2021-06-07 06:16:02', 0),
(49, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-07 06:16:13', 1),
(50, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-07 20:59:29', 1),
(51, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-08 04:45:47', 1),
(52, '::1', 'k.02.api.a.2020@gmail.com', 3, '2021-06-08 06:08:22', 1),
(53, '::1', 'fawaluddinzaki@gmail.com', 4, '2021-06-08 06:16:28', 1),
(54, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-08 06:30:27', 1),
(55, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-08 06:37:37', 1),
(56, '::1', 'fawaluddinzaki@gmail.com', 4, '2021-06-08 06:56:28', 1),
(57, '::1', 'adminseminar', NULL, '2021-06-08 07:17:35', 0),
(58, '::1', 'adminseminar', NULL, '2021-06-08 07:17:54', 0),
(59, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-08 07:18:07', 1),
(60, '::1', 'fawaluddinzaki@gmail.com', 4, '2021-06-08 07:27:27', 1),
(61, '::1', 'seminaradmin', NULL, '2021-06-12 21:56:11', 0),
(62, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-12 21:56:20', 1),
(63, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-12 21:56:51', 1),
(64, '::1', 'seminaradmin', NULL, '2021-06-12 21:57:17', 0),
(65, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-12 21:57:23', 1),
(66, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-12 22:00:31', 1),
(67, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-12 22:00:46', 1),
(68, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-12 22:01:20', 1),
(69, '::1', 'zakiawaluddin@gmail.com', 1, '2021-06-12 22:23:46', 1),
(70, '::1', 'fawaluddinzaki@gmail.com', 4, '2021-06-12 22:24:32', 1),
(71, '::1', 'fawaluddinzaki@gmail.com', 4, '2021-06-13 07:52:15', 1),
(72, '::1', 'fawaluddinzaki@gmail.com', 4, '2021-06-13 20:26:22', 1),
(73, '::1', 'fawaluddinzaki@gmail.com', 4, '2021-06-14 03:33:27', 1),
(74, '::1', '18081010133@student.upnjatim.ac.id', 5, '2021-06-14 03:40:38', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'Manage user', 'Manage all user'),
(2, 'Manage profile', 'Manage profile user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_reset_attempts`
--

INSERT INTO `auth_reset_attempts` (`id`, `email`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '18081010133@student.upnjatim.ac.id', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'e5f82274354aeb26731db4ad585979d5', '2021-05-17 07:43:31'),
(2, '18081010133@student.upnjatim.ac.id', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '8d218c4b4fced4d9182e6238574a1a59', '2021-05-24 22:06:30'),
(3, 'zakiawaluddin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '79acef69ab397f062e6f9f2027e7c7f6', '2021-05-24 23:08:53'),
(4, 'zakiawaluddin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'd59180a6daff7eca1ff8fea6f3b7c3a1', '2021-05-25 22:13:11'),
(5, 'zakiawaluddin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'd59180a6daff7eca1ff8fea6f3b7c3a1', '2021-05-25 22:13:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1621087339, 1),
(2, '2021-04-23-074612', 'App\\Database\\Migrations\\Seminar', 'default', 'App', 1621250948, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar`
--

CREATE TABLE `seminar` (
  `id` int(3) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kotaasal` varchar(50) NOT NULL,
  `jeniskelamin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'undraw_profile.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `firstname`, `lastname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'zakiawaluddin@gmail.com', 'adminseminar', NULL, NULL, 'undraw_profile.svg', '$2y$10$Nblun7nn9lyCOIisiXGkKOaqh0G.qFSqg/8Ck5vIW2tPUO1UEeXpq', NULL, '2021-05-25 22:13:24', NULL, NULL, NULL, NULL, 1, 0, '2021-05-17 06:34:06', '2021-05-25 22:13:24', NULL),
(4, 'fawaluddinzaki@gmail.com', 'dominic', 'fayi', 'awaluddin', 'undraw_profile.svg', '$2y$10$cMIj76cI2uw8pj2cIDe/X.G0twK68sx1KIOQZtU8oIPTjNtovTCNu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-08 06:15:36', '2021-06-08 06:16:12', NULL),
(5, '18081010133@student.upnjatim.ac.id', 'fayiawaluddin', 'fayi', 'awaluddin zaki', 'undraw_profile.svg', '$2y$10$miyszRApMMAboXywbtQg/eQc4kNlzf/JfGxRCnXp6zvv7d4FZ3Phq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-14 03:39:36', '2021-06-14 03:40:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
