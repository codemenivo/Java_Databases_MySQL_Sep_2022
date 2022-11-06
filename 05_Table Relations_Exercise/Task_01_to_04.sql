CREATE DATABASE IF NOT EXISTS table_relations;
use table_relations;

/* 01. One-To-One Relationship */
CREATE TABLE `people` (
    `person_id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `salary` DECIMAL(11 , 2 ),
    `passport_id` INT UNIQUE
);

INSERT INTO `people` (`person_id`, `first_name`, `salary`, `passport_id`)
VALUES
(1, "Roberto", 43300.00, 102),
(2, "Tom", 56100.00, 103),
(3, "Yana", 60200.00, 101);

ALTER TABLE `people`
ADD
CONSTRAINT fk_people_passports
FOREIGN KEY `people`(`passport_id`)
REFERENCES `passports`(`passport_id`);

CREATE TABLE `passports` (
    `passport_id` INT PRIMARY KEY AUTO_INCREMENT,
    `passport_number` VARCHAR(50) UNIQUE
);

INSERT INTO `passports` (`passport_id`,`passport_number`)
VALUES
(101, "N34FG21B"),
(102, "K65LO4R7"),
(103, "ZE657QP2");

/* 02. One-To-Many Relationship */
CREATE TABLE `manufacturers` (
    `manufacturer_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `established_on` DATE
);

INSERT INTO `manufacturers` (`name`, `established_on`)
VALUES
("BMW", "1916-03-01"),
("Tesla", "2003-01-01"),
("Lada", "1966-05-01");

CREATE TABLE `models` (
    `model_id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `manufacturer_id` INT NOT NULL
);

INSERT INTO `models` (`model_id`, `name`, `manufacturer_id`)
VALUES
(101, "X1", 1),
(102, "i6", 1),
(103, "Model S", 2),
(104, "Model X", 2),
(105, "Model 3", 2),
(106, "Nova", 3);

ALTER TABLE `models`
ADD
CONSTRAINT fk_models_manufacturers
FOREIGN KEY `models`(`manufacturer_id`)
REFERENCES `manufacturers`(`manufacturer_id`);

/* 03. Many-To-Many Relationship */
CREATE TABLE `students` (
`student_id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL
);

INSERT INTO `students` (`name`)
VALUES
("Mila"),
("Toni"),
("Ron");

CREATE TABLE `exams` (
`exam_id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL
);

INSERT INTO `exams` (`exam_id`, `name`)
VALUES
(101, "Spring MVC"),
(102, "Neo4j"),
(103, "Oracle 11g");

CREATE TABLE `students_exams` (
`student_id` INT,
`exam_id` INT,
CONSTRAINT pk
PRIMARY KEY (`student_id`, `exam_id`)
);

INSERT INTO `students_exams` (`student_id`, `exam_id`)
VALUES
(1, 101),
(1, 102),
(2, 101),
(3, 103),
(2, 102),
(2, 103);

ALTER TABLE `students_exams`
ADD
CONSTRAINT fk_students_exams_students
FOREIGN KEY `students_exams`(`student_id`)
REFERENCES `students`(`student_id`);

ALTER TABLE `students_exams`
ADD
CONSTRAINT fk_students_exams_exams
FOREIGN KEY `students_exams`(`exam_id`)
REFERENCES `exams`(`exam_id`);

/* 04. Self-Referencing */
CREATE TABLE `teachers` (
`teacher_id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
`manager_id` INT
);

INSERT INTO `teachers` (`teacher_id`, `name`, `manager_id`)
VALUES
(101, "John", NULL),
(102, "Maya", 106),
(103, "Silvia", 106),
(104, "Ted", 105),
(105, "Mark", 101),
(106, "Greta", 101);

ALTER TABLE `teachers`
ADD
CONSTRAINT fk_manager_id_teachar_id
FOREIGN KEY `teachers`(`manager_id`)
REFERENCES `teachers`(`teacher_id`);

