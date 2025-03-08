-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema condo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema condo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `condo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `condo` ;

-- -----------------------------------------------------
-- Table `condo`.`aviso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`aviso` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Titulo` VARCHAR(255) NULL DEFAULT NULL,
  `Conteudo` TEXT NULL DEFAULT NULL,
  `DataPublicacao` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `condo`.`condominio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`condominio` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `NmCondominio` VARCHAR(255) NULL DEFAULT NULL,
  `referencia` VARCHAR(255) NULL DEFAULT NULL,
  `NmEndereco` VARCHAR(255) NULL DEFAULT NULL,
  `NrEndereco` INT NULL DEFAULT NULL,
  `Estado` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `condo`.`condominioaviso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`condominioaviso` (
  `CondominioID` INT NOT NULL,
  `AvisoID` INT NOT NULL,
  PRIMARY KEY (`CondominioID`, `AvisoID`),
  INDEX `AvisoID` (`AvisoID` ASC) VISIBLE,
  CONSTRAINT `condominioaviso_ibfk_1`
    FOREIGN KEY (`CondominioID`)
    REFERENCES `condo`.`condominio` (`Id`),
  CONSTRAINT `condominioaviso_ibfk_2`
    FOREIGN KEY (`AvisoID`)
    REFERENCES `condo`.`aviso` (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `condo`.`tipomorador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`tipomorador` (
  `Id` INT NOT NULL,
  `Descricao` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `condo`.`morador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`morador` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(255) NULL DEFAULT NULL,
  `DataNascimento` DATE NULL DEFAULT NULL,
  `Telefone` VARCHAR(20) NULL DEFAULT NULL,
  `Email` VARCHAR(255) NULL DEFAULT NULL,
  `TipoMoradorID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `TipoMoradorID` (`TipoMoradorID` ASC) VISIBLE,
  CONSTRAINT `morador_ibfk_1`
    FOREIGN KEY (`TipoMoradorID`)
    REFERENCES `condo`.`tipomorador` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `condo`.`tipoouvidoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`tipoouvidoria` (
  `Id` INT NOT NULL,
  `Descricao` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `condo`.`tpunidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`tpunidade` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nmtpunidade` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `condo`.`unidadehabitacional`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`unidadehabitacional` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `MoradorID` INT NULL DEFAULT NULL,
  `nmBloco` VARCHAR(50) NULL DEFAULT NULL,
  `NrBloco` INT NULL DEFAULT NULL,
  `CondominioID` INT NULL DEFAULT NULL,
  `tpunidadeid` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `CondominioID` (`CondominioID` ASC) VISIBLE,
  INDEX `MoradorID` (`MoradorID` ASC) VISIBLE,
  INDEX `tpunidadeid` (`tpunidadeid` ASC) VISIBLE,
  CONSTRAINT `unidadehabitacional_ibfk_1`
    FOREIGN KEY (`CondominioID`)
    REFERENCES `condo`.`condominio` (`Id`),
  CONSTRAINT `unidadehabitacional_ibfk_2`
    FOREIGN KEY (`MoradorID`)
    REFERENCES `condo`.`morador` (`Id`),
  CONSTRAINT `unidadehabitacional_ibfk_3`
    FOREIGN KEY (`tpunidadeid`)
    REFERENCES `condo`.`tpunidade` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `condo`.`ouvidoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`ouvidoria` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `TipoOuvidoriaID` INT NULL DEFAULT NULL,
  `Descricao` TEXT NULL DEFAULT NULL,
  `DataRegistro` DATE NULL DEFAULT NULL,
  `UnidadeHabitacionalid` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `TipoOuvidoriaID` (`TipoOuvidoriaID` ASC) VISIBLE,
  INDEX `UnidadeHabitacionalid` (`UnidadeHabitacionalid` ASC) VISIBLE,
  CONSTRAINT `ouvidoria_ibfk_1`
    FOREIGN KEY (`TipoOuvidoriaID`)
    REFERENCES `condo`.`tipoouvidoria` (`Id`),
  CONSTRAINT `ouvidoria_ibfk_2`
    FOREIGN KEY (`UnidadeHabitacionalid`)
    REFERENCES `condo`.`UnidadeHabitacional` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `condo`.`tiporeserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`tiporeserva` (
  `Id` INT NOT NULL,
  `Descricao` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `condo`.`reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `condo`.`reserva` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `TipoReservaID` INT NULL DEFAULT NULL,
  `Status` INT NULL DEFAULT NULL,
  `Data` DATE NULL DEFAULT NULL,
  `MoradorID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `TipoReservaID` (`TipoReservaID` ASC) VISIBLE,
  INDEX `MoradorID` (`MoradorID` ASC) VISIBLE,
  CONSTRAINT `reserva_ibfk_1`
    FOREIGN KEY (`TipoReservaID`)
    REFERENCES `condo`.`tiporeserva` (`Id`),
  CONSTRAINT `reserva_ibfk_2`
    FOREIGN KEY (`MoradorID`)
    REFERENCES `condo`.`morador` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;




SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;