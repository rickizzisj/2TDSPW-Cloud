CREATE TABLE T_CLIENTE;

CREATE TABLE T_PAIS (
    id_pais NUMBER,
    nome_pais VARCHAR2 (30)
    );

ALTER TABLE T_PAIS ADD PRIMARY KEY (id_pais);

CREATE TABLE T_ESTADO (
    id_estado NUMBER,
    nome_estado VARCHAR2(30),
    id_pais NUMBER
);
ALTER TABLE T_ESTADO ADD PRIMARY KEY(id_estado);

ALTER TABLE T_ESTADO 
    ADD CONSTRAINT fk_estado FOREIGN KEY (id_pais)
        REFERENCES pais (id_pais);
        
CREATE TABLE T_CIDADE(
    id_cidade NUMBER,
    nome_cidade VARCHAR2 (30),
    id_estado NUMBER
    );

ALTER TABLE T_CIDADE
    ADD CONSTRAINT fk_CIDADE FOREIGN KEY ( id_estado)
        REFERENCES T_CIDADE (id_cidade);

CREATE TABLE T_BAIRRO(
    id_bairro NUMBER,
    nome_bairro VARCHAR2(30),
    id_cidade NUMBER
    );

ALTER TABLE T_BAIRRO   
    ADD CONSTRAINT fk_bairro FOREIGN KEY (id_cidade)
        REFERENCES T_CIDADE (id_cidade);

CREATE TABLE T_END_CLIENTE
(
id_endereço NUMBER,
cep NUMBER,
logradouro VARCHAR2(50),
numero NUMBER,
referencia VARCHAR2(50),
id_bairro NUMBER
);

ALTER TABLE T_END_CLIENTE ADD PRIMARY KEY (id_endereco)
    ADD CONSTRAINT fk_bairro FOREIGN KEY (id_bairro)
    REFERENCES T_BAIRRO (id_bairro);
