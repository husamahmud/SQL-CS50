CREATE TABLE
	`books` (
		`id` INT AUTO_INCREMENT,
		`name` VARCHAR(255) NOT NULL,
		`author_id` INT,
		`publication_date` YEAR,
		`isbn` CHAR(13) NOT NULL,
		`genre` INT NOT NULL,
		`description` TEXT,
		PRIMARY KEY (`id`),
		FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
		FOREIGN KEY (`genre`) REFERENCES `genres` (`id`),
		INDEX `idx_author_id` (`author_id`),
		INDEX `idx_isbn` (`genre`)
	)
CREATE TABLE
	`authors` (
		`id` INT AUTO_INCREMENT,
		`name` VARCHAR(255),
		`birth_date` YEAR,
		`nationality` VARCHAR(64),
		PRIMARY KEY (`id`)
	)
CREATE TABLE
	`genres` (
		`id` INT AUTO_INCREMENT,
		`name` VARCHAR(64),
		`description` TEXT,
		PRIMARY KEY (`id`)
	)
CREATE TABLE
	`members` (
		`id` INT AUTO_INCREMENT,
		`name` VARCHAR(255) NOT NULL,
		`email` VARCHAR(255) NOT NULL UNIQUE,
		`phone` VARCHAR(20) NOT NULL UNIQUE,
		`address` VARCHAR(255),
		`member_status` ENUM ('Active', 'Inactive', 'Suspended', 'Pending') NOT NULL,
		PRIMARY KEY (`id`)
	)
CREATE TABLE
	`loans` (
		`id` INT AUTO_INCREMENT,
		`book_id` INT,
		`member_id` INT PRIMARY KEY (`id`),
		`loan_date` DATE NOT NULL,
		`due_date` DATE NOT NULL,
		`return_date` DATE NOT NULL,
		FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
		FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
	)
