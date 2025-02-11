CREATE TABLE PAIS(
    id_pais INTEGER PRIMARY KEY,
    nome VARCHAR2(255)
);
 
CREATE TABLE estado(
    id_estado INTEGER PRIMARY KEY,
    nome_estado VARCHAR2(30),
    id_pais INTEGER,
    CONSTRAINT FK_PAIS foreign key (id_pais) REFERENCES PAIS(id_pais)
);
 
CREATE TABLE cidade(
    id_cidade integer CONSTRAINT PK_CIDADE PRIMARY KEY ,
    nome_cidade VARCHAR2(100),
    id_estado NUMBER,
    CONSTRAINT FK_ESTADO foreign key (id_estado) REFERENCES estado(id_estado)
);
 
CREATE TABLE bairro(
    id_bairro integer primary key,
    nome_bairro VARCHAR2(30),
    id_cidade integer,
    CONSTRAINT FK_CIDADE foreign key (id_cidade) REFERENCES cidade(id_cidade)
);