-- Ruben Maza 21.534.450 C1
-- 1 Script Creacion de tablas


--------------------------------------------------------
-- Creacion de tablas
--------------------------------------------------------


-- 
-- Tabla Patrocinadores
-- 
CREATE TABLE Patrocinadores (
  id_patrocinador number primary key,
  nombre VARCHAR2(45),
  sexo VARCHAR2(45),
  dinero_disponible number
  );

-- 
-- Tabla Representantes
-- 
CREATE TABLE Representantes (
  id_representante number primary key,
  nombre VARCHAR2(45),
  sexo VARCHAR2(45),
  descripcion VARCHAR(45)
);

-- 
-- Tabla Cuerpos_Paz
-- 
CREATE TABLE Cuerpos_Paz (
  id_cuerpo_paz number primary key,
  nombre VARCHAR2(45),
  sexo VARCHAR2(45)
);

-- 
-- Tabla Cuerpos_Ejecutivos
-- 
CREATE TABLE Cuerpos_Ejecutivos (
  id_cuerpo_ejecutivo number primary key
);

-- 
-- Tabla Presidentes
-- 
CREATE TABLE Presidentes (
  id_presidente number primary key
);

-- 
-- Tabla Distritos
-- 
CREATE TABLE Distritos (
  id_distrito number primary key,
  id_representante number,
  id_presidente number,
  tipo VARCHAR2(45),
  descripcion VARCHAR2(45)
);

-- 
-- Tabla Vigilantes_Jefes
-- 
CREATE TABLE Vigilantes_Jefes (
  id_vigilante_jefe number primary key,
  id_reemplazo number
);  

-- 
-- Tabla Arenas
-- 
CREATE TABLE Arenas (
  id_arena number primary key,
  id_vigilante_jefe number,
  forma VARCHAR2(45) NULL,
  descripcion VARCHAR2(45) NULL,
  tipo VARCHAR2(45),
  fecha_creacion DATE
);

-- 
-- Tabla Lucha_Juegos
-- 
CREATE TABLE Lucha_Juegos (
  id_festejo number primary key,
  id_arena number,
  id_tributo_ganador number,
  id_tributo_vencedor number,
  resumen VARCHAR2(45)
);

-- 
-- Tabla Tributos
-- 
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

-- 
-- Tabla Obsequios
-- 
CREATE TABLE Obsequios (
  id_obsequio number primary key,
  id_patrocinador number,
  id_tributo number,
  descripcion VARCHAR2(45)
);

-- 
-- Tabla Escuadrones
-- 
CREATE TABLE Escuadrones (
  id_escuadron number primary key,
  tipo VARCHAR2(45),
  descripcion VARCHAR2(45)
);

-- 
-- Tabla Escuadrones_Distritos
-- 
CREATE TABLE Escuadrones_Distritos (
  id_escuadron_distrito number primary key,
  id_distrito number,
  id_escuadron number
);

-- 
-- Tabla Ataques
-- 
CREATE TABLE Ataques (
  id_ataque number primary key,
  descripcion VARCHAR2(45),
  fecha DATE
);

--
-- Tabla Escuadrones_ataques
--

CREATE TABLE Escuadrones_Ataques (
  id_escuadron_ataque number primary key,
  id_escuadron number,
  id_ataque number
);

-- 
-- Tabla Estilistas
-- 
CREATE TABLE Estilistas (
  id_estilista number primary key,
  nombre_artistico VARCHAR2(45),
  estilo VARCHAR2(45),
  sexo VARCHAR2(45)
);

-- 
-- Tabla Mentores
-- 
CREATE TABLE Mentores (
  id_mentor number primary key,
  id_festejo_ganado number,
  nombre VARCHAR2(45),
  sexo VARCHAR2(45),
  sinopsis_victoria VARCHAR2(45)
  );
  
-- 
-- Tabla Ayudas_Estilos
-- 
CREATE TABLE Ayudas_Estilos (
  id_ayuda_estilo number primary key,
  id_tributo number,
  id_mentor number,
  id_estilista number
);

