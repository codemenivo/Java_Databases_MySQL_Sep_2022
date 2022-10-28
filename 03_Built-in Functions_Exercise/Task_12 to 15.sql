CREATE DATABASE IF NOT EXISTS `diablo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `diablo`;

/* 12. Games From 2011 and 2012 Year */
SELECT `name`, date_format(`start`, "%Y-%m-%d") AS `start`
FROM `games`
WHERE year(`start`) >= 2011 AND year(`start`) <= 2012
ORDER BY `start`, `name`
LIMIT 50;

/* 13. User Email Providers */
SELECT `user_name`, substring(`email`, locate("@", `email`) + 1) AS `email provider`
FROM `users`
ORDER BY `email provider`, `user_name`;

/* 14. Get Users with IP Address Like Pattern */
SELECT `user_name`, `ip_address`
FROM `users`
WHERE `ip_address` LIKE "___.1%.%.___"
ORDER BY `user_name`;

/* 15. Show All Games with Duration */
SELECT `name` AS "games",

CASE
WHEN hour(`start`) < 12 THEN "Morning"
WHEN hour(`start`) < 18 THEN "Afternoon"
ELSE "Evening"
END
AS "Part of the Day",

CASE
WHEN `duration` <= 3 THEN "Extra Short"
WHEN `duration` <= 6 THEN "Short"
WHEN `duration` <= 10 THEN "Long"
ELSE "Extra Long"
END
AS "Duration"
FROM `games`;




