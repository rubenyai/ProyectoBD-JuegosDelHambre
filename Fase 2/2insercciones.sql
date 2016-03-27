-- Ruben Maza 21.534.450 C1
-- 2 Script Insercciones

--Patrocinadores
INSERT INTO Patrocinadores (id_patrocinador,nombre,sexo,dinero_disponible) VALUES (1,'Maxwell','M',6720);
INSERT INTO Patrocinadores (id_patrocinador,nombre,sexo,dinero_disponible) VALUES (2,'Michael','M',3596);
INSERT INTO Patrocinadores (id_patrocinador,nombre,sexo,dinero_disponible) VALUES (3,'Emery','M',4384);
INSERT INTO Patrocinadores (id_patrocinador,nombre,sexo,dinero_disponible) VALUES (4,'Grady','M',6188);
INSERT INTO Patrocinadores (id_patrocinador,nombre,sexo,dinero_disponible) VALUES (5,'Yasir','M',16578);

--Representantes
INSERT INTO Representantes (id_representante,nombre,sexo,descripcion) VALUES (1,'Tasha','F','Gravida Incorporated');
INSERT INTO Representantes (id_representante,nombre,sexo,descripcion) VALUES (2,'Jolie','F','Diam Ltd');
INSERT INTO Representantes (id_representante,nombre,sexo,descripcion) VALUES (3,'Camille','F','Eget Industries');
INSERT INTO Representantes (id_representante,nombre,sexo,descripcion) VALUES (4,'Noelle','F','Class Ltd');
INSERT INTO Representantes (id_representante,nombre,sexo,descripcion) VALUES (5,'Aline','F','Auctor LLP');

--Cuerpos_Paz
--Info para las depedencias
--Administrativos
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (1,'Taylor','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (2,'Dora','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (3,'Cora','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (4,'Jane','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (5,'Shannon','F');
---Ejecutivos
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (6,'Blaine','M');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (7,'Sheila','M');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (8,'Astra','M');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (9,'Sophia','M');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (10,'Ila','M');
--Seguridad
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (11,'Angela','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (12,'Sandra','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (13,'Kirby','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (14,'Dominique','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (15,'Amy','F');

--Cuerpos_Ejecutivos
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (6);
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (7);
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (8);
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (9);
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (10);

--Presidentes
INSERT INTO Presidentes (id_presidente) VALUES (6);
INSERT INTO Presidentes (id_presidente) VALUES (7);

--Distritos
INSERT INTO Distritos (id_distrito,id_representante,id_presidente,tipo,descripcion) VALUES (1,1,6,'Aliquam Associates','P.O. Box 532, 9849 Gravida St.');
INSERT INTO Distritos (id_distrito,id_representante,id_presidente,tipo,descripcion) VALUES (2,2,6,'Mauris Institute','306-907 Proin Avenue');
INSERT INTO Distritos (id_distrito,id_representante,id_presidente,tipo,descripcion) VALUES (3,3,6,'Nunc Risus Limited','420-3168 Vivamus St.');
INSERT INTO Distritos (id_distrito,id_representante,id_presidente,tipo,descripcion) VALUES (4,4,6,'Dui Fusce Institute','P.O. Box 752, 2744 Eget Av.');
INSERT INTO Distritos (id_distrito,id_representante,id_presidente,tipo,descripcion) VALUES (5,5,7,'Dictum Eu Industries','P.O. Box 736, 5972 Vulputate, Av.');

--Vigilantes_Jefes
INSERT INTO Vigilantes_Jefes (id_vigilante_jefe,id_reemplazo) VALUES (8,9);
INSERT INTO Vigilantes_Jefes (id_vigilante_jefe,id_reemplazo) VALUES (9,10);
INSERT INTO Vigilantes_Jefes (id_vigilante_jefe,id_reemplazo) VALUES (10,0);

--Arenas
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (1,8,'Cuadrada','Commodo Tincidunt Associates','Dolor Sit Amet Institute','10-NOV-2011');
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (2,8,'Cuadrada','Scelerisque Dui Inc.','Fusce Diam LLC','10-NOV-2011');
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (3,9,'Cuadrada','Congue Consulting','Tempor Augue Ac LLC','10-NOV-2011');
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (4,10,'Cuadrada','Commodo At Libero Incorporated','Sed Associates','10-NOV-2011');
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (5,10,'Cuadrada','Quisque Consulting','Nec Urna Foundation','10-NOV-2011');

--Lucha_Juegos
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (1,1,1,1,'Sollicitudin Orci Sem Foundation');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (2,2,2,2,'Mus Donec Dignissim Corp.');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (3,3,3,3,'Neque Nullam Nisl PC');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (4,4,4,4,'Eu Corporation');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (5,5,5,5,'Mi Inc.');

--Tributos
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (1,1,1,'Kadeem','Vazquez','Convallis PC',60,100,'ARco Y fleCHA','Graham');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (2,2,2,'Jason','Beasley','Egestas A Scelerisque LLC',61,101,'ARco Y fleCHA','Rooney');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (3,3,3,'Ahmed','Raymond','Lobortis Augue Scelerisque Foundation',62,102,'ARco Y fleCHA','Raymond');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (4,4,4,'Fitzgerald','Knox','Nullam Enim PC',63,103,'Esgrima','Plato');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (5,5,5,'Hasad','Parks','Sed LLP',64,104,'Esgrima','Chadwick');


--Luchas_Vasalaje
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (1,1,1,1);
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (2,2,2,2);
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (3,3,3,3);
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (4,4,4,4);
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (5,5,5,5);




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
