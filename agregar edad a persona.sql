SELECT * FROM universidad.persona;
alter table universidad.persona add edad int;
use universidad;
UPDATE persona
SET edad = (TIMESTAMPDIFF(YEAR,fecha_nacimiento,convert(now(),date)))
WHERE id = id


