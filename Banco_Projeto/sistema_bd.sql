-- 554833 - Vicenzo Massao
-- 556864 - Luiz Reimberg
-- 556862 - Erick Alves

drop TABLE Usuario cascade CONSTRAINTS;
DROP TABLE Relatorio CASCADE CONSTRAINT;
drop TABLE Regiao CASCADE CONSTRAINT;


create table Regiao
(
    id_reg NUMBER(2) CONSTRAINT id_reg_pk PRIMARY Key,
    nome_regiao VARCHAR2(20) CONSTRAINT regiao_nn Not null,
    taxa_irradiacao FLOAT(3) CONSTRAINT hora_irrad_nn not null
);

CREATE table Relatorio
(
    id_relatorio NUMBER(5) CONSTRAINT id_rel_pk PRIMARY KEY,
    qtnd_pain NUMBER(8) CONSTRAINT qtnd_pain_nn Not NULL,
    potencia_total NUMBER(5) CONSTRAINT potencia_nn not null,
    custo_total NUMBER(5) CONSTRAINT custo_total_nn not null,
    economia_mensal NUMBER(8) CONSTRAINT econ_men_nn not null,
    payback NUMBER(4) CONSTRAINT pay_nn not null,
    energia_mes NUMBER(8) CONSTRAINT energia_mes_nn not null
);

create table Usuario
(
    id_usu number(6) CONSTRAINT id_usu_pk PRIMARY KEY,
    nome_usu VARCHAR2(250) CONSTRAINT nome_usu_nn not null,
    email_usu VARCHAR2(100) CONSTRAINT email_usu_nn not null,
    senha_usu VARCHAR2(50) CONSTRAINT senha_usu_nn not null,
    consumo_men NUMBER(8) CONSTRAINT consumo_men_nn not null,
    custo_energ NUMBER(7) CONSTRAINT cust_ener_nn not null,
    custo_med NUMBER(7) CONSTRAINT custo_med_nn not null,
    area_desejada NUMBER(7) CONSTRAINT area_des_nn not null,
    id_reg number(2) CONSTRAINT id_reg_fk REFERENCES Regiao,
    id_relatorio number(5) CONSTRAINT id_relatorio_fk REFERENCES Relatorio
);

commit;

INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (1, 'Norte', 4.95);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (2, 'Nordeste', 6);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (3, 'Centro Oeste', 5.5);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (4, 'Sudeste', 5);
INSERT INTO Regiao (id_reg, nome_regiao, taxa_irradiacao) VALUES (5, 'Sul', 4.25);

INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (1, 150, 120, 5000, 300, 16, 1200);
INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (2, 200, 160, 6000, 350, 17, 1500);
INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (3, 120, 100, 4500, 250, 18, 1100);
INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (4, 180, 145, 5500, 310, 17, 1300);
INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (5, 220, 180, 7000, 400, 18, 1600);
INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (6, 160, 130, 5200, 290, 16, 1250);
INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (7, 140, 110, 4800, 260, 19, 1150);
INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (8, 175, 140, 5700, 330, 16, 1400);
INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (9, 210, 170, 6500, 380, 17, 1550);
INSERT INTO Relatorio (id_relatorio, qtnd_pain, potencia_total, custo_total, economia_mensal, payback, energia_mes) VALUES (10, 195, 150, 6000, 320, 16, 1350);


INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (1, 'Carlos Silva', 'carlos.silva@email.com', 'senha123', 500, 25, 35, 80, 1, 1);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (2, 'Ana Pereira', 'ana.pereira@email.com', 'senha456', 800, 30, 45, 120, 2, 2);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (3, 'Felipe Costa', 'felipe.costa@email.com', 'senha789', 1000, 28, 40, 150, 3, 3);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (4, 'Maria Oliveira', 'maria.oliveira@email.com', 'senha1011', 350, 20, 30, 60, 1, 4);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (5, 'José Almeida', 'jose.almeida@email.com', 'senha1213', 600, 27, 33, 90, 2, 5);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (6, 'Renata Souza', 'renata.souza@email.com', 'senha1415', 950, 32, 38, 110, 3, 6);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (7, 'Lucas Santos', 'lucas.santos@email.com', 'senha1617', 1500, 35, 50, 200, 4, 7);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (8, 'Juliana Lima', 'juliana.lima@email.com', 'senha1819', 400, 22, 28, 70, 4, 8);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (9, 'Paulo Barbosa', 'paulo.barbosa@email.com', 'senha2021', 750, 29, 42, 130, 2, 9);
INSERT INTO Usuario (id_usu, nome_usu, email_usu, senha_usu, consumo_men, custo_energ, custo_med, area_desejada, id_reg, id_relatorio) VALUES (10, 'Fernanda Rocha', 'fernanda.rocha@email.com', 'senha2223', 850, 33, 47, 140, 1, 10);
