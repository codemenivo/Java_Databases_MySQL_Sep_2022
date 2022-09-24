USE `minions`;

CREATE TABLE `minions` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255),
    `age` INT
);

DESCRIBE `minions`;

CREATE TABLE `towns` (
    `town_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255)
);

DROP TABLE `towns`;

CREATE TABLE `towns` (
    `town_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL
);

DESCRIBE `towns`;