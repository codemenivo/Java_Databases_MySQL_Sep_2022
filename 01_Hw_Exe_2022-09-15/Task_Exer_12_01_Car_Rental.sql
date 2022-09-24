USE `car_rental`;

CREATE TABLE `categories` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `category` VARCHAR(255) NOT NULL,
    `daily_rate` DOUBLE(10,2) NOT NULL,
    `weekly_rate` DOUBLE(10,2) NOT NULL,
    `monthly_rate` DOUBLE(10,2) NOT NULL,
    `weekend_rate` DOUBLE(10,2) NOT NULL
);

INSERT INTO `categories` (`category`, `daily_rate`, `weekly_rate`,`monthly_rate`, `weekend_rate`)
VALUES
	("Iconomy", 50.50, 325.75, 1275.00, 90.00),
    ("Jeep", 75.00, 455.90, 1912.50, 125.00),
    ("Bus", 95.00, 600.00, 2422.50, 150.00);
    
    DELETE FROM `categories` WHERE `id` IN(4, 5, 6);
    
    CREATE TABLE `cars` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `plate_number` VARCHAR(255) NOT NULL,
    `make` VARCHAR(255),
    `model` VARCHAR(255),
    `car_year` DATE NOT NULL,
    `category_id` INT NOT NULL,
    `doors` INT,
    `picture` BLOB,
    `car_condition` ENUM("supper", "middle", "old"),
    `available` ENUM("Yes", "No")
    );
    
    INSERT INTO `cars` (`plate_number`, `car_year`, `category_id`, `car_condition`, `available`)
    VALUES
		("CB 1550 AC", "2017-08-15", 1, "supper", "Yes"),
        ("CA 3050 AK", "2020-10-10", 2, "middle", "No"),
        ("PB 1343 KM", "2019-01-22", 3, "old", "Yes");
        
	CREATE TABLE `employees` (
			`id` INT PRIMARY KEY AUTO_INCREMENT,
            `first_name` VARCHAR(255) NOT NULL,
            `last_name` VARCHAR(255) NOT NULL,
            `title` VARCHAR(255) NOT NULL,
            `notes` TEXT
        );
        
        INSERT INTO `employees` (`first_name`, `last_name`, `title`)
        VALUES
			("Ivan", "Ivanov", "CEO"),
            ("Dimo", "Dimov", "Seller"),
            ("Ana", "Koleva", "HR");
            
	CREATE TABLE `customers` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `driver_licence_number` INT NOT NULL,
    `full_name` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255),
    `city` VARCHAR(255),
    `zip_code` INT,
    `notes` TEXT
);
    
  INSERT INTO `customers` (`driver_licence_number`, `full_name`)
  VALUES 
	(123456, "Dimitar Dimitrov"),
    (2345678, "Maia Manolova"),
    (3456789, "Asparuh Hristov");
    
CREATE TABLE `rental_orders` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `employee_id` INT NOT NULL,
    `customer_id` INT NOT NULL,
    `car_id` INT NOT NULL,
    `car_condition` ENUM("supper", "middle", "old"),
    `tank_level` VARCHAR(255),
    `kilometrage_start` DOUBLE(10,2) NOT NULL,
    `kilometrage_end` DOUBLE(10,2),
    `total_kilometrage` DOUBLE(10,2),
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `total_days` INT,
    `rate_applied` DOUBLE(10,2),
    `tax_rate` DOUBLE(10,2),
    `order_status` ENUM("Paid", "Not paid"),
    `notes` TEXT
);

INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`, `kilometrage_start`, `start_date`, `end_date`, `order_status`)
VALUES 
	(2, 3, 3, 15385.35, "2022-03-08", "2022-03-12", "Not paid"),
    (1, 1, 1, 25005.50, "2022-05-15", "2022-05-22", "Paid"),
    (2, 2, 2, 45555.55, "2022-08-11", "2022-09-11", "Not paid");