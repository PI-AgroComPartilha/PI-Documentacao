-- MySQL Script generated by MySQL Workbench
-- Thu Apr 18 13:54:30 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Projeto_integrador
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Projeto_integrador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Projeto_integrador` DEFAULT CHARACTER SET utf8 ;
USE `Projeto_integrador` ;

-- -----------------------------------------------------
-- Table `Projeto_integrador`.`tb_categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Projeto_integrador`.`tb_categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Projeto_integrador`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Projeto_integrador`.`tb_usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `tipo` VARCHAR(128) NOT NULL,
  `foto` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Projeto_integrador`.`tb_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Projeto_integrador`.`tb_produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(500) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `quantidade` INT NULL,
  `tb_usuarios_id` INT NOT NULL,
  `tb_categorias_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_produtos_tb_usuarios_idx` (`tb_usuarios_id` ASC) VISIBLE,
  INDEX `fk_tb_produtos_tb_categorias1_idx` (`tb_categorias_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produtos_tb_usuarios`
    FOREIGN KEY (`tb_usuarios_id`)
    REFERENCES `Projeto_integrador`.`tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_produtos_tb_categorias1`
    FOREIGN KEY (`tb_categorias_id`)
    REFERENCES `Projeto_integrador`.`tb_categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