-- 
-- Tabla Trajes
-- 
CREATE TABLE Trajes (
  id_traje number primary key,
  id_estilista number,
  fecha DATE,
  material VARCHAR2(45),
  medidas VARCHAR2(45),
  descripcion VARCHAR2(45),
  efectos_especiales VARCHAR2(45)
);

-- 
-- Tabla Luchas_Vasalajes
-- 
CREATE TABLE Luchas_Vasalajes (
  id_festejo number primary key,
  id_arena number,
  id_tributo_ganador number,
  id_tributo_vencedor number
);

-- 
-- Tabla Guias
-- 
CREATE TABLE Guias (
  id_guia number primary key,
  id_mentor number,
  id_tributo number
);

-- 
-- Tabla Cuerpos_Administrativos
-- 
CREATE TABLE Cuerpos_Administrativos (
  id_cuerpo_administrativo number primary key
);

-- 
-- Tabla Arenas_Administrativos
-- 
CREATE TABLE Arenas_Administrativos (
  id_arena_administrativo number primary key,
  id_arena number,
  id_cuerpo_administrativo number
);
  
-- 
-- Tabla Cuerpos_Seguridad
-- 
CREATE TABLE Cuerpos_Seguridad (
  id_cuerpo_seguridad number primary key,
  id_distrito number
);
  
-- 
-- Tabla Torturas
-- 
CREATE TABLE Torturas (
  id_tortura number primary key,
  lista_herramientas VARCHAR2(45),
  instrucciones VARCHAR2(45),
  lista_venenos VARCHAR2(45),
  descripcion VARCHAR2(45)
);
  
-- 
-- Tabla Seguridad_Torturas
-- 
CREATE TABLE Seguridad_Torturas (
  id_seguridad_tortura number primary key,
  id_cuerpo_seguridad number,
  id_tortura number,
  fecha DATE,
  motivo VARCHAR2(45),
  nombre_rehen VARCHAR2(45),
  nombre_solicitante VARCHAR2(45)
);

--
-- Tabla Mentores_Luchas
--
CREATE TABLE Mentores_Luchas (
  id_mentores_luchas number primary key,
  id_festejo number,
  id_mentor number
);

--
-- Tabla Mutos
--
CREATE TABLE Mutos (
  id_muto number primary key,
  fecha_creacion DATE,
  nombre VARCHAR2(45),
  lista_animales VARCHAR2(45),
  instrucciones VARCHAR2(45),
  descripciones VARCHAR2(45)
);
  
--
-- Tabla Administrativos_Mutos
--
CREATE TABLE Administrativos_Mutos (
  id_administrativo_muto number primary key,
  id_cuerpo_administrativo number,
  id_muto number
);
  
  
--------------------------------------------------------
-- Claves foraneas
--------------------------------------------------------

--
-- Tabla Cuerpos_Ejecutivos
--
alter table Cuerpos_Ejecutivos add constraint FK_CuerpoEje_CuerpoPaz foreign key (id_cuerpo_ejecutivo) 
references Cuerpos_Paz (id_cuerpo_paz); 

--
-- Tabla Presidentes
--
alter table Presidentes add constraint FK_Presid_CuerpoEjec foreign key (id_presidente) 
references Cuerpos_Ejecutivos (id_cuerpo_ejecutivo);

--
--Tabla Distritos
--
alter table Distritos add constraint FK_Dist_Represen foreign key (id_representante) 
references Representantes (id_representante);

alter table Distritos add constraint FK_Dist_preside foreign key (id_presidente) 
references Presidentes (id_presidente);

--
--Tabla Vigilantes_Jefes
--
alter table Vigilantes_Jefes add constraint FK_vigjef_ejec foreign key (id_vigilante_jefe) 
references Cuerpos_Ejecutivos (id_cuerpo_ejecutivo);

--
--Tabla Arenas
--
alter table Arenas add constraint FK_Are_vigi foreign key (id_vigilante_jefe) 
references Vigilantes_Jefes (id_vigilante_jefe);

--
--Tabla Lucha_Juegos
--
alter table Lucha_Juegos add constraint FK_Lucha_arena foreign key (id_arena) 
references Arenas (id_arena);

--
--Tabla Tributos
--
alter table Tributos add constraint FK_trib_fest foreign key (id_festejo) 
references Lucha_Juegos (id_festejo);

