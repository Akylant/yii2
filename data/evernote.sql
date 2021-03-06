-- MySQL Script generated by MySQL Workbench
-- Чт. 21 янв. 2016 14:49:56
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
-- Table `mydb`.`evrnt_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`evrnt_user` ;

CREATE TABLE IF NOT EXISTS `mydb`.`evrnt_user` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `username` VARCHAR(128) NOT NULL COMMENT '',
  `surname` VARCHAR(45) NOT NULL COMMENT '',
  `name` VARCHAR(45) NOT NULL COMMENT '',
  `password` VARCHAR(255) NOT NULL COMMENT '',
  `salt` VARCHAR(255) NOT NULL COMMENT '',
  `access_token` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `create_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`evrnt_note`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`evrnt_note` ;

CREATE TABLE IF NOT EXISTS `mydb`.`evrnt_note` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `text` TEXT NOT NULL COMMENT '',
  `creator` INT NOT NULL COMMENT '',
  `date_create` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_evrnt_note_1_idx` (`creator` ASC)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`evrnt_access`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`evrnt_access` ;

CREATE TABLE IF NOT EXISTS `mydb`.`evrnt_access` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `note_id` INT NOT NULL COMMENT '',
  `user_id` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_evrnt_access_1_idx` (`note_id` ASC)  COMMENT '',
  INDEX `fk_evrnt_access_2_idx` (`user_id` ASC)  COMMENT '')
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
