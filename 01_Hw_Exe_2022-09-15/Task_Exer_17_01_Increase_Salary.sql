USE `soft_uni`;

UPDATE `employees`
SET `salary` = `salary` * 1.1;

SELECT `salary` FROM `employees`;
/*ORDER BY `salary` DESC;*//*Допълнително може да се подредят записите*/