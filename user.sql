SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `payment` int(1) NOT NULL DEFAULT 0,
  `payment_expire` datetime DEFAULT NULL,
  `verify_code` varchar(255) DEFAULT NULL,
  `verify_status` int(1) NOT NULL DEFAULT 0,
  `verify_code_time` varchar(255) DEFAULT NULL,
  `pass_recovery_quantity` int(1) NOT NULL DEFAULT 0,
  `pass_recovery` varchar(255) DEFAULT NULL,
  `pass_recovery_time` varchar(255) DEFAULT NULL,
  `email_change_quantity` int(11) DEFAULT NULL,
  `surname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notify` int(1) NOT NULL DEFAULT 1,
  `block` int(1) NOT NULL DEFAULT 0,
  `tel` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `change_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);
