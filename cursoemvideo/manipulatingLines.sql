insert into cursos values
 ('1','HTML4','Curso de HTML5', '40','37','2014'),
    ('2','Algoritmos','Lógica de Programação','20','15','2014'),
    ('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
    ('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
    ('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
    ('6','MySQL','Banco de Dados MySQL','30','15','2016'),
    ('7','Word','Curso completo de Word','40','30','2016'),
    ('8','Sapateado','Danças Rítmicas','40','30','2018'),
    ('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
    ('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');
-- iserting data

update cursos
set nome = 'HTML5'	
where idcurso = 1;
-- changing just 1 columngafanhotos of 1 row    

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';    
-- changing 2 columns of 1 row    

update cursos
set nome = 'Java', carga = '40' , ano = '2015'
where idcurso = '5'
limit 1;  
-- changing 3 columns of 1 row and putting a line limit   

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 2;
-- changing two rows of two lines

delete from cursos
where idcurso = '8';   
-- just 1 line

delete from cursos
where ano = '2018'
limit 2;
-- changing one row of two lines

truncate table cursos;
-- deleting everything from the table 'cursos'

select * from cursos;
-- selecting everuthing from table 'cursos'
    