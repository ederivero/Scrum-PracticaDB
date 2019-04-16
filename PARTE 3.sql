/*-----parte 3-----*/ 
/* consulta intermedia 1*/
select distinct concat(anyo_inicio,"-",anyo_fin) as periodo,id_asignatura,c.nombre as materia,per.nombre as nombre_de_profesor 
from alumno_se_matricula_asignatura as a
left join periodo_academico as b on a.id_periodo_academico=b.id
left join asignatura as c on a.id_asignatura=c.id
left join profesor as p on c.id_profesor=p.id_profesor
left join persona as per on per.id = p.id_profesor
where a.id_periodo_academico=1

/* consulta intermedia 2 */
SELECT A.NOMBRE 
FROM ASIGNATURA AS A INNER JOIN alumno_se_matricula_asignatura AS B ON A.id = B.id_asignatura
INNER JOIN periodo_academico as C ON B.id_periodo_academico != C.id where  anyo_inicio=2015 and anyo_fin =2016;

/* consulta intermedia 3*/
Select al.id_periodo_academico, count(*) Matriculados
from alumno_se_matricula_asignatura al 
group by al.id_periodo_academico;

/* consulta intermedia 4*/
SELECT COUNT(*) 'TOTAL ALUMNOS REGISTRADOS EN EL PERIODO 2016 2017' FROM alumno_se_matricula_asignatura as a INNER JOIN periodo_academico AS B ON A.ID_PERIODO_ACADEMICO = B.ID 
WHERE ANYO_INICIO = 2016 AND ANYO_FIN=2017;