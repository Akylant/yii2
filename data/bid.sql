-- MySQL Script generated by MySQL Workbench
-- Чт. 24 марта 2016 15:41:27
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tbl_goods`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tbl_goods` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tbl_goods` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(255) NOT NULL COMMENT '',
  `count` INT(10) NOT NULL DEFAULT 0 COMMENT '',
  `email_provider` VARCHAR(255) NULL COMMENT '',
  `provider_id` INT NOT NULL COMMENT '',
  `date_create` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tbl_bid`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tbl_bid` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tbl_bid` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(255) NOT NULL COMMENT '',
  `adress` VARCHAR(255) NULL COMMENT '',
  `email` VARCHAR(255) NOT NULL COMMENT '',
  `phone` VARCHAR(45) NOT NULL COMMENT '',
  `date_create` DATETIME NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
