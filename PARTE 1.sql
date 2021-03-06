/*-----primera parte-----*/
/* ejercicio 04*/
CREATE TABLE UBIGEO 
SELECT ROW_NUMBER() OVER(ORDER BY NOMBRE)AS ID_UBIGEO ,CODDPTO,CODPROV,CODDIST,NOMBRE 
FROM UBIGEO_RENIEC order by NOMBRE;

ALTER TABLE UBIGEO MODIFY COLUMN ID_UBIGEO INT(11) AUTO_INCREMENT PRIMARY KEY;

/* ejercicio 05 */
SELECT * FROM universidad.persona;
alter table universidad.persona add edad int;
use universidad;
UPDATE persona
SET edad = (TIMESTAMPDIFF(YEAR,fecha_nacimiento,convert(now(),date)))
WHERE id = id

/* ejercicio 06 */
insert ubigeo(id_ubigeo,coddpto,codprov,coddist,nombre) values (2137,0,0,0,''),(2173,0,0,0,'');

ALTER TABLE PERSONA ADD CONSTRAINT FK_ID_UBIGEO FOREIGN KEY (ID_UBIGEO) REFERENCES UBIGEO(ID_UBIGEO);