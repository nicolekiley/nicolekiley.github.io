-- MySQL Script generated by MySQL Workbench
-- Tue Nov 24 12:45:24 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema assign07
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema assign07
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `assign07` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `assign07` ;

-- -----------------------------------------------------
-- Table `assign07`.`author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assign07`.`author` (
  `author_fullname` VARCHAR(45) NOT NULL,
  `author` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`author_fullname`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `assign07`.`post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assign07`.`post` (
  `post_id` INT NOT NULL,
  `title` VARCHAR(45) NULL DEFAULT NULL,
  `created` INT NULL DEFAULT NULL,
  `score` INT NULL DEFAULT NULL,
  `num_crossposts` INT NULL DEFAULT NULL,
  `url` VARCHAR(300) NULL DEFAULT NULL,
  `author_author_fullname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`post_id`, `author_author_fullname`),
  INDEX `fk_post_author1_idx` (`author_author_fullname` ASC) VISIBLE,
  CONSTRAINT `fk_post_author1`
    FOREIGN KEY (`author_author_fullname`)
    REFERENCES `assign07`.`author` (`author_fullname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `assign07`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assign07`.`comments` (
  `num_comments` INT NULL DEFAULT NULL,
  `url` VARCHAR(300) NULL DEFAULT NULL,
  `post_post_id` INT NOT NULL,
  INDEX `fk_comments_post_idx` (`post_post_id` ASC) VISIBLE,
  CONSTRAINT `fk_comments_post`
    FOREIGN KEY (`post_post_id`)
    REFERENCES `assign07`.`post` (`post_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
