-- se não existir, eu crio
create table if not exists cursos(
	nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano year default '2016'
) default charset=utf8;

alter table cursos
add column idcurso int first;
-- adicionando a coluna

alter table cursos
add primary key (idcurso);
-- configurando a coluna adicionada como primary key (devem ser feitos em comandos separados)

describe cursos;