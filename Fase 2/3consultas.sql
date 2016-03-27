-- Ruben Maza 21.534.450 C1
-- 3 Script Consultas

-- 4.1 Tributos cuya habilidad sea �ARco Y fleCHA� y pertenecen a distritos donde al menos 3 
--     cuerpos de paz establezcan orden, y dichos tributos no fueron voluntarios.
/*
select nombre,habilidad,seleccion from (select Tributos.nombre nombre, Tributos.habilidad habilidad, Tributos.forma_seleccion seleccion, count (Cuerpos_Seguridad.id_cuerpo_seguridad) cont 
from Cuerpos_Seguridad inner join Distritos on Cuerpos_Seguridad.id_distrito=Distritos.id_distrito inner join Tributos on Tributos.id_distrito=Distritos.id_distrito where 
Tributos.habilidad='ARco Y fleCHA' and Tributos.forma_seleccion='No Voluntario' group by Tributos.nombre, Tributos.habilidad, Tributos.forma_seleccion) where cont>=3; 
*/

-- 4.2 Listar el vigilante en jefe que ha construido la mayor cantidad de arenas hologr�ficas y que
--     haya reemplazado a otro vigilante, imprima ese vigilante y el vigilante al que reemplaz�.
select nombre_actual, max(arenas_construidas) from (select Cuerpos_Paz.nombre nombre_actual, count (Vigilantes_Jefes.id_vigilante_jefe) arenas_construidas from Arenas inner join Vigilantes_Jefes on 
Arenas.id_vigilante_jefe=Vigilantes_Jefes.id_vigilante_jefe inner join Cuerpos_Ejecutivos on Vigilantes_Jefes.id_vigilante_jefe=Cuerpos_Ejecutivos.id_cuerpo_ejecutivo inner join Cuerpos_Paz on 
Cuerpos_Ejecutivos.id_cuerpo_ejecutivo=Cuerpos_Paz.id_cuerpo_paz group by Cuerpos_Paz.nombre) T;



-- 4.3 Imprima los primero 4 distritos con m�s ganadores ganadores, se desea el c�digo y tipo de
--     distrito, seguido de la cantidad de ganadores ordenado descendentemente.



-- 4.4 �Cu�l es el tributo m�s alto por distrito? Liste el n�mero y descripci�n del distrito, seguido
--      del nombre y sobrenombre del tributo en una sola columna separados por una coma, la
--      columna se debe llamar �Tributo�
--select numero,descripcion,altura,


-- 4.5 �Cu�l fue el n�mero de festejo en que se present� la mayor cantidad de capital por parte
--     de los patrocinadores? Muestre el n�mero de festejo y la cantidad total de dinero
--     disponible en ese festejo. No considere el Vasallaje de los Veinticinco.

