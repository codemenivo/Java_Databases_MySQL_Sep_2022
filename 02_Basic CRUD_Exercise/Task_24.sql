CREATE DATABASE IF NOT EXISTS `diablo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `diablo`;

/* 24. All Diablo Characters */
SELECT `name` FROM `characters`
ORDER BY `name`;