alter table Tributos add constraint FK_trib_dist foreign key (id_distrito) 
references Distritos (id_distrito);

--
--Tabla Obsequios
--
alter table Obsequios add constraint FK_obs_patro foreign key (id_patrocinador) 
references Patrocinadores (id_patrocinador);

alter table Obsequios add constraint FK_obs_trib foreign key (id_tributo) 
references Tributos (id_tributo);

--
--Tabla Escuadrones_Distritos
--
alter table Escuadrones_Distritos add constraint FK_escdit_escua foreign key (id_escuadron) 
references Escuadrones (id_escuadron);

alter table Escuadrones_Distritos add constraint FK_escdit_dist foreign key (id_distrito) 
references Distritos (id_distrito);

--
--Escuadrones Ataques
--
alter table Escuadrones_Ataques add constraint FK_escatq_escu foreign key (id_escuadron) 
references Escuadrones (id_escuadron);

alter table Escuadrones_Ataques add constraint FK_escatq_ataq foreign key (id_ataque) 
references Ataques (id_ataque);

--
--Ayudas_Estilos
--
alter table Ayudas_Estilos add constraint FK_ayest_trib foreign key (id_tributo) 
references Tributos (id_tributo);

alter table Ayudas_Estilos add constraint FK_ayest_est foreign key (id_estilista) 
references Estilistas (id_estilista);

alter table Ayudas_Estilos add constraint FK_ayest_metn foreign key (id_mentor) 
references Mentores (id_mentor);

--
--Trajes
--
alter table Trajes add constraint FK_tra_est foreign key (id_estilista) 
references Estilistas (id_estilista);

--
--Luchas_vasalajes
--
alter table Luchas_Vasalajes add constraint FK_lucva_ foreign key (id_arena) 
references Arenas (id_arena);

--
--Guias
--
alter table Guias add constraint FK_guia_ment foreign key (id_mentor) 
references Mentores (id_mentor);

alter table Guias add constraint FK_guia_trib foreign key (id_tributo) 
references Tributos (id_tributo);

--
--Cuerpos_Administrativos
--
alter table Cuerpos_Administrativos add constraint FK_cadmin_cpaz foreign key (id_cuerpo_administrativo) 
references Cuerpos_Paz (id_cuerpo_paz);

--
--Arenas_Administrativos
--
alter table Arenas_Administrativos add constraint FK_areadm_are foreign key (id_arena) 
references Arenas (id_arena);

alter table Arenas_Administrativos add constraint FK_areadm_adm foreign key (id_cuerpo_administrativo) 
references Cuerpos_Administrativos (id_cuerpo_administrativo);

--
--Cuerpos_Seguridad
--
alter table Cuerpos_Seguridad add constraint FK_cposeg_cpaz foreign key (id_cuerpo_seguridad) 
references Cuerpos_Paz (id_cuerpo_paz);

alter table Cuerpos_Seguridad add constraint FK_cposeg_dist foreign key (id_distrito) 
references Distritos (id_distrito);

--
--Seguridad_Torturas
--
alter table Seguridad_Torturas add constraint FK_segtor_cposeg foreign key (id_cuerpo_seguridad) 
references Cuerpos_Seguridad (id_cuerpo_seguridad);

alter table Seguridad_Torturas add constraint FK_segtor_tor foreign key (id_tortura) 
references Torturas (id_tortura);

--
--Mentores_Luchas
--
alter table Mentores_Luchas add constraint FK_mentlu_ment foreign key (id_mentor) 
references Mentores (id_mentor);

alter table Mentores_Luchas add constraint FK_mentlu_luch foreign key (id_festejo) 
references Luchas_Vasalajes (id_festejo);

--
--Administrativos_Mutos
--
alter table Administrativos_Mutos add constraint FK_admut_cpoadmi foreign key (id_cuerpo_administrativo) 
references Cuerpos_Administrativos (id_cuerpo_administrativo);

alter table Administrativos_Mutos add constraint FK_admut_mut foreign key (id_muto) 
references Mutos (id_muto);


--------------------------------------------------------
-- Restricciones
--------------------------------------------------------




--------------------------------------------------------
-- Drop tables de prueba
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