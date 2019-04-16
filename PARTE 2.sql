/*----parte 2----*/
/* consulta basica 1 */
select dni,nombre,concat(apellido1," ",apellido2) as apellidos,telefono from persona;

/* consulta basica 2*/
Select p.dni, p.nombre, concat(p.apellido1," ",p.apellido2) apellidos 
from persona p 
WHERE p.telefono is null;

/* consulta basica 3*/
select dni,persona.nombre,concat(apellido1," ",apellido2) as apellidos,direccion,ubigeo.nombre as distrito
from persona
join ubigeo on persona.id_ubigeo=ubigeo.ID_UBIGEO

/* consulta basica 4*/

SELECT A.NOMBRE,C.DNI,C.NOMBRE,C.APELLIDO1,C.APELLIDO2 
FROM ASIGNATURA AS A INNER JOIN PROFESOR AS B ON A.ID_PROFESOR = B.ID_PROFESOR 
INNER JOIN PERSONA AS C ON B.ID_PROFESOR = C.ID;

/* consulta basica 5*/
Select a.tipo, a.nombre, pe.dni, concat(pe.nombre," ",pe.apellido1," ",pe.apellido2) Profesor from profesor p 
inner join persona pe on pe.id=p.id_profesor
inner join asignatura a on a.id_profesor=pe.id 
where a.tipo ='obligatoria'