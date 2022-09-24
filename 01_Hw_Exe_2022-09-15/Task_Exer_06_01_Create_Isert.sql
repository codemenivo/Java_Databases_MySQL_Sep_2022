USE `MyDB-1`;

CREATE TABLE `people` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
    `picture`BLOB,
    `height` DOUBLE(10, 2),
    `weight` DOUBLE(10, 2),
    `gender`CHAR(1) NOT NULL, /*`gender` ENUM("m", "f") NOT NULL (може и така, като ограничаваме избора до m / f)*/
    `birthdate`DATE NOT NULL,
    `biography` TEXT
);

INSERT INTO `people` (`name`, `gender`, `birthdate`)
VALUES 
	("Petar", "m", DATE(now())),
    ('Georgi', 'm', DATE(now())),
    ('Mima', 'f', DATE(now())),
    ('Anika', 'f', DATE(now())),
    ("Dimo", "m", DATE(now()));