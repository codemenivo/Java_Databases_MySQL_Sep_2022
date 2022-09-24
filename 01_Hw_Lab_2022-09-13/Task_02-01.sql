/*Създаване на База Данни с Query*/
CREATE SCHEMA `gamebar2` DEFAULT CHARACTER SET utf8;

/*Изтриване на База Данни с Query*/
DROP DATABASE `gamebar2`;

/*Създаване на таблици за избрана DB*/
USE `gamebar`;
CREATE TABLE `employees` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(100) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL
);

CREATE TABLE `categories` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL
);

CREATE TABLE `products` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL,
`category_id` INT NOT NULL
);