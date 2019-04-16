/*Parte 2*/
/* consulta basica 1 */
select dni,nombre,concat(apellido1," ",apellido2) as apellidos,telefono from persona;
/* consulta basica 3*/
select dni,persona.nombre,concat(apellido1," ",apellido2) as apellidos,direccion,ubigeo.nombre as distrito
from persona
join ubigeo on persona.id_ubigeo=ubigeo.ID_UBIGEO