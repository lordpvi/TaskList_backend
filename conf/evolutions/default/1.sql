# --- !Ups

CREATE TABLE `task` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uuid` VARCHAR(36) NOT NULL,
  `number` VARCHAR(45) NOT NULL,
  `description` TEXT NULL,
  `status` VARCHAR(45) NOT NULL DEFAULT 'OPEN',
  `date_end` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  UNIQUE INDEX `uuid_UNIQUE` (`uuid` ASC));

# --- !Downs

DROP TABLE `tasklist`.`task`;
