/*Add Column*/
USE `gamebar`;

ALTER TABLE `employees`
ADD COLUMN `midle_name` VARCHAR(50) AFTER `first_name`;

/*Rename Column*/
USE `gamebar`;

ALTER TABLE `employees`
CHANGE COLUMN `midle_name` `middle_name` VARCHAR(100);