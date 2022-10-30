use camp;

/* 01. Mountains and Peaks */
CREATE TABLE `mountains` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `peaks` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `mountain_id` INT,
    CONSTRAINT fk_peaks_mountains
    FOREIGN KEY (`mountain_id`)
    REFERENCES mountains(`id`)
    ON DELETE CASCADE
);

/* 02. Trip Organization */
SELECT 
    v.`driver_id`,
    v.`vehicle_type`,
    CONCAT(c.`first_name`, ' ', c.`last_name`) AS 'driver_name'
FROM
    `vehicles` AS v
        JOIN
    `campers` AS c ON v.`driver_id` = c.`id`;
    
    /* 03. SoftUni Hiking */
SELECT 
    r.`starting_point` AS 'route_startig_point',
    r.`end_point` AS 'route_ending_point',
    r.`leader_id`,
    CONCAT(c.`first_name`, ' ', c.`last_name`) AS 'leader_name'
FROM
    `routes` AS r
        JOIN
    `campers` AS c ON r.`leader_id` = c.`id`;

/* 04. Delete Mountains  */
	# Промяна на съществуваща таблица с ON DELETE CASCADE
ALTER TABLE `camp`.`peaks` 
DROP FOREIGN KEY `fk_peaks_mountains`;
ALTER TABLE `camp`.`peaks` 
ADD CONSTRAINT `fk_peaks_mountains`
  FOREIGN KEY (`mountain_id`)
  REFERENCES `camp`.`mountains` (`id`)
  ON DELETE CASCADE;
  
	# Решение на задача 4 от Лаба
CREATE TABLE `mountains` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `peaks` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `mountain_id` INT,
    CONSTRAINT fk_peaks_mountains
    FOREIGN KEY (`mountain_id`)
    REFERENCES mountains(`id`)
    ON DELETE CASCADE
);

/* 05 Project Management DB* */
/* Write a query to create a project management db according to the following E/R Diagram: */

CREATE TABLE `clients` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `client_name` VARCHAR(100)
);

CREATE TABLE `projects` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `client_id` INT(11),
    `project_lead_id` INT(11)  
);

CREATE TABLE `employees` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(30),
    `last_name` VARCHAR(30),
    `project_id` INT(11)
);

ALTER TABLE `projects`
ADD 
CONSTRAINT fk_projects_clients
FOREIGN KEY (`client_id`)
REFERENCES clients(`id`);

ALTER TABLE `projects`
ADD
CONSTRAINT fk_projects_employees
FOREIGN KEY (`project_lead_id`)
REFERENCES employees(`id`);

ALTER TABLE `employees`
ADD
CONSTRAINT fk_employees_projects
FOREIGN KEY (`project_id`)
REFERENCES projects(`id`);







