USE `ardentguard-api`;

CREATE TABLE IF NOT EXISTS `jobs` (
  `JobID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `ClientID` BIGINT UNSIGNED NOT NULL,
  `Status` TINYINT UNSIGNED NOT NULL CHECK (`Status` BETWEEN 0 AND 10)
) ENGINE=InnoDB;

