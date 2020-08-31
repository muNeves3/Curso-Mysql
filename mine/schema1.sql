CREATE DATABASE IF NOT EXISTS userSchema
DEFAULT character SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS users(
    id int auto_increment,
    nome varchar(30) not null,
    nascimento date not null,
    email varchar(35) not null unique,
    senha varchar(20),
    PRIMARY KEY (id)
) DEFAULT charset = utf8;

INSERT INTO users values
    ('google.com', default, 'Murilo de Souza Neves', '2003-12-22', 'murilodesouzaneves@gmail.com', '1234'),
    ('youtube.com', default,'Claudinho da Silva', '1975-03-30', 'claudinho.contato@hotmail.com', '324152'),
    ('facebook.com', default,'Teste', '2020-08-22', 'emailteste@gmail.com', '0987654321');

ALTER TABLE users
ADD COLUMN profile_img varchar(50) first;

ALTER TABLE users
modify column email varchar(50);

ALTER TABLE users
change column nome nome_completo varchar(40);

DROP TABLE users;

UPDATE users
SET nome = 'ABC'
WHERE id = 3;

update users
set email = 'just testing'
where nome_completo = 'teste'
limit 1;

truncate users;

DESC users;

SELECT * FROM users;
