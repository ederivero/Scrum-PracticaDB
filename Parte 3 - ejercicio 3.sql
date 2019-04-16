/*---- Parte 3 - ejercicio 3*/
Select al.id_periodo_academico, count(*) Matriculados
from alumno_se_matricula_asignatura al 
group by al.id_periodo_academico;