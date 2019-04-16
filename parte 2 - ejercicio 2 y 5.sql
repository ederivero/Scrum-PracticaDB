/* ----- Parte 2 - ejercicio 2*/
Select p.dni, p.nombre, concat(p.apellido1," ",p.apellido2) apellidos 
from persona p 
WHERE p.telefono is null;

/* ----- Parte 2 - ejercicio 5*/
Select a.tipo, a.nombre, pe.dni, concat(pe.nombre," ",pe.apellido1," ",pe.apellido2) Profesor from profesor p 
inner join persona pe on pe.id=p.id_profesor
inner join asignatura a on a.id_profesor=pe.id 
where a.tipo ='obligatoria'
