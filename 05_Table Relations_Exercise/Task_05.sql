CREATE DATABASE IF NOT EXISTS `online_store`;
use `online_store`;

/* 05. Online Store Database */
CREATE TABLE `cities` (
`city_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL
);
ALTER TABLE `online_store`.`cities` 
CHANGE COLUMN `name` `name` VARCHAR(50) NULL ;

CREATE TABLE `customers` (
`customer_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
`birthday` DATE,
`city_id` INT(11)
);

ALTER TABLE `customers`
ADD
CONSTRAINT fk_customers_cities
FOREIGN KEY `customers`(`city_id`)
REFERENCES `cities`(`city_id`);

ALTER TABLE `online_store`.`customers` 
CHANGE COLUMN `name` `name` VARCHAR(50) ;

CREATE TABLE `orders`(
`order_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`customer_id` INT(11)
);

ALTER TABLE `orders`
ADD
CONSTRAINT fk_orders_customers
FOREIGN KEY `orders`(`customer_id`)
REFERENCES `customers`(`customer_id`);

CREATE TABLE `order_items` (
`order_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`item_id` INT(11)
);

ALTER TABLE `order_items`
ADD
CONSTRAINT fk_order_items_orders
FOREIGN KEY `order_items`(`order_id`)
REFERENCES `orders`(`order_id`);

ALTER TABLE `order_items`
ADD
CONSTRAINT fk_order_items_items
FOREIGN KEY `order_items`(`item_id`)
REFERENCES `items`(`item_id`);

CREATE TABLE `items` (
`item_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),
`item_type_id` INT(11)
);

ALTER TABLE `items`
ADD
CONSTRAINT fk_items_item_types
FOREIGN KEY `items`(`item_type_id`)
REFERENCES `item_types`(`item_type_id`);

CREATE TABLE `item_types` (
`item_type_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50)
);






