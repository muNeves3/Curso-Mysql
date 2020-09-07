-- INNER JOIN COM VARIAS TABELAS -> RELACIONAMENTO MUITOS PRA MUITOS
USE cadastro;

CREATE TABLE gafanhoto_assiste_curso (
	id int NOT NULL AUTO_INCREMENT,
    data date,
    idgafanhoto int,
    idcurso int,
    PRIMARY KEY (id),
    FOREIGN KEY(idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY(idcurso) REFERENCES cursos(idcurso)
    
) DEFAULT CHARSET = utf8;

INSERT INTO gafanhoto_assiste_curso VALUES 
(DEFAULT, '2014-03-01', '1', '2');

SELECT * FROM gafanhoto_assiste_curso;

SELECT g.nome, a.idcurso, c.nome FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
JOIN cursos c 
ON a.idcurso = c.idcurso
ORDER BY g.nome;

select * from cursos