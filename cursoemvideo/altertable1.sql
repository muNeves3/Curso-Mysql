desc gafanhotos;
-- mostrar o conteúdo da tabela

alter table pessoas
rename to gafanhotos;

alter table pessoas
add column profissao varchar(10) after nome;
-- adicionando uma coluna

alter table pessoas
modify column profissao varchar(20) not null default '';
-- modificando uma coluna(so pode modificar o tipo primitivo e adicionar constraints

alter table pessoas
change column profissao prof varchar(20); 
-- modificando o nome da coluna(se quiser deixar como estava, tenho q adicionar as constraints) 

alter table pessoas
drop column profissao;

select * from pessoas;



