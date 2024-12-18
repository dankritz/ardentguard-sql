USE `ardentguard-api`;

CREATE TABLE IF NOT EXISTS `jobs` (
  `JobID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `ClientID` BIGINT UNSIGNED NOT NULL,
  `Status` TINYINT UNSIGNED NOT NULL CHECK (`Status` BETWEEN 0 AND 10),
  `CreatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `results` (
  `ResultID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `JobID` BIGINT UNSIGNED NOT NULL,
  `Output` LONGTEXT NOT NULL,
  `CreatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`JobID`) REFERENCES `jobs` (`JobID`) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `reports` (
    `reportID` INT AUTO_INCREMENT PRIMARY KEY,
    `Status` TINYINT NOT NULL,
    `S3URL` VARCHAR(255),
    `timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


