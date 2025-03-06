CREATE TABLE IF NOT EXISTS `condo`.`dim_morador` (
  `MoradorID` INT NOT NULL,
  `Nome` VARCHAR(255) NULL DEFAULT NULL,
  `DataNascimento` DATE NULL DEFAULT NULL,
  `Telefone` VARCHAR(20) NULL DEFAULT NULL,
  `Email` VARCHAR(255) NULL DEFAULT NULL,
  `TipoMoradorID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`MoradorID`),
  CONSTRAINT `fk_tipo_morador`
    FOREIGN KEY (`TipoMoradorID`)
    REFERENCES `condo`.`tipomorador` (`Id`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `condo`.`dim_condominio` (
  `CondominioID` INT NOT NULL,
  `Nome` VARCHAR(255) NULL DEFAULT NULL,
  `Endereco` VARCHAR(255) NULL DEFAULT NULL,
  `Numero` VARCHAR(255) NULL DEFAULT NULL,
  `NumUnidade` INT NULL DEFAULT NULL,
  PRIMARY KEY (`CondominioID`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `condo`.`dim_reserva_tipo` (
  `TipoReservaID` INT NOT NULL,
  `Descricao` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`TipoReservaID`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `condo`.`dim_reserva` (
  `Id` int not null,
  `TipoReservaID` INT NOT NULL,
  `status` int not null,
  `Data` date not null,
  `MoradorID` int not null,
  PRIMARY KEY (`Id`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `condo`.`fato_reserva` (
  `ReservaID` INT NOT NULL AUTO_INCREMENT,
  `TipoReservaID` INT NOT NULL,
  `MoradorID` INT NOT NULL,
  `Status` INT NULL DEFAULT NULL,
  `DataReserva` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`ReservaID`),
  INDEX `fk_tipo_reserva_idx` (`TipoReservaID`),
  INDEX `fk_morador_idx` (`MoradorID`),
  CONSTRAINT `fk_reserva_tipo`
    FOREIGN KEY (`TipoReservaID`)
    REFERENCES `condo`.`dim_reserva_tipo` (`TipoReservaID`),
  CONSTRAINT `fk_reserva_morador`
    FOREIGN KEY (`MoradorID`)
    REFERENCES `condo`.`dim_morador` (`MoradorID`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `condo`.`fato_ouvidoria` (
  `OuvidoriaID` INT NOT NULL AUTO_INCREMENT,
  `TipoOuvidoriaID` INT NOT NULL,
  `MoradorID` INT NOT NULL,
  `Descricao` TEXT NULL DEFAULT NULL,
  `DataRegistro` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`OuvidoriaID`),
  INDEX `fk_ouvidoria_tipo_idx` (`TipoOuvidoriaID`),
  INDEX `fk_ouvidoria_morador_idx` (`MoradorID`),
  CONSTRAINT `fk_ouvidoria_tipo`
    FOREIGN KEY (`TipoOuvidoriaID`)
    REFERENCES `condo`.`tipoouvidoria` (`Id`),
  CONSTRAINT `fk_ouvidoria_morador`
    FOREIGN KEY (`MoradorID`)
    REFERENCES `condo`.`dim_morador` (`MoradorID`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
