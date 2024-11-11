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

commit;

INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (1, 'Norte', 4.95);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (2, 'Nordeste', 6);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (3, 'Centro Oeste', 5.5);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (4, 'Sudeste', 5);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (5, 'Sul', 4.25);

INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (1, 'Carlos Silva', 'carlos.silva@email.com', 'senha123', 500, 25, 35, 80, 1);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (2, 'Ana Pereira', 'ana.pereira@email.com', 'senha456', 800, 30, 45, 120, 2);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (3, 'Felipe Costa', 'felipe.costa@email.com', 'senha789', 1000, 28, 40, 150, 3);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (4, 'Maria Oliveira', 'maria.oliveira@email.com', 'senha1011', 350, 20, 30, 60, 1);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (5, 'José Almeida', 'jose.almeida@email.com', 'senha1213', 600, 27, 33, 90, 2);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (6, 'Renata Souza', 'renata.souza@email.com', 'senha1415', 950, 32, 38, 110, 3);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (7, 'Lucas Santos', 'lucas.santos@email.com', 'senha1617', 1500, 35, 50, 200, 4);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (8, 'Juliana Lima', 'juliana.lima@email.com', 'senha1819', 400, 22, 28, 70, 4);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (9, 'Paulo Barbosa', 'paulo.barbosa@email.com', 'senha2021', 750, 29, 42, 130, 2);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg) VALUES (10, 'Fernanda Rocha', 'fernanda.rocha@email.com', 'senha2223', 850, 33, 47, 140, 1);
