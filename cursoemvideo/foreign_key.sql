desc gafanhotos;

ALTER TABLE GAFANHOTOS
ADD COLUMN cursopreferido int;

ALTER TABLE GAFANHOTOS
ADD FOREIGN KEY (cursopreferido) 
REFERENCES CURSOS (idcurso);

SELECT * FROM GAFANHOTOS;
SELECT * FROM CURSOS;

DELETE FROM CURSOS 
WHERE IDCURSO = '28';

UPDATE GAFANHOTOS
SET CURSOPREFERIDO = '6' WHERE id = '1';