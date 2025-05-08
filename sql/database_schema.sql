-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Fifa_worldcup
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Fifa_worldcup
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Fifa_worldcup` DEFAULT CHARACTER SET utf8 ;
USE `Fifa_worldcup` ;

-- -----------------------------------------------------
-- Table `Fifa_worldcup`.`cups`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fifa_worldcup`.`cups` (
  `year` INT NOT NULL,
  `country` VARCHAR(45) NULL,
  `winner` VARCHAR(45) NULL,
  `runners-up` VARCHAR(45) NULL,
  `third` VARCHAR(45) NULL,
  `fourth` VARCHAR(45) NULL,
  `goalsscored` INT NULL,
  `qualifiedteams` INT NULL,
  `matchesplayed` INT NULL,
  ` attendance` DECIMAL(10) NULL,
  PRIMARY KEY (`year`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Fifa_worldcup`.`worldcup_matches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fifa_worldcup`.`worldcup_matches` (
  `year` INT NOT NULL,
  `date` DATE NULL,
  `stage` VARCHAR(45) NULL,
  `stadium` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `home_team_name` VARCHAR(45) NULL,
  `home_team_goal` INT NULL,
  `away_team_goals` INT NULL,
  `away_team_name` INT NULL,
  `attendance` INT NULL,
  `half-time_home_goals` INT NULL,
  ` half-time_away_goals` INT NULL,
  `roundid` INT NULL,
  `matchid` INT NULL,
  `cups_year` INT NOT NULL,
  PRIMARY KEY (`year`),
  INDEX `fk_worldcup_matches_cups1_idx` (`cups_year` ASC) VISIBLE,
  CONSTRAINT `fk_worldcup_matches_cups1`
    FOREIGN KEY (`cups_year`)
    REFERENCES `Fifa_worldcup`.`cups` (`year`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Fifa_worldcup`.`players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fifa_worldcup`.`players` (
  `roundid` INT NOT NULL,
  ` matchid` INT NULL,
  `team_initials` VARCHAR(8) NULL,
  `shirt_number` INT NULL,
  `player_name` VARCHAR(45) NULL,
  `position` VARCHAR(45) NULL,
  `event` VARCHAR(45) NULL,
  `worldcup_matches_year` INT NOT NULL,
  PRIMARY KEY (`roundid`),
  INDEX `fk_players_worldcup_matches_idx` (`worldcup_matches_year` ASC) VISIBLE,
  CONSTRAINT `fk_players_worldcup_matches`
    FOREIGN KEY (`worldcup_matches_year`)
    REFERENCES `Fifa_worldcup`.`worldcup_matches` (`year`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
