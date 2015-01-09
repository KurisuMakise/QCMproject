SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `QCMproject` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;

USE `QCMproject`;

CREATE  TABLE IF NOT EXISTS `QCMproject`.`question` (
  `idquestion` INT(11) NOT NULL ,
  `question` VARCHAR(150) NULL DEFAULT NULL ,
  PRIMARY KEY (`idquestion`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE  TABLE IF NOT EXISTS `QCMproject`.`reponse` (
  `idreponse` INT(11) NOT NULL ,
  `reponse` VARCHAR(150) NULL DEFAULT NULL ,
  `question_idquestion` INT(11) NOT NULL ,
  PRIMARY KEY (`idreponse`) ,
  INDEX `fk_reponse_question1_idx` (`question_idquestion` ASC) ,
  CONSTRAINT `fk_reponse_question1`
    FOREIGN KEY (`question_idquestion` )
    REFERENCES `QCMproject`.`question` (`idquestion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE  TABLE IF NOT EXISTS `QCMproject`.`stat` (
  `idstat` INT(11) NOT NULL ,
  `stat` VARCHAR(4) NULL DEFAULT NULL ,
  `valeur` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`idstat`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
