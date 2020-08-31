-- Creating database
CREATE DATABASE Cadastro;
DEFAULT CHARACTER SET uft8;
DEFAULT COLLATE utf8_general_ci;

--Creating table
CREATE TABLE pessoas(
    id int NOT NULL auto_increment,
    nome varchar(30) NOT NULL,
    nascimento date,
    sexo enum('M', 'F'),
    peso decimal(5, 2),
    altura decimal(3, 2),
    nacionalidade varchar(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT charset = utf8;

--Inserting values on the table
INSERT INTO pessoas VALUES
(DEFAULT ,'Ana', '1975-12-22', 'F', '52.2', '1.45', 'EUA'),
(DEFAULT, 'Pedro', '2003-10-15', 'M', '62.5', '1.75', default),
(DEFAULT, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

-- querying data
SELECT * FROM pessoas;

--Another way to insert values
-- INSERT INTO pessoas
-- (id, nome, nascimento, sexo, peso, altura, nacionalidade)
-- VALUES
-- (DEFAULT ,'Murilo', '2003-12-22', 'M', '62', '1.80', 'Brasil');