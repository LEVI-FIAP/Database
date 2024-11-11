-- 554833 - Vicenzo Massao
-- 556864 - Luiz Reimberg
-- 556862 - Erick Alves

drop TABLE Usuario cascade CONSTRAINTS;
drop TABLE Regiao CASCADE CONSTRAINT;

create table Regiao
(
    id_reg NUMBER(2) CONSTRAINT id_reg_pk PRIMARY Key,
    nome_regiao VARCHAR2(20) CONSTRAINT regiao_nn Not null,
    taxa_irradiacao FLOAT(3) CONSTRAINT hora_irrad_nn not null
);

create table Usuario
(
    id_usu number(6) CONSTRAINT id_usu_pk PRIMARY KEY,
    nome_usu VARCHAR2(250) CONSTRAINT nome_usu_nn not null,
    email_usu VARCHAR2(100) CONSTRAINT email_usu_nn not null,
    senha_usu VARCHAR2(50) CONSTRAINT senha_usu_nn not null,
    consumo_men FLOAT(4) CONSTRAINT consumo_men_nn not null,
    custo_energ FLOAT(4) CONSTRAINT cust_ener_nn not null,
    custo_med FLOAT(4) CONSTRAINT custo_med_nn not null,
    area_desejada FLOAT(4) CONSTRAINT area_des_nn not null,
    id_reg number(2) CONSTRAINT id_reg_fk REFERENCES Regiao
);

INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (1, 'Norte', 4.95);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (2, 'Nordeste', 6);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (3, 'Centro Oeste', 5.5);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (4, 'Sudeste', 5);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (5, 'Sul', 4.25);

commit;