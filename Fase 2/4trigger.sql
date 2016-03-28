-- Ruben Maza 21.534.450 C1
-- 4 Script Triggers

--5.1 Cuando un tributo se convierte en el ganador de un festejo de los juegos del hambre debe
--    ser registrado automáticamente en el sistema como un mentor.

CREATE OR REPLACE TRIGGER Lucha_Juegos."TributoMentor" AFTER
INSERT ON FOR EACH ROW WHEN (new.festejo >0 ) 
BEGIN 
insert into Mentores (id_mentor, id_festejo_ganado, nombre,sexo,sinopsis) 
values 
(idmentor,idfestejo,nombre1,sexo1,sinopsis1);
END;