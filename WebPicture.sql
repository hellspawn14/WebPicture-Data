-- MySQL Script generated by MySQL Workbench
-- Wed Dec 31 18:40:00 2014
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema WebPicture
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `WebPicture` ;

-- -----------------------------------------------------
-- Schema WebPicture
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `WebPicture` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `WebPicture` ;

-- -----------------------------------------------------
-- Table `WebPicture`.`Editors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `WebPicture`.`Editors` ;

CREATE TABLE IF NOT EXISTS `WebPicture`.`Editors` (
  `idEditor` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(45) NOT NULL,
  `Author` VARCHAR(45) NOT NULL,
  `Path` VARCHAR(1000) NOT NULL,
  `Created` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEditor`),
  UNIQUE INDEX `idEditors_UNIQUE` (`idEditor` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WebPicture`.`Diagrams`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `WebPicture`.`Diagrams` ;

CREATE TABLE IF NOT EXISTS `WebPicture`.`Diagrams` (
  `idDiagram` INT NOT NULL AUTO_INCREMENT,
  `idEditor` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(45) NOT NULL,
  `Author` VARCHAR(45) NOT NULL,
  `Path` VARCHAR(45) NOT NULL,
  `Created` VARCHAR(45) NOT NULL,
  `LastModified` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDiagram`),
  INDEX `refEditor_idx` (`idEditor` ASC),
  CONSTRAINT `refEditor`
    FOREIGN KEY (`idEditor`)
    REFERENCES `WebPicture`.`Editors` (`idEditor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
