/*Modify Column*/
USE `gamebar`;

DESCRIBE `employees`; /*Първа стъпка извикваме описанието на таблицата*/
/*Втора стъпка - изпълняване на промяната*/
ALTER TABLE `employees`
MODIFY `middle_name` VARCHAR(50);


USE `gamebar`;
ALTER TABLE `employees`
MODIFY `middle_name` VARCHAR(100);

