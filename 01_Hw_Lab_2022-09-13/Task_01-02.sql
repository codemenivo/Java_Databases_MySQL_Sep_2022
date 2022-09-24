USE `gamebar`;

INSERT INTO `employees`(`id`, `first_name`, `last_name`)
VALUES (1, "Ivelin", "Todorov"), (2, "Gergana", "Todorova"), (3, "Kiril", "Todorov")

USE `gamebar`;

INSERT INTO `categories` (`name`)
VALUES ("Sports"), ("Psychologist"), ("Games")

USE `gamebar`;

INSERT INTO `products` (`name`, `category_id`)
VALUES ("T-shirt", 1), ("Consulting", 2), ("FIFA", 3)