-- *****USING LIKE*****
SELECT * FROM cursos
WHERE nome NOT LIKE '%a%';

SELECT * FROM cursos
WHERE nome LIKE 'PH%P';

SELECT * FROM cursos
WHERE nome LIKE 'PH%P%';

SELECT * FROM cursos
WHERE nome LIKE 'PH%P_';

SELECT * FROM CURSOS
WHERE NOME LIKE 'P__T%';

UPDATE cursos SET nome  = 'PÀOO'
WHERE idcurso = '9';

UPDATE cursos SET nome = 'Photoshop'
WHERE nome = 'Photoshop5'; -- OR idcurso = '3';

UPDATE CURSOS SET NOME = 'Photoshop5'
WHERE IDCURSO = '3';

INSERT INTO GAFANHOTOS VALUES
(DEFAULT, 'Silvana Albuquerque', 'Programador', '1999-05-22', 'F', '56', '1.50', 'Brasil');

SELECT * FROM gafanhotos
WHERE NOME LIKE '%SILVA%';

-- *****USING DISTINCT*****

SELECT DISTINCT CARGA FROM CURSOS;

SELECT DISTINCT NACIONALIDADE FROM GAFANHOTOS
order by nacionalidade;

select distinct carga from cursos
order by carga;

-- *****USING COUNT*****

SELECT COUNT(NOME) FROM CURSOS;

SELECT count(*) FROM CURSOS;

SELECT COUNT(*) FROM CURSOS WHERE CARGA > 40;

-- *****USING MAX*****

SELECT MAX(CARGA) FROM CURSOS;

SELECT NOME FROM GAFANHOTOS ORDER BY NOME DESC;

SELECT MAX(NOME) FROM GAFANHOTOS;

SELECT MAX(TOTAULAS) FROM CURSOS WHERE ANO = '2016';

-- *****USING MIN*****

SELECT NOME, MIN(TOTAULAS) FROM CURSOS WHERE ANO = '2016';

SELECT MIN(TOTAULAS) FROM CURSOS;

SELECT * FROM CURSOS ORDER BY TOTAULAS ASC;

-- *****USING SUM*****

SELECT SUM(TOTAULAS) FROM CURSOS WHERE ANO = '2016';

-- *****USING AVG*****
   
SELECT AVG(TOTAULAS) FROM CURSOS;

SELECT AVG(TOTAULAS) FROM CURSOS WHERE ANO = '2016';

-- *****USING GROUP*****

SELECT CARGA, COUNT(NOME) FROM CURSOS GROUP BY CARGA;

SELECT TOTAULAS, COUNT(*) FROM CURSOS 
GROUP BY TOTAULAS
ORDER BY TOTAULAS;

SELECT CARGA,COUNT(NOME) FROM CURSOS WHERE TOTAULAS = '30'
GROUP BY CARGA;

SELECT * FROM CURSOS WHERE TOTAULAS = '30';

-- *****USING HAVING*****

SELECT CARGA, COUNT(NOME) FROM CURSOS
GROUP BY CARGA
HAVING COUNT(NOME) > 3;

SELECT ANO, COUNT(*) FROM CURSOS
WHERE TOTAULAS > '30'
GROUP BY ANO
HAVING ANO > '2013'
ORDER BY COUNT(*) DESC;

SELECT AVG(CARGA) FROM CURSOS;

SELECT CARGA, COUNT(*) FROM CURSOS 
WHERE ANO > '2015'
GROUP BY CARGA
HAVING CARGA > (SELECT AVG(CARGA) FROM CURSOS);