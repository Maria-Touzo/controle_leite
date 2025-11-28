CREATE DATABASE bd_controlleite;

USE bd_controlleite;

CREATE TABLE turmas (
 turma VARCHAR(30) NOT NULL,
 padrinho VARCHAR(50)
);

ALTER TABLE turmas ADD CONSTRAINT PK_turmas PRIMARY KEY (turma);


CREATE TABLE inventario (
 id_entrega INT NOT NULL,
 quantidade INT,
 data_entrega DATE,
 turma VARCHAR(30)
);

ALTER TABLE inventario ADD CONSTRAINT PK_inventario PRIMARY KEY (id_entrega);


ALTER TABLE inventario ADD CONSTRAINT FK_inventario_0 FOREIGN KEY (turma) REFERENCES turmas (turma);


