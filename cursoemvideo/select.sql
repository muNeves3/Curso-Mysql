DESCRIBE cursos;

select nome, carga, ano from cursos
order by ano, nome desc;

select nome, descricao, carga, totaulas, ano from cursos
where totaulas between 20 and 30 
order by  totaulas, ano;

select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

select idcurso, nome, ano from cursos
where ano IN ('2014', '2016', '2018', 2020)
order by ano, nome;

select nome, carga, totaulas from cursos 
where carga > 35 and totaulas < 30
order by nome;

select nome, carga, totaulas from cursos 
where carga > 35 or totaulas < 30
order by nome;



