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
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (20,'Pedra','M');
--Seguridad
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (11,'Angela','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (12,'Sandra','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (13,'Kirby','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (14,'Dominique','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (15,'Amy','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (16,'Pedro','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (17,'Ajax','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (18,'Holi','F');
INSERT INTO Cuerpos_Paz (id_cuerpo_paz,nombre,sexo) VALUES (19,'Ke Ase','F');

--Cuerpos_Ejecutivos
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (6);
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (7);
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (8);
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (9);
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (10);
INSERT INTO Cuerpos_Ejecutivos (id_cuerpo_ejecutivo) VALUES (20);

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
--LOGICA: Reemplazo es el ID de quien este vigilante reemplazo
--8 reemplazo a 9, 9 reemplazo a 10
INSERT INTO Vigilantes_Jefes (id_vigilante_jefe,id_reemplazo) VALUES (8,9);
INSERT INTO Vigilantes_Jefes (id_vigilante_jefe,id_reemplazo) VALUES (9,10);
INSERT INTO Vigilantes_Jefes (id_vigilante_jefe,id_reemplazo) VALUES (10,20);
INSERT INTO Vigilantes_Jefes (id_vigilante_jefe,id_reemplazo) VALUES (20,8);

--Arenas
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (1,8,'Cuadrada','Commodo Tincidunt Associates','Dolor Sit Amet Institute','10-NOV-2011');
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (2,8,'Cuadrada','Scelerisque Dui Inc.','Fusce Diam LLC','10-NOV-2011');
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (3,9,'Cuadrada','Congue Consulting','Tempor Augue Ac LLC','10-NOV-2011');
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (4,10,'Cuadrada','Commodo At Libero Incorporated','Sed Associates','10-NOV-2011');
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (5,10,'Cuadrada','Quisque Consulting','Nec Urna Foundation','10-NOV-2011');
INSERT INTO Arenas (id_arena,id_vigilante_jefe,forma,descripcion,tipo,fecha_creacion) VALUES (6,8,'Cuadrada','holi','Nec','10-NOV-2011');


--Lucha_Juegos
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (1,1,1,1,'Sollicitudin Orci Sem Foundation');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (2,2,2,2,'Mus Donec Dignissim Corp.');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (3,3,3,3,'Neque Nullam Nisl PC');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (4,4,4,4,'Eu Corporation');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (5,4,5,5,'MiInc.');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (6,4,6,6,'Mi 333Inc.');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (7,4,7,7,'Mi 222Inc.');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (8,4,8,8,'Mi 111Inc.');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (9,4,9,9,'jason');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (10,4,9,9,'jason.');
INSERT INTO Lucha_Juegos (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor,resumen) VALUES (11,4,9,9,'sadfasdf.');

--Tributos
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (1,1,1,'Kadeem','Vazquez','Convallis PC',60,100,'ARco Y fleCHA','No Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (2,1,2,'Jason','Beasley','Egestas A Scelerisque LLC',61,101,'ARco Y fleCHA','No Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (3,1,3,'Ahmed','Raymond','Lobortis Augue Scelerisque Foundation',62,102,'ARco Y fleCHA','Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (4,1,4,'Fitzgerald','Knox','Nullam Enim PC',63,103,'Esgrima','Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (5,2,5,'Hasad','Parks','Sed LLP',64,1094,'Esgrima','Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (6,2,6,'Holi','Paasdass','Sed LLP',64,1004,'Esgrima','Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (7,2,7,'Ke ase','Pas','Sed LLP',64,1024,'Esgrima','Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (8,3,8,'fasdfsadfa','asfds','Sed LLP',64,104,'Esgrima','Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (9,3,8,'hey','asfds','Sed LLP',624,13004,'Esgrima','Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (10,4,8,'aja','asfds','Sed LLP',614,1804,'Esgrima','Voluntario');
INSERT INTO Tributos (id_tributo,id_distrito,id_festejo,nombre,sobrenombre,descripcion,peso,altura,habilidad,forma_seleccion) VALUES (11,5,8,'si','asfds','Sed LLP',664,1094,'Esgrima','Voluntario');

--Obsequios
INSERT INTO Obsequios (id_obsequio,id_patrocinador,id_tributo,descripcion) VALUES (1,1,1,'Scelerisque Neque Incorporated');
INSERT INTO Obsequios (id_obsequio,id_patrocinador,id_tributo,descripcion) VALUES (2,2,2,'Donec Vitae PC');
INSERT INTO Obsequios (id_obsequio,id_patrocinador,id_tributo,descripcion) VALUES (3,3,3,'Pede Et Risus Corp.');
INSERT INTO Obsequios (id_obsequio,id_patrocinador,id_tributo,descripcion) VALUES (4,4,4,'Cum Institute');
INSERT INTO Obsequios (id_obsequio,id_patrocinador,id_tributo,descripcion) VALUES (5,5,5,'Vitae Semper Egestas Incorporated');

--Escuadrones
INSERT INTO Escuadrones (id_escuadron,tipo,descripcion) VALUES (1,'Elvis','220-3410 Nunc Av.');
INSERT INTO Escuadrones (id_escuadron,tipo,descripcion) VALUES (2,'Wallace','Ap #589-6493 Donec Avenue');
INSERT INTO Escuadrones (id_escuadron,tipo,descripcion) VALUES (3,'Gray','Ap #319-2333 Vestibulum Street');
INSERT INTO Escuadrones (id_escuadron,tipo,descripcion) VALUES (4,'Garrett','Ap #931-6291 Lorem, Avenue');
INSERT INTO Escuadrones (id_escuadron,tipo,descripcion) VALUES (5,'Blake','426-4932 Lacinia Street');

--Escuadrones_Distritos
INSERT INTO Escuadrones_Distritos (id_escuadron_distrito,id_distrito,id_escuadron) VALUES (1,1,1);
INSERT INTO Escuadrones_Distritos (id_escuadron_distrito,id_distrito,id_escuadron) VALUES (2,2,2);
INSERT INTO Escuadrones_Distritos (id_escuadron_distrito,id_distrito,id_escuadron) VALUES (3,3,3);
INSERT INTO Escuadrones_Distritos (id_escuadron_distrito,id_distrito,id_escuadron) VALUES (4,4,4);
INSERT INTO Escuadrones_Distritos (id_escuadron_distrito,id_distrito,id_escuadron) VALUES (5,5,5);

--Ataques
INSERT INTO Ataques (id_ataque,descripcion,fecha) VALUES (1,'Ap #108-9623 Ut, Av.','07-NOV-16');
INSERT INTO Ataques (id_ataque,descripcion,fecha) VALUES (2,'731 Orci Ave','01-NOV-15');
INSERT INTO Ataques (id_ataque,descripcion,fecha) VALUES (3,'1137 Lorem St.','09-NOV-16');
INSERT INTO Ataques (id_ataque,descripcion,fecha) VALUES (4,'P.O. Box 673, 9625 Phasellus Avenue','08-NOV-16');
INSERT INTO Ataques (id_ataque,descripcion,fecha) VALUES (5,'P.O. Box 395, 2973 Ac Road','17-NOV-16');

--Escuadrones_ataques
INSERT INTO Escuadrones_Ataques (id_escuadron_ataque,id_escuadron,id_ataque) VALUES (1,1,1);
INSERT INTO Escuadrones_Ataques (id_escuadron_ataque,id_escuadron,id_ataque) VALUES (2,2,2);
INSERT INTO Escuadrones_Ataques (id_escuadron_ataque,id_escuadron,id_ataque) VALUES (3,3,3);
INSERT INTO Escuadrones_Ataques (id_escuadron_ataque,id_escuadron,id_ataque) VALUES (4,4,4);
INSERT INTO Escuadrones_Ataques (id_escuadron_ataque,id_escuadron,id_ataque) VALUES (5,5,5);

--Estilistas
INSERT INTO Estilistas (id_estilista,nombre_artistico,sexo) VALUES (1,'Moses','M');
INSERT INTO Estilistas (id_estilista,nombre_artistico,sexo) VALUES (2,'Jacob','M');
INSERT INTO Estilistas (id_estilista,nombre_artistico,sexo) VALUES (3,'Berk','M');
INSERT INTO Estilistas (id_estilista,nombre_artistico,sexo) VALUES (4,'Garrett','M');
INSERT INTO Estilistas (id_estilista,nombre_artistico,sexo) VALUES (5,'Baxter','M');

--Mentores
INSERT INTO Mentores (id_mentor,id_festejo_ganado,nombre,sexo,sinopsis_victoria) VALUES (1,1,'Wilma','F','Obertshausen');
INSERT INTO Mentores (id_mentor,id_festejo_ganado,nombre,sexo,sinopsis_victoria) VALUES (2,2,'Noel','F','Pontedera');
INSERT INTO Mentores (id_mentor,id_festejo_ganado,nombre,sexo,sinopsis_victoria) VALUES (3,3,'Jessica','F','Santa Inês');
INSERT INTO Mentores (id_mentor,id_festejo_ganado,nombre,sexo,sinopsis_victoria) VALUES (4,4,'Laura','F','Lago Verde');
INSERT INTO Mentores (id_mentor,id_festejo_ganado,nombre,sexo,sinopsis_victoria) VALUES (5,5,'Signe','F','Torres del Paine');

--Ayudas_Estilos
INSERT INTO Ayudas_Estilos (id_ayuda_estilo,id_tributo,id_mentor,id_estilista) VALUES (1,1,1,1);
INSERT INTO Ayudas_Estilos (id_ayuda_estilo,id_tributo,id_mentor,id_estilista) VALUES (2,2,2,2);
INSERT INTO Ayudas_Estilos (id_ayuda_estilo,id_tributo,id_mentor,id_estilista) VALUES (3,3,3,3);
INSERT INTO Ayudas_Estilos (id_ayuda_estilo,id_tributo,id_mentor,id_estilista) VALUES (4,4,4,4);
INSERT INTO Ayudas_Estilos (id_ayuda_estilo,id_tributo,id_mentor,id_estilista) VALUES (5,5,5,5);

--Trajes
INSERT INTO Trajes (id_traje,id_estilista,fecha,material,medidas,descripcion,efectos_especiales) VALUES (1,1,'10-NOV-16','RJ','34.61784, 48.0497','P.O. Box 572, 2540 Sem St.','Jaipur');
INSERT INTO Trajes (id_traje,id_estilista,fecha,material,medidas,descripcion,efectos_especiales) VALUES (2,2,'20-NOV-16','Vienna','0.52291, -172.86304','3046 Ultricies Av.','Vienna');
INSERT INTO Trajes (id_traje,id_estilista,fecha,material,medidas,descripcion,efectos_especiales) VALUES (3,3,'18-NOV-16','Vienna','75.69011, 146.74138','342-1309 Ligula. Ave','Vienna');
INSERT INTO Trajes (id_traje,id_estilista,fecha,material,medidas,descripcion,efectos_especiales) VALUES (4,4,'20-NOV-16','Vienna','73.69987, 32.80219','P.O. Box 200, 4676 Faucibus Av.','Vienna');
INSERT INTO Trajes (id_traje,id_estilista,fecha,material,medidas,descripcion,efectos_especiales) VALUES (5,5,'15-NOV-16','Idaho','-50.93296, 65.68392','9364 Sodales. Road','Meridian');

--Luchas_Vasalaje
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (1,1,1,1);
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (2,2,2,2);
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (3,3,3,3);
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (4,4,4,4);
INSERT INTO Luchas_Vasalajes (id_festejo,id_arena,id_tributo_ganador,id_tributo_vencedor) VALUES (5,5,5,5);

--Guias
INSERT INTO Guias (id_guia,id_mentor,id_tributo) VALUES (1,1,1);
INSERT INTO Guias (id_guia,id_mentor,id_tributo) VALUES (2,2,2);
INSERT INTO Guias (id_guia,id_mentor,id_tributo) VALUES (3,3,3);
INSERT INTO Guias (id_guia,id_mentor,id_tributo) VALUES (4,4,4);
INSERT INTO Guias (id_guia,id_mentor,id_tributo) VALUES (5,5,5);

--Cuerpos_Administrativos
INSERT INTO Cuerpos_Administrativos (id_cuerpo_administrativo) VALUES (1);
INSERT INTO Cuerpos_Administrativos (id_cuerpo_administrativo) VALUES (2);
INSERT INTO Cuerpos_Administrativos (id_cuerpo_administrativo) VALUES (3);
INSERT INTO Cuerpos_Administrativos (id_cuerpo_administrativo) VALUES (4);
INSERT INTO Cuerpos_Administrativos (id_cuerpo_administrativo) VALUES (5);

--Arenas_Administrativos
INSERT INTO Arenas_Administrativos (id_arena_administrativo,id_arena,id_cuerpo_administrativo) VALUES (1,1,1);
INSERT INTO Arenas_Administrativos (id_arena_administrativo,id_arena,id_cuerpo_administrativo) VALUES (2,2,2);
INSERT INTO Arenas_Administrativos (id_arena_administrativo,id_arena,id_cuerpo_administrativo) VALUES (3,3,3);
INSERT INTO Arenas_Administrativos (id_arena_administrativo,id_arena,id_cuerpo_administrativo) VALUES (4,4,4);
INSERT INTO Arenas_Administrativos (id_arena_administrativo,id_arena,id_cuerpo_administrativo) VALUES (5,5,5);

--Cuerpos_Seguridad
INSERT INTO Cuerpos_Seguridad (id_cuerpo_seguridad,id_distrito) VALUES (11,1);
INSERT INTO Cuerpos_Seguridad (id_cuerpo_seguridad,id_distrito) VALUES (12,1);
INSERT INTO Cuerpos_Seguridad (id_cuerpo_seguridad,id_distrito) VALUES (13,1);
INSERT INTO Cuerpos_Seguridad (id_cuerpo_seguridad,id_distrito) VALUES (14,2);
INSERT INTO Cuerpos_Seguridad (id_cuerpo_seguridad,id_distrito) VALUES (15,2);
INSERT INTO Cuerpos_Seguridad (id_cuerpo_seguridad,id_distrito) VALUES (16,2);
INSERT INTO Cuerpos_Seguridad (id_cuerpo_seguridad,id_distrito) VALUES (17,3);
INSERT INTO Cuerpos_Seguridad (id_cuerpo_seguridad,id_distrito) VALUES (18,3);
INSERT INTO Cuerpos_Seguridad (id_cuerpo_seguridad,id_distrito) VALUES (19,3);

--Torturas
INSERT INTO Torturas (id_tortura,lista_herramientas,instrucciones,lista_venenos,descripcion) VALUES (1,'Donec LLC','Charters Towers','Queensland','6620 Ipsum. Avenue');
INSERT INTO Torturas (id_tortura,lista_herramientas,instrucciones,lista_venenos,descripcion) VALUES (2,'At Velit Pellentesque Corporation','Elbl?g','WM','Ap #713-6108 Ligula Av.');
INSERT INTO Torturas (id_tortura,lista_herramientas,instrucciones,lista_venenos,descripcion) VALUES (3,'Felis Foundation','Dublin','L','958-9505 Pede. St.');
INSERT INTO Torturas (id_tortura,lista_herramientas,instrucciones,lista_venenos,descripcion) VALUES (4,'Non Industries','Lampa','RM','Ap #859-7853 Tempus Avenue');
INSERT INTO Torturas (id_tortura,lista_herramientas,instrucciones,lista_venenos,descripcion) VALUES (5,'Ipsum Primis Consulting','Galway','C','Ap #200-690 Est. Av.');

--Seguridad_Torturas
INSERT INTO Seguridad_Torturas (id_seguridad_tortura,id_cuerpo_seguridad,id_tortura,fecha,motivo,nombre_rehen,nombre_solicitante) VALUES (1,11,1,'07-NOV-16','P.O. Box 163, 2425 Ut Av.','Kendall','Jerry');
INSERT INTO Seguridad_Torturas (id_seguridad_tortura,id_cuerpo_seguridad,id_tortura,fecha,motivo,nombre_rehen,nombre_solicitante) VALUES (2,12,2,'19-NOV-16','Ap #451-8212 In Rd.','Melissa','Thomas');
INSERT INTO Seguridad_Torturas (id_seguridad_tortura,id_cuerpo_seguridad,id_tortura,fecha,motivo,nombre_rehen,nombre_solicitante) VALUES (3,13,3,'10-NOV-17','P.O. Box 151, 6473 Ullamcorper. Rd.','Madeline','Zeph');
INSERT INTO Seguridad_Torturas (id_seguridad_tortura,id_cuerpo_seguridad,id_tortura,fecha,motivo,nombre_rehen,nombre_solicitante) VALUES (4,14,4,'30-NOV-15','Ap #565-1454 Augue Rd.','Mira','Ivan');
INSERT INTO Seguridad_Torturas (id_seguridad_tortura,id_cuerpo_seguridad,id_tortura,fecha,motivo,nombre_rehen,nombre_solicitante) VALUES (5,15,5,'13-NOV-15','870-6264 Tristique Ave','Tallulah','Ryder');

--Mentores_Luchas
INSERT INTO Mentores_Luchas (id_mentores_luchas,id_festejo,id_mentor) VALUES (1,1,1);
INSERT INTO Mentores_Luchas (id_mentores_luchas,id_festejo,id_mentor) VALUES (2,2,2);
INSERT INTO Mentores_Luchas (id_mentores_luchas,id_festejo,id_mentor) VALUES (3,3,3);
INSERT INTO Mentores_Luchas (id_mentores_luchas,id_festejo,id_mentor) VALUES (4,4,4);
INSERT INTO Mentores_Luchas (id_mentores_luchas,id_festejo,id_mentor) VALUES (5,5,5);

--Mutos
INSERT INTO Mutos (id_muto,fecha_creacion,nombre,lista_animales,instrucciones,descripciones) VALUES (1,'26-NOV-16','Brendan Berg','6199 Sagittis Ave','Macon','Macaulay S. Rivera');
INSERT INTO Mutos (id_muto,fecha_creacion,nombre,lista_animales,instrucciones,descripciones) VALUES (2,'22-NOV-16','Carson Abbott','Ap #530-4267 Dolor. St.','Hamilton','Jakeem M. Ryan');
INSERT INTO Mutos (id_muto,fecha_creacion,nombre,lista_animales,instrucciones,descripciones) VALUES (3,'01-NOV-15','Ira Pruitt','483-8796 Dignissim Ave','Agra','Christen G. Fry');
INSERT INTO Mutos (id_muto,fecha_creacion,nombre,lista_animales,instrucciones,descripciones) VALUES (4,'06-NOV-15','Jerry Pierce','353-5434 Arcu. Av.','Rodgau','Savannah T. Fuller');
INSERT INTO Mutos (id_muto,fecha_creacion,nombre,lista_animales,instrucciones,descripciones) VALUES (5,'12-NOV-16','Murphy Kline','Ap #479-1569 A Avenue','Thorembais-Saint-Trond','Tanek S. Patterson');

--Administrativos_Mutos
INSERT INTO Administrativos_Mutos (id_administrativo_muto,id_cuerpo_administrativo,id_muto) VALUES (1,1,1);
INSERT INTO Administrativos_Mutos (id_administrativo_muto,id_cuerpo_administrativo,id_muto) VALUES (2,2,2);
INSERT INTO Administrativos_Mutos (id_administrativo_muto,id_cuerpo_administrativo,id_muto) VALUES (3,3,3);
INSERT INTO Administrativos_Mutos (id_administrativo_muto,id_cuerpo_administrativo,id_muto) VALUES (4,4,4);
INSERT INTO Administrativos_Mutos (id_administrativo_muto,id_cuerpo_administrativo,id_muto) VALUES (5,5,5);
