-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema datawarehouse
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema datawarehouse
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `datawarehouse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `datawarehouse` ;

-- -----------------------------------------------------
-- Table `datawarehouse`.`aviso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`aviso` (
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
-- Table `datawarehouse`.`condomiminio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`condominio` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nmcondominio` VARCHAR(255) NULL DEFAULT NULL,
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
-- Table `datawarehouse`.`condominioaviso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`condominioaviso` (
  `condominioID` INT NOT NULL,
  `AvisoID` INT NOT NULL,
  PRIMARY KEY (`condominioID`, `AvisoID`),
  INDEX `AvisoID` (`AvisoID` ASC) VISIBLE,
  CONSTRAINT `condominioaviso_ibfk_1`
    FOREIGN KEY (`condominioID`)
    REFERENCES `datawarehouse`.`condominio` (`Id`),
  CONSTRAINT `condominioaviso_ibfk_2`
    FOREIGN KEY (`AvisoID`)
    REFERENCES `datawarehouse`.`aviso` (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datawarehouse`.`tipomorador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`tipomorador` (
  `Id` INT NOT NULL,
  `Descricao` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datawarehouse`.`morador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`morador` (
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
    REFERENCES `datawarehouse`.`tipomorador` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datawarehouse`.`tipoouvidoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`tipoouvidoria` (
  `Id` INT NOT NULL,
  `Descricao` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datawarehouse`.`tpunidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`tpunidade` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nmtpunidade` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `datawarehouse`.`unidadehabitacional`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`unidadehabitacional` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `MoradorID` INT NULL DEFAULT NULL,
  `nmBloco` VARCHAR(50) NULL DEFAULT NULL,
  `NrBloco` INT NULL DEFAULT NULL,
  `condominioID` INT NULL DEFAULT NULL,
  `tpunidadeid` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `condominioID` (`condominioID` ASC) VISIBLE,
  INDEX `MoradorID` (`MoradorID` ASC) VISIBLE,
  INDEX `tpunidadeid` (`tpunidadeid` ASC) VISIBLE,
  CONSTRAINT `unidadehabitacional_ibfk_1`
    FOREIGN KEY (`condominioID`)
    REFERENCES `datawarehouse`.`condominio` (`Id`),
  CONSTRAINT `unidadehabitacional_ibfk_2`
    FOREIGN KEY (`MoradorID`)
    REFERENCES `datawarehouse`.`morador` (`Id`),
  CONSTRAINT `unidadehabitacional_ibfk_3`
    FOREIGN KEY (`tpunidadeid`)
    REFERENCES `datawarehouse`.`tpunidade` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datawarehouse`.`ouvidoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`ouvidoria` (
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
    REFERENCES `datawarehouse`.`tipoouvidoria` (`Id`),
  CONSTRAINT `ouvidoria_ibfk_2`
    FOREIGN KEY (`UnidadeHabitacionalid`)
    REFERENCES `datawarehouse`.`UnidadeHabitacional` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datawarehouse`.`tiporeserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`tiporeserva` (
  `Id` INT NOT NULL,
  `Descricao` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datawarehouse`.`reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datawarehouse`.`reserva` (
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
    REFERENCES `datawarehouse`.`tiporeserva` (`Id`),
  CONSTRAINT `reserva_ibfk_2`
    FOREIGN KEY (`MoradorID`)
    REFERENCES `datawarehouse`.`morador` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- Tabelas de Dimensão
CREATE TABLE IF NOT EXISTS `dim_morador` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(255) NOT NULL,
  `DataNascimento` DATE NULL,
  `Telefone` VARCHAR(20) NULL,
  `Email` VARCHAR(255) NULL,
  `TipoMoradorID` INT NULL,
  PRIMARY KEY (`Id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `dim_condominio` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nmcondominio` VARCHAR(255) NULL DEFAULT NULL,
  `referencia` VARCHAR(255) NULL DEFAULT NULL,
  `NmEndereco` VARCHAR(255) NULL DEFAULT NULL,
  `NrEndereco` INT NULL DEFAULT NULL,
  `Estado` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `dim_unidade_habitacional` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `MoradorID` INT NULL DEFAULT NULL,
  `nmBloco` VARCHAR(50) NULL DEFAULT NULL,
  `NrBloco` INT NULL DEFAULT NULL,
  `condominioID` INT NULL DEFAULT NULL,
  `tpunidadeid` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE = InnoDB;

-- Tabela Dimensão de Tipo de Reserva
CREATE TABLE IF NOT EXISTS `dim_tipo_reserva` (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Descricao` VARCHAR(255) NULL DEFAULT NULL,
    PRIMARY KEY (`Id`)
) ENGINE = InnoDB;

-- Tabela Dimensão de Status de Reserva
CREATE TABLE IF NOT EXISTS `dim_status_reserva` (
    `Id` INT NULL DEFAULT NULL,
    `Descricao` VARCHAR(255) NULL DEFAULT NULL,
	INDEX `Id` (`Id` ASC) VISIBLE
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `dim_tipo_ouvidoria` (
  `Id` INT NOT NULL,
  `Descricao` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `dim_ouvidoria` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `TipoOuvidoriaID` INT NULL DEFAULT NULL,
  `Descricao` TEXT NULL DEFAULT NULL,
  `DataRegistro` DATE NULL DEFAULT NULL,
  `UnidadeHabitacionalid` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`TipoOuvidoriaID`) REFERENCES `dim_tipo_ouvidoria`(`Id`),
  FOREIGN KEY (`UnidadeHabitacionalid`) REFERENCES `dim_unidade_habitacional`(`Id`)
) ENGINE = InnoDB;
  
-- Tabelas Fato
CREATE TABLE IF NOT EXISTS `fato_reservas` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `MoradorID` INT NOT NULL,
  `CondominioID` INT NOT NULL,
  `DataID` timestamp NOT NULL,
  `TipoReservaID` INT NOT NULL,
  `StatusReservaID` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`MoradorID`) REFERENCES `dim_morador`(`Id`),
  FOREIGN KEY (`CondominioID`) REFERENCES `dim_condominio`(`Id`),
  FOREIGN KEY (`DataId`) REFERENCES `dim_calendario`(`DATA`),
  FOREIGN KEY (`TipoReservaID`) REFERENCES `dim_tipo_reserva`(`Id`) ,
  FOREIGN KEY (`StatusReservaID`) REFERENCES `dim_status_reserva`(`Id`)  
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `fato_ouvidorias` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `UnidadeHabitacionalID` INT NOT NULL,
  `OuvidoriaId` INT NOT NULL,
  `TipoOuvidoriaID` INT NOT NULL,
  `Data` TIMESTAMP NOT NULL,
  `Descricao` TEXT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`UnidadeHabitacionalID`) REFERENCES `dim_unidade_habitacional`(`Id`),
  FOREIGN KEY (`OuvidoriaId`) REFERENCES `dim_ouvidoria`(`Id`),
  FOREIGN KEY (`Data`) REFERENCES `dim_calendario`(`DATA`)
) ENGINE = InnoDB;





SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;