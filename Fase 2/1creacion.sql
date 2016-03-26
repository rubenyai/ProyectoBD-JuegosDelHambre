-- Ruben Maza 21.534.450 C1
-- 1 Script Creacion de tablas

--------------------------------------------------------
--------------------------------------------------------
-- Creacion de tablas
--------------------------------------------------------
--------------------------------------------------------

-- -----------------------------------------------------
-- Tabla Patrocinadores
-- -----------------------------------------------------
CREATE TABLE Patrocinadores (
  id_patrocinador number primary key,
  nombre VARCHAR2(45),
  sexo VARCHAR2(45),
  dinero_disponible number
  );

-- -----------------------------------------------------
-- Tabla Representantes
-- -----------------------------------------------------
CREATE TABLE Representantes (
  id_representante number primary key,
  nombre VARCHAR2(45),
  sexo VARCHAR2(45),
  descripcion VARCHAR(45)
);

-- -----------------------------------------------------
-- Tabla Cuerpos_Paz
-- -----------------------------------------------------
CREATE TABLE Cuerpos_Paz (
  id_cuerpo_paz number primary key,
  nombre VARCHAR2(45),
  sexo VARCHAR2(45)
);

-- -----------------------------------------------------
-- Tabla Cuerpos_Ejecutivos
-- -----------------------------------------------------
CREATE TABLE Cuerpos_Ejecutivos (
  id_cuerpo_ejecutivo number primary key
);

-- -----------------------------------------------------
-- Tabla Presidentes
-- -----------------------------------------------------
CREATE TABLE Presidentes (
  id_presidente number primary key
);

-- -----------------------------------------------------
-- Table `mydb`.`Distritos`
-- -----------------------------------------------------
CREATE TABLE Distritos (
  id_distrito number primary key,
  id_representante number,
  id_presidente number,
  tipo VARCHAR2(45),
  descripcion VARCHAR2(45)
);

-- -----------------------------------------------------
-- Tabla Vigilantes_Jefes
-- -----------------------------------------------------
CREATE TABLE Vigilantes_Jefes (
  id_vigilante_jefe number primary key,
  id_reemplazo number
);  

-- -----------------------------------------------------
-- Tabla Arenas
-- -----------------------------------------------------
CREATE TABLE Arenas (
  id_arena number primary key,
  id_vigilante_jefe number,
  forma VARCHAR2(45) NULL,
  descripcion VARCHAR2(45) NULL,
  tipo VARCHAR2(45),
  fecha_creacion DATE
);

-- -----------------------------------------------------
-- Tabla Lucha_Juegos
-- -----------------------------------------------------
CREATE TABLE Lucha_Juegos (
  id_festejo number primary key,
  id_arena number,
  id_tributo_ganador number,
  id_tributo_vencedor number,
  resumen VARCHAR2(45)
);

-- -----------------------------------------------------
-- Tabla Tributos
-- -----------------------------------------------------
CREATE TABLE Tributos (
  id_tributo number primary key,
  id_distrito number,
  id_festejo number,
  nombre VARCHAR2(45),
  sobrenombre VARCHAR2(45),
  descripcion VARCHAR2(45),
  peso VARCHAR2(45),
  altura VARCHAR2(45),
  sexo VARCHAR2(45),
  habilidad VARCHAR2(45),
  forma_seleccion VARCHAR2(45)
);

-- -----------------------------------------------------
-- Tabla Obsequios
-- -----------------------------------------------------
CREATE TABLE Obsequios (
  id_obsequio number primary key,
  id_patrocinador number,
  id_tributo number,
  descripcion VARCHAR2(45)
);

-- -----------------------------------------------------
-- Tabla Escuadrones
-- -----------------------------------------------------
CREATE TABLE Escuadrones (
  id_escuadron number primary key,
  tipo VARCHAR2(45),
  descripcion VARCHAR2(45)
);

-- -----------------------------------------------------
-- Tabla Escuadrones_Distritos
-- -----------------------------------------------------
CREATE TABLE Escuadrones_Distritos (
  id_escuadron_distrito number primary key,
  id_distrito number,
  id_escuadron number
);

-- -----------------------------------------------------
-- Table Ataques
-- -----------------------------------------------------
CREATE TABLE Ataques (
  id_ataque number primary key,
  descripcion VARCHAR2(45),
  fecha DATE
);

CREATE TABLE Escuadrones_Ataques (
  id_escuadron_ataque number primary key,
  id_escuadron number,
  id_ataque number
);

-- -----------------------------------------------------
-- Tabla Estilistas
-- -----------------------------------------------------
CREATE TABLE Estilistas (
  id_estilista number primary key,
  nombre_artistico VARCHAR2(45),
  estilo VARCHAR2(45),
  sexo VARCHAR2(45)
);

-- -----------------------------------------------------
-- Tabla Mentores
-- -----------------------------------------------------
CREATE TABLE Mentores (
  id_mentor number primary key,
  id_festejo_ganado number,
  nombre VARCHAR2(45),
  sexo VARCHAR2(45),
  sinopsis_victoria VARCHAR2(45)
  );
  
