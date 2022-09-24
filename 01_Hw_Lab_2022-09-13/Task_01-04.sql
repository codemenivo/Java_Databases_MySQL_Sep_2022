USE `gamebar`;
/*Изтриване на редове от таблица*/
DELETE FROM `employees` WHERE (`id` = '1');
DELETE FROM `employees` WHERE (`id` = 2);

DELETE FROM `products` WHERE (`id` = 1);
DELETE FROM `products` WHERE (`id` = 2);

DELETE FROM `categories` WHERE (`id` = 1);
DELETE FROM `categories` WHERE (`id` = 2);

/*Изтриване на таблица*/
DROP TABLE `employees`;
DROP TABLE `products`;
DROP TABLE `categories`;

/*Изтриване на База Данни*/
DROP DATABASE `gamebar`;