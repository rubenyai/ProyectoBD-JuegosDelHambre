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
  forma VARCHAR2(45),
  descripcion VARCHAR2(45),
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

--Restriccion 3.1 y 3.2 Atributos ID mayor a 0
alter table Patrocinadores add constraint ceropatroc check (id_patrocinador > 0);
alter table Representantes add constraint cerorepr check (id_representante > 0);
alter table Cuerpos_Paz add constraint cerocpopaz check (id_cuerpo_paz > 0);
alter table Cuerpos_Ejecutivos add constraint cerocpoeje check (id_cuerpo_ejecutivo > 0);
alter table Presidentes add constraint ceropres check (id_presidente > 0);
alter table Distritos add constraint cerodista check (id_distrito > 0 and id_distrito < 13);
alter table Distritos add constraint cerodistb check (id_representante > 0);
alter table Distritos add constraint cerodistc check (id_presidente > 0);
alter table Vigilantes_Jefes add constraint cerovigjef check (id_vigilante_jefe > 0);
alter table Arenas add constraint ceroarena check (id_arena > 0);
alter table Arenas add constraint ceroarenb check (id_vigilante_jefe > 0);
alter table Lucha_Juegos add constraint ceroluchajuea check (id_festejo > 0);
alter table Lucha_Juegos add constraint ceroluchajueb check (id_arena > 0);
alter table Lucha_Juegos add constraint ceroluchajuec check (id_tributo_ganador > 0);
alter table Lucha_Juegos add constraint ceroluchajued check (id_tributo_vencedor > 0);
alter table Tributos add constraint cerotribua check (id_tributo > 0);
alter table Tributos add constraint cerotribub check (id_distrito > 0 and id_distrito < 13);
alter table Tributos add constraint cerotribuc check (id_festejo > 0);
alter table Obsequios add constraint ceroobsqa check (id_obsequio > 0);
alter table Obsequios add constraint ceroobsqb check (id_patrocinador > 0);
alter table Obsequios add constraint ceroobsqc check (id_tributo > 0);
alter table Escuadrones add constraint ceroescuad check (id_escuadron > 0);
alter table Escuadrones_Distritos add constraint ceroescuaddista check (id_escuadron_distrito > 0);
alter table Escuadrones_Distritos add constraint ceroescuaddistb check (id_escuadron > 0);
alter table Escuadrones_Distritos add constraint ceroescuaddistc check (id_distrito > 0 and id_distrito < 13);
alter table Ataques add constraint ceroataques check (id_ataque > 0);
alter table Escuadrones_Ataques add constraint ceroescuadataa check (id_escuadron_ataque > 0);
alter table Escuadrones_Ataques add constraint ceroescuadatab check (id_escuadron > 0);
alter table Escuadrones_Ataques add constraint ceroescuadatac check (id_ataque > 0);
alter table Estilistas add constraint ceroestilista check (id_estilista > 0);
alter table Mentores add constraint ceromentor check (id_mentor > 0);
alter table Ayudas_Estilos add constraint ceroayesta check (id_ayuda_estilo > 0);
alter table Ayudas_Estilos add constraint ceroayestb check (id_tributo > 0);
alter table Ayudas_Estilos add constraint ceroayestc check (id_estilista > 0);
alter table Ayudas_Estilos add constraint ceroayestd check (id_mentor > 0);
alter table Trajes add constraint cerotrajea check (id_traje > 0);
alter table Trajes add constraint cerotrajeb check (id_estilista > 0);
alter table Luchas_Vasalajes add constraint ceroluchvasa check (id_festejo > 0);
alter table Luchas_Vasalajes add constraint ceroluchvasb check (id_arena > 0);
alter table Luchas_Vasalajes add constraint ceroluchvasc check (id_tributo_vencedor > 0);
alter table Luchas_Vasalajes add constraint ceroluchvasd check (id_tributo_ganador > 0);
alter table Guias add constraint ceroguiaa check (id_guia > 0);
alter table Guias add constraint ceroguiab check (id_mentor > 0);
alter table Guias add constraint ceroguiac check (id_tributo > 0);
alter table Cuerpos_Administrativos add constraint cerocueradmina check (id_cuerpo_administrativo > 0);
alter table Arenas_Administrativos add constraint ceroarenadmina check (id_arena_administrativo > 0);
alter table Arenas_Administrativos add constraint ceroarenadminb check (id_arena > 0);
alter table Arenas_Administrativos add constraint ceroarenadminc check (id_cuerpo_administrativo > 0);
alter table Cuerpos_Seguridad add constraint cerocuersega check (id_cuerpo_seguridad > 0);
alter table Cuerpos_Seguridad add constraint cerocuersegb check (id_distrito > 0 and id_distrito < 13);
alter table Torturas add constraint cerotort check (id_tortura > 0);
alter table Seguridad_Torturas add constraint cegtoraa check (id_seguridad_tortura > 0);
alter table Seguridad_Torturas add constraint cegtorbb check (id_cuerpo_seguridad > 0);
alter table Seguridad_Torturas add constraint cegtorcc check (id_tortura > 0);
alter table Mentores_Luchas add constraint ceromentluca check (id_mentores_luchas > 0);
alter table Mentores_Luchas add constraint ceromentlucb check (id_festejo > 0);
alter table Mentores_Luchas add constraint ceromentlucc check (id_mentor > 0);
alter table Mutos add constraint ceromuto check (id_muto > 0);
alter table Administrativos_Mutos add constraint ceroadminmutoa check (id_muto > 0);
alter table Administrativos_Mutos add constraint ceroadminmutob check (id_cuerpo_administrativo > 0);
alter table Administrativos_Mutos add constraint ceroadminmutoc check (id_administrativo_muto > 0);

--3.3 Sexo solo F y M
alter table Patrocinadores add constraint sexo_patr check (sexo = 'F' or sexo='M');
alter table Representantes add constraint sexo_rep check (sexo = 'F' or sexo='M');
alter table Tributos add constraint sexo_trib check (sexo = 'F' or sexo='M');
alter table Estilistas add constraint sexo_est check (sexo = 'F' or sexo='M');
alter table Mentores add constraint sexo_ment check (sexo = 'F' or sexo='M');

--3.4 Nombres no nulos
alter table Patrocinadores add constraint Patr_NONULL check (nombre is not NULL);
alter table Representantes add constraint repr_NONULL check (nombre is not NULL);
alter table Tributos add constraint triba_NONULL check (nombre is not NULL);
alter table Tributos add constraint tribb_NONULL check (sobrenombre is not NULL);
alter table Estilistas add constraint est_NONULL check (nombre_artistico is not NULL);
alter table Mentores add constraint ment_NONULL check (nombre is not NULL);
alter table Mutos add constraint mut_NONULL check (nombre is not NULL);
