CREATE DATABASE IF NOT EXISTS `geography` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `geography`;

/* 10. Countries Holding 'A' */
SELECT `country_name`, `iso_code`
FROM `countries`
WHERE (`country_name`) LIKE "%a%a%a%"
ORDER BY `iso_code`;

/* 11. Mix of Peak and River Names */
SELECT `peak_name`, `river_name`,
CONCAT(LOWER(`peak_name`), SUBSTRING(LOWER(`river_name`), 2)) AS `mix`
FROM `peaks`, `rivers`
WHERE RIGHT(`peak_name`, 1) = LEFT(LOWER(`river_name`), 1)
ORDER BY `mix`;
