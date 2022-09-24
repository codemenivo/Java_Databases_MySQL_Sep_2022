USE `mydb-1`;

ALTER TABLE `users`
MODIFY COLUMN `last_login_time` DATETIME DEFAULT NOW();

INSERT INTO `users` (`username`, `password`)
VALUES ("IvoDef", "456_456"); /*Въвеждаме потребител за проверка дали се отразява настоящото време*/

/*
ALTER COLUMN -- SET or REMOVE def values on column
CHANGE COLUMN -- Rename, Change Type, Move, Resize
MODIFY COLUMN -- Like Chande no Rename
*/