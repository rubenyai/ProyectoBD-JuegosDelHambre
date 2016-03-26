-- MySQL Script generated by MySQL Workbench
-- 03/26/16 10:34:42
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Patrocinadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Patrocinadores` (
  `id_patrocinador` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `dinero_disponible` INT NULL,
  PRIMARY KEY (`id_patrocinador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Representantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Representantes` (
  `id_representante` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_representante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cuerpos_Paz`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cuerpos_Paz` (
  `id_cuerpo_paz` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cuerpo_paz`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cuerpos_Ejecutivos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cuerpos_Ejecutivos` (
  `id_cuerpo_ejecutivo` INT NOT NULL,
  PRIMARY KEY (`id_cuerpo_ejecutivo`),
  CONSTRAINT `id_cuerpo_ejecutivo`
    FOREIGN KEY (`id_cuerpo_ejecutivo`)
    REFERENCES `mydb`.`Cuerpos_Paz` (`id_cuerpo_paz`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Presidente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Presidente` (
  `id_presidente` INT NOT NULL,
  PRIMARY KEY (`id_presidente`),
  CONSTRAINT `id_presidente`
    FOREIGN KEY (`id_presidente`)
    REFERENCES `mydb`.`Cuerpos_Ejecutivos` (`id_cuerpo_ejecutivo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Distritos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Distritos` (
  `id_distrito` INT NOT NULL,
  `id_representante` INT NULL,
  `id_presidente` INT NULL,
  `tipo` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_distrito`),
  INDEX `id_representante_idx` (`id_representante` ASC),
  INDEX `id_presidente_idx` (`id_presidente` ASC),
  CONSTRAINT `id_representante`
    FOREIGN KEY (`id_representante`)
    REFERENCES `mydb`.`Representantes` (`id_representante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_presidente`
    FOREIGN KEY (`id_presidente`)
    REFERENCES `mydb`.`Presidente` (`id_presidente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vigilante_Jefe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vigilante_Jefe` (
  `id_vigilante_jefe` INT NOT NULL,
  `id_reemplazo` INT NULL,
  PRIMARY KEY (`id_vigilante_jefe`),
  CONSTRAINT `id_vigilante_jefe`
    FOREIGN KEY (`id_vigilante_jefe`)
    REFERENCES `mydb`.`Cuerpos_Ejecutivos` (`id_cuerpo_ejecutivo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Arenas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Arenas` (
  `id_arena` INT NOT NULL,
  `id_vigilante_jefe` INT NULL,
  `forma` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  `tipo` VARCHAR(45) NULL,
  `fecha_creacion` DATE NULL,
  PRIMARY KEY (`id_arena`),
  INDEX `id_vigilante_jefe_idx` (`id_vigilante_jefe` ASC),
  CONSTRAINT `id_vigilante_jefe`
    FOREIGN KEY (`id_vigilante_jefe`)
    REFERENCES `mydb`.`Vigilante_Jefe` (`id_vigilante_jefe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Lucha_Juegos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Lucha_Juegos` (
  `id_festejo` INT NOT NULL,
  `id_arena` INT NULL,
  `id_tributo_ganador` INT NULL,
  `id_tributo_vencedor` INT NULL,
  `resumen` VARCHAR(45) NULL,
  PRIMARY KEY (`id_festejo`),
  INDEX `id_arena_idx` (`id_arena` ASC),
  CONSTRAINT `id_arena`
    FOREIGN KEY (`id_arena`)
    REFERENCES `mydb`.`Arenas` (`id_arena`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tributos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tributos` (
  `id_tributo` INT NOT NULL,
  `id_distrito` INT NULL,
  `id_festejo` INT NULL,
  `nombre` VARCHAR(45) NULL,
  `sobrenombre` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  `peso` VARCHAR(45) NULL,
  `altura` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `habilidad` VARCHAR(45) NULL,
  `forma_seleccion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tributo`),
  INDEX `id_distrito_idx` (`id_distrito` ASC),
  INDEX `id_festejo_idx` (`id_festejo` ASC),
  CONSTRAINT `id_distrito`
    FOREIGN KEY (`id_distrito`)
    REFERENCES `mydb`.`Distritos` (`id_distrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_festejo`
    FOREIGN KEY (`id_festejo`)
    REFERENCES `mydb`.`Lucha_Juegos` (`id_festejo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Obsequios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Obsequios` (
  `id_obsequio` INT NOT NULL,
  `id_patrocinador` INT NULL,
  `id_tributo` INT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_obsequio`),
  INDEX `id_patrocinador_idx` (`id_patrocinador` ASC),
  INDEX `id_tributo_idx` (`id_tributo` ASC),
  CONSTRAINT `id_patrocinador`
    FOREIGN KEY (`id_patrocinador`)
    REFERENCES `mydb`.`Patrocinadores` (`id_patrocinador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_tributo`
    FOREIGN KEY (`id_tributo`)
    REFERENCES `mydb`.`Tributos` (`id_tributo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Escuadrones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Escuadrones` (
  `id_escuadron` INT NOT NULL,
  `tipo` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_escuadron`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Escuadrones_Distritos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Escuadrones_Distritos` (
  `id_escuadron_distrito` INT NOT NULL,
  `id_distrito` INT NULL,
  `id_escuadron` INT NULL,
  PRIMARY KEY (`id_escuadron_distrito`),
  INDEX `id_distrito_idx` (`id_distrito` ASC),
  INDEX `id_escuadron_idx` (`id_escuadron` ASC),
  CONSTRAINT `id_distrito`
    FOREIGN KEY (`id_distrito`)
    REFERENCES `mydb`.`Distritos` (`id_distrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_escuadron`
    FOREIGN KEY (`id_escuadron`)
    REFERENCES `mydb`.`Escuadrones` (`id_escuadron`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ataques`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ataques` (
  `id_ataque` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `fecha` DATE NULL,
  PRIMARY KEY (`id_ataque`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Escuadrones_Ataques`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Escuadrones_Ataques` (
  `id_escuadron_ataque` INT NOT NULL,
  `id_escuadron` INT NULL,
  `id_ataque` INT NULL,
  PRIMARY KEY (`id_escuadron_ataque`),
  INDEX `id_escuadron_idx` (`id_escuadron` ASC),
  INDEX `id_ataque_idx` (`id_ataque` ASC),
  CONSTRAINT `id_escuadron`
    FOREIGN KEY (`id_escuadron`)
    REFERENCES `mydb`.`Escuadrones` (`id_escuadron`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_ataque`
    FOREIGN KEY (`id_ataque`)
    REFERENCES `mydb`.`Ataques` (`id_ataque`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Estilistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Estilistas` (
  `id_estilista` INT NOT NULL,
  `nombre_artistico` VARCHAR(45) NULL,
  `estilo` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_estilista`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mentores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Mentores` (
  `id_mentor` INT NOT NULL,
  `id_festejo_ganado` INT NULL,
  `nombre` VARCHAR(45) NULL,
  `sexo` VARCHAR(45) NULL,
  `sinopsis_victoria` VARCHAR(45) NULL,
  PRIMARY KEY (`id_mentor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ayudas_Estilos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ayudas_Estilos` (
  `id_ayuda_estilo` INT NOT NULL,
  `id_tributo` INT NULL,
  `id_mentor` INT NULL,
  `id_estilista` INT NULL,
  PRIMARY KEY (`id_ayuda_estilo`),
  INDEX `id_tributo_idx` (`id_tributo` ASC),
  INDEX `id_estilista_idx` (`id_estilista` ASC),
  INDEX `id_mentor_idx` (`id_mentor` ASC),
  CONSTRAINT `id_tributo`
    FOREIGN KEY (`id_tributo`)
    REFERENCES `mydb`.`Tributos` (`id_tributo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_estilista`
    FOREIGN KEY (`id_estilista`)
    REFERENCES `mydb`.`Estilistas` (`id_estilista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_mentor`
    FOREIGN KEY (`id_mentor`)
    REFERENCES `mydb`.`Mentores` (`id_mentor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Trajes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Trajes` (
  `id_traje` INT NOT NULL,
  `id_estilista` INT NULL,
  `fecha` DATE NULL,
  `material` VARCHAR(45) NULL,
  `medidas` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  `efectos_especiales` VARCHAR(45) NULL,
  PRIMARY KEY (`id_traje`),
  INDEX `id_estilista_idx` (`id_estilista` ASC),
  CONSTRAINT `id_estilista`
    FOREIGN KEY (`id_estilista`)
    REFERENCES `mydb`.`Estilistas` (`id_estilista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Luchas_Vasalajes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Luchas_Vasalajes` (
  `id_festejo` INT NOT NULL,
  `id_arena` INT NULL,
  `id_tributo_ganador` INT NULL,
  `id_tributo_vencedor` INT NULL,
  PRIMARY KEY (`id_festejo`),
  INDEX `id_arena_idx` (`id_arena` ASC),
  CONSTRAINT `id_arena`
    FOREIGN KEY (`id_arena`)
    REFERENCES `mydb`.`Arenas` (`id_arena`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Guias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Guias` (
  `id_guia` INT NOT NULL,
  `id_mentor` INT NULL,
  `id_tributo` INT NULL,
  PRIMARY KEY (`id_guia`),
  INDEX `id_mentor_idx` (`id_mentor` ASC),
  INDEX `id_tributo_idx` (`id_tributo` ASC),
  CONSTRAINT `id_mentor`
    FOREIGN KEY (`id_mentor`)
    REFERENCES `mydb`.`Mentores` (`id_mentor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_tributo`
    FOREIGN KEY (`id_tributo`)
    REFERENCES `mydb`.`Tributos` (`id_tributo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cuerpos_Administrativos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cuerpos_Administrativos` (
  `id_cuerpo_administrativo` INT NOT NULL,
  PRIMARY KEY (`id_cuerpo_administrativo`),
  CONSTRAINT `id_cuerpo_administrativo`
    FOREIGN KEY (`id_cuerpo_administrativo`)
    REFERENCES `mydb`.`Cuerpos_Paz` (`id_cuerpo_paz`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Arenas_Administrativos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Arenas_Administrativos` (
  `id_Arenas_Administrativos` INT NOT NULL,
  `id_arena` INT NULL,
  `id_administrativo` INT NULL,
  PRIMARY KEY (`id_Arenas_Administrativos`),
  INDEX `id_arena_idx` (`id_arena` ASC),
  INDEX `id_administrativo_idx` (`id_administrativo` ASC),
  CONSTRAINT `id_arena`
    FOREIGN KEY (`id_arena`)
    REFERENCES `mydb`.`Arenas` (`id_arena`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_administrativo`
    FOREIGN KEY (`id_administrativo`)
    REFERENCES `mydb`.`Cuerpos_Administrativos` (`id_cuerpo_administrativo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cuerpos_Seguridad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cuerpos_Seguridad` (
  `id_cuerpo_seguridad` INT NOT NULL,
  `id_distrito` INT NULL,
  PRIMARY KEY (`id_cuerpo_seguridad`),
  INDEX `id_distrito_idx` (`id_distrito` ASC),
  CONSTRAINT `id_Cuerpo_seguridad`
    FOREIGN KEY (`id_cuerpo_seguridad`)
    REFERENCES `mydb`.`Cuerpos_Paz` (`id_cuerpo_paz`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_distrito`
    FOREIGN KEY (`id_distrito`)
    REFERENCES `mydb`.`Distritos` (`id_distrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Torturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Torturas` (
  `id_tortura` INT NOT NULL,
  `lista_herramientas` VARCHAR(45) NULL,
  `instrucciones` VARCHAR(45) NULL,
  `lista_venenos` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tortura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Seguridad_Torturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Seguridad_Torturas` (
  `id_seguridad_tortura` INT NOT NULL,
  `id_cuerpo_seguridad` INT NULL,
  `id_tortura` INT NULL,
  `fecha` DATE NULL,
  `motivo` VARCHAR(45) NULL,
  `nombre_rehen` VARCHAR(45) NULL,
  `nombre_solicitante` VARCHAR(45) NULL,
  PRIMARY KEY (`id_seguridad_tortura`),
  INDEX `id_cuerpo_seguridad_idx` (`id_cuerpo_seguridad` ASC),
  INDEX `id_tortura_idx` (`id_tortura` ASC),
  CONSTRAINT `id_cuerpo_seguridad`
    FOREIGN KEY (`id_cuerpo_seguridad`)
    REFERENCES `mydb`.`Cuerpos_Seguridad` (`id_cuerpo_seguridad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_tortura`
    FOREIGN KEY (`id_tortura`)
    REFERENCES `mydb`.`Torturas` (`id_tortura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mentores_Luchas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Mentores_Luchas` (
  `id_mentores_luchas` INT NOT NULL,
  `id_festejo` INT NULL,
  `id_mentor` INT NULL,
  PRIMARY KEY (`id_mentores_luchas`),
  INDEX `id_mentor_idx` (`id_mentor` ASC),
  INDEX `id_festejo_idx` (`id_festejo` ASC),
  CONSTRAINT `id_mentor`
    FOREIGN KEY (`id_mentor`)
    REFERENCES `mydb`.`Mentores` (`id_mentor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_festejo`
    FOREIGN KEY (`id_festejo`)
    REFERENCES `mydb`.`Luchas_Vasalajes` (`id_festejo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mutos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Mutos` (
  `id_muto` INT NOT NULL,
  `fecha_creacion` DATE NULL,
  `nombre` VARCHAR(45) NULL,
  `lista_animales` VARCHAR(45) NULL,
  `instrucciones` VARCHAR(45) NULL,
  `descripciones` VARCHAR(45) NULL,
  PRIMARY KEY (`id_muto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Administrativos_Mutos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Administrativos_Mutos` (
  `id_administrativo_muto` INT NOT NULL,
  `id_administrativo` INT NULL,
  `id_muto` INT NULL,
  PRIMARY KEY (`id_administrativo_muto`),
  INDEX `id_administrativo_idx` (`id_administrativo` ASC),
  INDEX `id_muto_idx` (`id_muto` ASC),
  CONSTRAINT `id_administrativo`
    FOREIGN KEY (`id_administrativo`)
    REFERENCES `mydb`.`Cuerpos_Administrativos` (`id_cuerpo_administrativo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_muto`
    FOREIGN KEY (`id_muto`)
    REFERENCES `mydb`.`Mutos` (`id_muto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
