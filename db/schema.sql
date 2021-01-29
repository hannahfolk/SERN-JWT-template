DROP DATABASE IF EXISTS `sern_jwt_template_db`;
CREATE DATABASE `sern_jwt_template_db`;

USE `sern_jwt_template_db`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(100) UNIQUE,
  `email` VARCHAR(191) UNIQUE,
  `password` BINARY(60),
  `reset_password_token` VARCHAR(255) DEFAULT NULL,
  `reset_password_expires` BIGINT DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`id`)
);