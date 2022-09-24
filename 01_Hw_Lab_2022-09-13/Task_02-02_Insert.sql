USE `gamebar`;

INSERT INTO `employees` (`id`, `first_name`, `last_name`)
VALUES (1, "Ivelin", "Todorov"), (2, "Gergana", "Todorova"), (3, "Kiril", "Todorov")

USE `gamebar`;
INSERT INTO `categories` (`id`, `name`)
VALUES (1, "Games"), (2, "Sport"), (3, "Psychologist")

USE `gamebar`;
INSERT INTO `products` (`name`, `category_id`)
VALUES ("T-shirt", 1), ("Consultation", 2), ("FIFA_Game", 3)