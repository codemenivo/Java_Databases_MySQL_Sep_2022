CREATE DATABASE IF NOT EXISTS `book_library` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE book_library;

/* Task_01. Find Book Titles */
SELECT `title` FROM `books`
WHERE substring(`title`, 1, 3) = "The"
ORDER BY `id`;


/* Task_02. Replace Titles */
SELECT replace(`title`, "The", "***") AS `title`
FROM `books`
WHERE substring(`title`, 1, 3) = "The";


/* Task_03. Sum Cost of All Books */
SELECT round(sum(`cost`), 2) FROM `books`;


/* Task_04. Days Lived */
SELECT concat(`first_name`, " ", `last_name`) AS `Full Name`,
TIMESTAMPDIFF (DAY, `born`, `died`) AS `Days Lived`
FROM `authors`;


/* Task_05. Harry Potter Books */
SELECT `title` FROM `books`
WHERE `title` LIKE "Harry Potter%";
