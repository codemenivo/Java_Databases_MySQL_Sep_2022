/*Create Foreign Key*/
USE `gamebar`;

ALTER TABLE `products`
ADD CONSTRAINT fk_category
FOREIGN KEY (`category_id`)
REFERENCES `categories`(`id`)

/*Промяна на записите в клетки от колона на таблица*/
UPDATE `gamebar`.`products` SET `category_id` = '1' WHERE (`id` = '3');
UPDATE `gamebar`.`products` SET `category_id` = '2' WHERE (`id` = '1');
UPDATE `gamebar`.`products` SET `category_id` = '3' WHERE (`id` = '2');

