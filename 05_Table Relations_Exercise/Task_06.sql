CREATE DATABASE IF NOT EXISTS `university_db`;
use `university_db`;

/* 06. University Database */
CREATE TABLE `subjects` (
    `subject_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `subject_name` VARCHAR(50)
);

CREATE TABLE `majors` (
    `major_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
);

CREATE TABLE `students` (
    `student_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `student_number` VARCHAR(12) UNIQUE NOT NULL,
    `student_name` VARCHAR(50) NOT NULL,
    `major_id` INT(11),
    CONSTRAINT fk_students_majors
    FOREIGN KEY `students`(`major_id`)
    REFERENCES `majors`(`major_id`)
);

CREATE TABLE `agenda` (
    `student_id` INT(11) NOT NULL,
    `subject_id` INT(11) NOT NULL,
    CONSTRAINT pk
    PRIMARY KEY (`student_id`, `subject_id`),
    CONSTRAINT fk_agenda_subjects
    FOREIGN KEY `agenda`(`subject_id`)
    REFERENCES `subjects`(`subject_id`),
    CONSTRAINT fk_agenda_students
    FOREIGN KEY `agenda`(`student_id`)
    REFERENCES `students`(`student_id`)
);

CREATE TABLE `payments` (
`payment_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`payment_date` DATE,
`payment_amount` DECIMAL(8, 2),
`student_id` INT(11),
CONSTRAINT fk_payments_students
FOREIGN KEY `payments`(`student_id`)
REFERENCES `students`(`student_id`)
);












