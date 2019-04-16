SELECT A.NOMBRE 
FROM ASIGNATURA AS A INNER JOIN alumno_se_matricula_asignatura AS B ON A.id = B.id_asignatura
INNER JOIN periodo_academico as C ON B.id_periodo_academico != C.id where  anyo_inicio=2015 and anyo_fin =2016;
 
 
 
 
 
 