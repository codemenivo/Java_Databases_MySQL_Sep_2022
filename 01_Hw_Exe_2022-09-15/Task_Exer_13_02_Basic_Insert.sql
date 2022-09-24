USE `soft_uni`;

INSERT INTO `towns` (`name`)
VALUES ("Sofia"), ("Plovdiv"), ("Varna"), ("Burgas");

INSERT INTO `departments` (`name`)
VALUES ("Engineering"), ("Sales"), ("Marketing"), ("Software Development"), ("Quality Assurance");

INSERT INTO `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `department_id`, `hire_date`, `salary`)
VALUES 
('Ivan', 'Ivanov', 'Ivanov', '.Net Developer', 4, '2013-02-01', '3500.00'),
("Petar", "Angelov", "Petrov", "Senior Engineer", 1, "2004-03-02", "4000.00"),
("Ana", "Koleva", "Todorova", "Marketing", 5, "2016-08-28", "777.77"),
("Georgi", "Genov", "Totev", "CEO", 2, "2007-12-11", "3000.00"),
("Tania", "Dimova", "Dimova", "Intern", 3, "2016-03-08", "678.90" );

ALTER TABLE `employees` 
CHANGE COLUMN `address_id` `address_id` INT NULL ;

ALTER TABLE `employees` 
CHANGE COLUMN `salary` `salary` DECIMAL(10,2) NULL DEFAULT NULL ;