-- -----------------------------------------------------
-- Tabla Ayudas_Estilos
-- -----------------------------------------------------
CREATE TABLE Ayudas_Estilos (
  id_ayuda_estilo number primary key,
  id_tributo number,
  id_mentor number,
  id_estilista number
);

-- -----------------------------------------------------
-- Tabla Trajes
-- -----------------------------------------------------
CREATE TABLE Trajes (
  id_traje number primary key,
  id_estilista number,
  fecha DATE,
  material VARCHAR2(45),
  medidas VARCHAR2(45),
  descripcion VARCHAR2(45),
  efectos_especiales VARCHAR2(45)
);

-- -----------------------------------------------------
-- Tabla Luchas_Vasalajes
-- -----------------------------------------------------
CREATE TABLE Luchas_Vasalajes (
  id_festejo number primary key,
  id_arena number,
  id_tributo_ganador number,
  id_tributo_vencedor number
);

-- -----------------------------------------------------
-- Tabla Guias
-- -----------------------------------------------------
CREATE TABLE Guias (
  id_guia number primary key,
  id_mentor number,
  id_tributo number
);

-- -----------------------------------------------------
-- Tabla Cuerpos_Administrativos
-- -----------------------------------------------------
CREATE TABLE Cuerpos_Administrativos (
  id_cuerpo_administrativo number primary key
);

-- -----------------------------------------------------
-- Tabla Arenas_Administrativos
-- -----------------------------------------------------
CREATE TABLE Arenas_Administrativos (
  id_arena_administrativo number primary key,
  id_arena number,
  id_administrativo number
);
  
-- -----------------------------------------------------
-- Tabla Cuerpos_Seguridad
-- -----------------------------------------------------
CREATE TABLE Cuerpos_Seguridad (
  id_cuerpo_seguridad number primary key,
  id_distrito number
);
  
-- -----------------------------------------------------
-- Tabla Torturas
-- -----------------------------------------------------
CREATE TABLE Torturas (
  id_tortura number primary key,
  lista_herramientas VARCHAR2(45),
  instrucciones VARCHAR2(45),
  lista_venenos VARCHAR2(45),
  descripcion VARCHAR2(45)
);
  
-- -----------------------------------------------------
-- Tabla Seguridad_Torturas
-- -----------------------------------------------------
CREATE TABLE Seguridad_Torturas (
  id_seguridad_tortura number primary key,
  id_cuerpo_seguridad number,
  id_tortura number,
  fecha DATE,
  motivo VARCHAR2(45),
  nombre_rehen VARCHAR2(45),
  nombre_solicitante VARCHAR2(45)
);


-- -----------------------------------------------------
-- Tabla Mentores_Luchas
-- -----------------------------------------------------
CREATE TABLE Mentores_Luchas (
  id_mentores_luchas number primary key,
  id_festejo number,
  id_mentor number
);

-- -----------------------------------------------------
-- Tabla Mutos
-- -----------------------------------------------------
CREATE TABLE Mutos (
  id_muto number primary key,
  fecha_creacion DATE,
  nombre VARCHAR2(45),
  lista_animales VARCHAR2(45),
  instrucciones VARCHAR2(45),
  descripciones VARCHAR2(45)
);
  
  
-- -----------------------------------------------------
-- Tabla Administrativos_Mutos
-- -----------------------------------------------------
CREATE TABLE Administrativos_Mutos (
  id_administrativo_muto number primary key,
  id_administrativo number,
  id_muto number
);
  
--------------------------------------------------------
--------------------------------------------------------
-- Claves foraneas
--------------------------------------------------------
--------------------------------------------------------



--------------------------------------------------------
--------------------------------------------------------
-- Restricciones
--------------------------------------------------------
--------------------------------------------------------


--------------------------------------------------------
--------------------------------------------------------
-- Drop tables de prueba
--------------------------------------------------------
--------------------------------------------------------
  
drop table Patrocinadores cascade constraints;
drop table Representantes cascade constraints;
drop table Cuerpos_Paz cascade constraints;
drop table Cuerpos_Ejecutivos cascade constraints;
drop table Presidentes cascade constraints;
drop table Distritos cascade constraints;
drop table Vigilantes_Jefes cascade constraints;
drop table Arenas cascade constraints;
drop table Lucha_Juegos cascade constraints;
drop table Tributos cascade constraints;
drop table Obsequios cascade constraints;
drop table Escuadrones cascade constraints;
drop table Escuadrones_Distritos cascade constraints;
drop table Ataques cascade constraints;
drop table Escuadrones_Ataques cascade constraints;
drop table Estilistas cascade constraints;
drop table Mentores cascade constraints;
drop table Ayudas_Estilos cascade constraints;
drop table Trajes cascade constraints;
drop table Luchas_Vasalajes cascade constraints;
drop table Guias cascade constraints;
drop table Cuerpos_Administrativos cascade constraints;
drop table Arenas_Administrativos cascade constraints;
drop table Cuerpos_Seguridad cascade constraints;
drop table Torturas cascade constraints;
drop table Seguridad_Torturas cascade constraints;
drop table Mentores_Luchas cascade constraints;
drop table Mutos cascade constraints;
drop table Administrativos_Mutos cascade constraints;