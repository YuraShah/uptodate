SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `app_close` (
  `id` int(11) NOT NULL,
  `android_version` varchar(10) NOT NULL,
  `android_version_update` int(1) NOT NULL DEFAULT 0,
  `android_close` int(1) NOT NULL DEFAULT 0,
  `android_link` varchar(255) NOT NULL,
  `ios_version` varchar(10) NOT NULL,
  `ios_version_update` int(1) NOT NULL DEFAULT 0,
  `ios_close` int(1) NOT NULL DEFAULT 0,
  `ios_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `app_close` (`id`, `android_version`, `android_version_update`, `android_close`, `android_link`, `ios_version`, `ios_version_update`, `ios_close`, `ios_link`) VALUES
(1, '1.0.0', 0, 0, 'https://play.google.com/store/apps/details?id=pro.evidence.evidence', '1.0.0', 0, 0, 'https://apps.apple.com/am/app/evidence-am/id6737410269');


ALTER TABLE `app_close`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `app_close`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;