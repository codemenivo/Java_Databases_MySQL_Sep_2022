USE `movies`;

CREATE TABLE `directors` (
	`id` INT PRIMARY KEY AUTO_INCREMENT, 
    `director_name` VARCHAR(255) NOT NULL, 
    `notes` TEXT
);

INSERT INTO `directors` (`director_name`)
VALUES
	("Ivan"),
    ("Petar"),
    ("Ana"),
    ("Gery"),
    ("Dimo");

CREATE TABLE `genres` (
	`id` INT PRIMARY KEY AUTO_INCREMENT, 
    `genre_name` VARCHAR(255) NOT NULL, 
    `notes` TEXT
);

INSERT INTO `genres` (`genre_name`, `notes`)
VALUES
	("Comedy", "Serial"),
    ("Fantasy", "Not Serial"),
    ("Action", "2 series"),
    ("Horor", "Not Series"),
    ("Western", "");

CREATE TABLE `categories` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `category_name` VARCHAR(255) NOT NULL,
    `notes` TEXT
);

INSERT INTO `categories` (`category_name`, `notes`)
VALUES
	("Home", ""),
    ("Cinema", ""),
    ("TV Serial", ""),
    ("Cinema", ""),
    ("Home", "");

CREATE TABLE `movies` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `director_id` INT NOT NULL,
    `copyright_year` DATE NOT NULL,
    `length` TIME NOT NULL,
    `genre_id` INT NOT NULL,
    `category_id` INT NOT NULL,
    `rating` INT,
    `notes` TEXT
);

INSERT INTO `movies` (`title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`)
VALUES
	("Rocy 1", 5, "2002-02-01", "02:25:03", 5, 1),
    ("Rocy 2", 4, "2003-12-11", "03:20:00", 4, 2),
    ("Rocy 3", 3, "2007-05-07", "04:10:13", 3, 3),
    ("Rocy 4", 2, "2009-03-08", "02:13:13", 2, 4),
    ("Rocy 5", 1, "2010-10-10", "01:25:03", 1, 5);