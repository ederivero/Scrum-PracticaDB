/*parte 3 ejercicio 1*/
select distinct concat(anyo_inicio,"-",anyo_fin) as periodo,id_asignatura,c.nombre as materia,per.nombre as nombre_de_profesor 
from alumno_se_matricula_asignatura as a
left join periodo_academico as b on a.id_periodo_academico=b.id
left join asignatura as c on a.id_asignatura=c.id
left join profesor as p on c.id_profesor=p.id_profesor
left join persona as per on per.id = p.id_profesor
where a.id_periodo_academico=1