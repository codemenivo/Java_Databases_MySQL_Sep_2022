USE `mydb-1`;

CREATE TABLE `users` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `username` VARCHAR(30) NOT NULL,
    `password` VARCHAR(26) NOT NULL,
    `profile_picture` BLOB,
    `last_login_time` TIME,
    `is_deleted` BOOLEAN
);

INSERT INTO `users` (`username`, `password`)
VALUES 
	("Pesho", "1234"),
    ("Ivan", "23_45"),
    ("Desi", "princes"),
    ("Lili", "my_name"),
    ("Pero", "gugutka103");