-- ***************EXERCÍCIOS***************

-- 1 Lista com o nome de todas as gafonhotas

SELECT nome, sexo FROM gafanhotos where sexo = 'F' ORDER BY NOME DESC;

-- 2 Lista com os dados de todos que nasceram entre 1/1/2000 e 31/12/2015

SELECT NASCIMENTO FROM GAFANHOTOS ORDER BY NASCIMENTO;

SELECT * FROM GAFANHOTOS WHERE NASCIMENTO BETWEEN'2000-1-1' AND '2015-12-31' ORDER BY NASCIMENTO;

-- 3 Lista com o nome de todos os homens que trabalham como programadores

SELECT * FROM GAFANHOTOS;

SELECT NOME FROM GAFANHOTOS WHERE SEXO = 'M' AND PROFISSAO = 'Programador' ORDER BY NOME ;

-- 4 Lista com os dados de todas as mulheres que nasceram no Brasil e que tem seu nome inciando com a letra j

SELECT * FROM GAFANHOTOS WHERE SEXO = 'F' AND NACIONALIDADE = 'Brasil' AND NOME LIKE 'j%';

-- 5 Lista com o nome e nacionalidade de todos os homens que têm silva no nome, não nasceram no Brasil e pesam menos de 100kg

SELECT NOME, NACIONALIDADE FROM GAFANHOTOS WHERE SEXO = 'M' AND NOME LIKE '%SILVA%' AND NACIONALIDADE NOT LIKE 'Brasil' AND PESO < '100' ORDER BY NOME;

-- 6 Qual é a maior altura entre gafanhotos homens que moram no Brasil

SELECT MAX(ALTURA) FROM GAFANHOTOS WHERE NACIONALIDADE = 'Brasil' AND SEXO = 'M';

-- 7 Qual é a média de peso dos gafanhotos cadastrados?

SELECT AVG(PESO) FROM GAFANHOTOS;

-- 8 Qual é o menor peso entre as gafanhotas mulheres que nasceram fora do Brasil entre 1/1/1990 e 31/12/2000

SELECT MIN(PESO) FROM GAFANHOTOS WHERE SEXO = 'F' AND NACIONALIDADE <> 'BRASIL' AND NASCIMENTO BETWEEN '1990-1-1' AND '2000-12-31';

-- 9 Quantas gafanhotos mulheres tem mais de 1.90m de altura?

SELECT COUNT(ALTURA) FROM GAFANHOTOS WHERE SEXO = 'F' AND ALTURA > '1.90';

-- ***************EXERCÍCIOS 2***************

-- 1 Lista com as profissões dos gafanhotos e seus respectivos quantitativos

SELECT PROFISSAO FROM gafanhotos ORDER BY profissao;

SELECT PROFISSAO, COUNT(NOME) FROM GAFANHOTOS
GROUP BY PROFISSAO; 

-- 2 Quantos gafanhotos homens e quantas mulheres nasceram após 1/1/2005?

SELECT NASCIMENTO, SEXO FROM gafanhotos ORDER BY NASCIMENTO;

SELECT SEXO, COUNT(NOME) FROM GAFANHOTOS
WHERE NASCIMENTO > '2005-1-1'
GROUP BY SEXO;

-- 3 Lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá
-- Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade

SELECT NACIONALIDADE, COUNT(NOME) FROM GAFANHOTOS
WHERE NACIONALIDADE <> 'Brasil'
GROUP BY NACIONALIDADE
HAVING COUNT(NOME) > 3
ORDER BY NACIONALIDADE;

-- 4 Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam acima de 100kg
-- e que estão acima da media de altura de todos os cadastrados

SELECT AVG(ALTURA) FROM GAFANHOTOS;

SELECT ALTURA FROM GAFANHOTOS 
WHERE PESO > '100.00'
GROUP BY ALTURA
HAVING ALTURA > (SELECT AVG(ALTURA) FROM GAFANHOTOS);