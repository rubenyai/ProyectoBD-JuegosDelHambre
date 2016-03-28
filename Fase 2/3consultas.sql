-- Ruben Maza 21.534.450 C1
-- 3 Script Consultas

-- 4.1 Tributos cuya habilidad sea “ARco Y fleCHA” y pertenecen a distritos donde al menos 3 
--     cuerpos de paz establezcan orden, y dichos tributos no fueron voluntarios.
/*
select nombre,habilidad,seleccion from (select Tributos.nombre nombre, Tributos.habilidad habilidad, Tributos.forma_seleccion seleccion, count (Cuerpos_Seguridad.id_cuerpo_seguridad) cont 
from Cuerpos_Seguridad inner join Distritos on Cuerpos_Seguridad.id_distrito=Distritos.id_distrito inner join Tributos on Tributos.id_distrito=Distritos.id_distrito where 
Tributos.habilidad='ARco Y fleCHA' and Tributos.forma_seleccion='No Voluntario' group by Tributos.nombre, Tributos.habilidad, Tributos.forma_seleccion) where cont>=3; 
*/

-- 4.2 Listar el vigilante en jefe que ha construido la mayor cantidad de arenas holográficas y que
--     haya reemplazado a otro vigilante, imprima ese vigilante y el vigilante al que reemplazó.
--LOGICA: Reemplazo es el ID de quien este vigilante reemplazo

--Este da el id de a quien reemplazo
/*
select nombre_actual,aquienreemplazo from (select Cuerpos_Paz.nombre nombre_actual,Vigilantes_Jefes.id_reemplazo aquienreemplazo, count (Arenas.id_vigilante_jefe) arenas_construidas from Arenas 
inner join Vigilantes_Jefes on  Arenas.id_vigilante_jefe=Vigilantes_Jefes.id_vigilante_jefe inner join Cuerpos_Ejecutivos on Vigilantes_Jefes.id_vigilante_jefe=Cuerpos_Ejecutivos.id_cuerpo_ejecutivo inner join 
Cuerpos_Paz on Cuerpos_Ejecutivos.id_cuerpo_ejecutivo=Cuerpos_Paz.id_cuerpo_paz where rownum < 2 and Vigilantes_Jefes.id_reemplazo>0 and Vigilantes_Jefes.id_vigilante_jefe=Arenas.id_vigilante_jefe
group by Cuerpos_Paz.nombre,Vigilantes_Jefes.id_reemplazo order by arenas_construidas) group by nombre_actual,aquienreemplazo order by MAX(arenas_construidas) desc;
*/
--Este da el nombre de la persona con el id
/*
select nombre_actual,Cuerpos_Paz.nombre as "quien reemplazo a:" from (select Cuerpos_Paz.nombre nombre_actual,Vigilantes_Jefes.id_reemplazo aquienreemplazo, count (Arenas.id_vigilante_jefe) arenas_construidas from Arenas 
inner join Vigilantes_Jefes on  Arenas.id_vigilante_jefe=Vigilantes_Jefes.id_vigilante_jefe inner join Cuerpos_Ejecutivos on Vigilantes_Jefes.id_vigilante_jefe=Cuerpos_Ejecutivos.id_cuerpo_ejecutivo inner join 
Cuerpos_Paz on Cuerpos_Ejecutivos.id_cuerpo_ejecutivo=Cuerpos_Paz.id_cuerpo_paz where rownum < 2 and Vigilantes_Jefes.id_reemplazo>0 and Vigilantes_Jefes.id_vigilante_jefe=Arenas.id_vigilante_jefe
group by Cuerpos_Paz.nombre,Vigilantes_Jefes.id_reemplazo order by arenas_construidas) inner join Cuerpos_Paz on aquienreemplazo=Cuerpos_Paz.id_cuerpo_paz where aquienreemplazo=Cuerpos_Paz.id_cuerpo_paz
group by nombre_actual,aquienreemplazo,Cuerpos_Paz.nombre order by MAX(arenas_construidas) desc;
*/

-- 4.3 Imprima los primero 4 distritos con más ganadores, se desea el código y tipo de
--     distrito, seguido de la cantidad de ganadores ordenado descendentemente.
/*
select codigodistrito,tipodistrito,cantidadganadores from (select Distritos.id_distrito codigodistrito,Distritos.tipo tipodistrito, count(Lucha_Juegos.id_tributo_ganador) cantidadganadores from Lucha_Juegos inner join
Tributos on Lucha_Juegos.id_tributo_ganador=Tributos.id_tributo inner join Distritos on Tributos.id_distrito=Distritos.id_distrito group by Distritos.id_distrito,Distritos.tipo order by cantidadganadores desc
) where rownum < 5;
*/

-- 4.4 ¿Cuál es el tributo más alto por distrito? Liste el número y descripción del distrito, seguido
--      del nombre y sobrenombre del tributo en una sola columna separados por una coma, la
--      columna se debe llamar “Tributo”

select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=1 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=1)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=2 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=2)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=3 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=3)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=4 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=4)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=5 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=5)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=6 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=6)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=7 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=7)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=8 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=8)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=9 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=9)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=10 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=10)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=11 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=11)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=12 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=12)
union all
select Tributos.id_distrito,Distritos.descripcion,(Tributos.nombre || ',' || Tributos.sobrenombre) as "Tributo" from Tributos inner join Distritos on Tributos.id_distrito=Distritos.id_distrito
where Tributos.id_distrito=13 and Tributos.altura >= all(select Tributos.altura from Tributos where Tributos.id_distrito=13)
;

-- 4.5 ¿Cuál fue el número de festejo en que se presentó la mayor cantidad de capital por parte
--     de los patrocinadores? Muestre el número de festejo y la cantidad total de dinero
--     disponible en ese festejo. No considere el Vasallaje de los Veinticinco.
/*
select festejo as "Numero de Festejo",dinero as "Dinero Disponible Total" from (select Lucha_Juegos.id_festejo festejo, sum (Patrocinadores.dinero_disponible) dinero from Patrocinadores inner join Obsequios on 
Patrocinadores.id_patrocinador=Obsequios.id_patrocinador inner join Tributos on Obsequios.id_tributo=Tributos.id_tributo inner join Lucha_Juegos on Tributos.id_festejo=Lucha_Juegos.id_festejo where Lucha_Juegos.id_festejo!=25
group by Lucha_Juegos.id_festejo order by dinero desc) where rownum < 2;
*/




