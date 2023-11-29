CREATE TABLE
	IF NOT EXISTS `users` (
		`id`         INT AUTO_INCREMENT,
		`first_name` VARCHAR(50) NOT NULL,
		`last_name`  VARCHAR(50) NOT NULL,
		`username`   VARCHAR(50) NOT NULL UNIQUE,
		`password`   VARCHAR(128),
		INDEX `idx_username` (`username`),
		PRIMARY KEY (`id`)
	);

CREATE TABLE
	IF NOT EXISTS `schools` (
		`id`   INT AUTO_INCREMENT,
		`name` VARCHAR(100) NOT NULL,
		`type` ENUM ('Primary', 'Secondary', 'Higher Education') NOT NULL,
		`data_of_stablishment` YEAR NOT NULL,
		PRIMARY KEY (`id`)
	);

CREATE TABLE
	IF NOT EXISTS `companies` (
		`id`       INT AUTO_INCREMENT,
		`name`     VARCHAR(128) NOT NULL,
		`industry` ENUM ('Technology', 'Education', 'Business'),
		`location` POINT NOT NULL,
		PRIMARY KEY (`id`)
	);

CREATE TABLE
	IF NOT EXISTS `conns_with_people` (
		`user_id_1` INT NOT NULL,
		`user_id_2` INT NOT NULL,
		PRIMARY KEY (`user_id_1`, `user_id_2`),
		FOREIGN KEY (`user_id_1`) REFERENCES `users` (`id`),
		FOREIGN KEY (`user_id_2`) REFERENCES `users` (`id`)
	);

CREATE TABLE
	IF NOT EXISTS `conns_with_schools` (
		`user_id`    INT NOT NULL,
		`school_id`  INT NOT NULL,
		`start_date` DATE,
		`end_date`   DATE,
		`status`     ENUM ('earned', 'pursued') NOT NULL,
		`type`       VARCHAR(10) NOT NULL,
		FOREIGN KEY (`user_id`)   REFERENCES `users` (`id`),
		FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
	);

CREATE TABLE
	IF NOT EXISTS `conns_with_companies` (
		`user_id`    INT NOT NULL,
		`company_id` INT NOT NULL,
		`start_date` DATE,
		`end_date`   DATE,
		FOREIGN KEY (`user_id`)    REFERENCES `users` (`id`),
		FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
	);
