USE `gamebar`;
/*Редактиране на данните в избрана таблица*/
UPDATE `categories` SET `name` = 'Спорт' WHERE (`id` = '1');
UPDATE `categories` SET `name` = 'Психология' WHERE (`id` = '2');
UPDATE `categories` SET `name` = 'Игри' WHERE (`id` = '3');

UPDATE `products` SET `name` = "Тениски" WHERE (`id` = 1);
UPDATE `products` SET `name` = "Консултации" WHERE (`id` = 2);
UPDATE `products` SET `name` = "Компютърна игра" WHERE (`id` = 3);