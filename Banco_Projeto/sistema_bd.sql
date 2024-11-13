-- 554833 - Vicenzo Massao
-- 556864 - Luiz Reimberg
-- 556862 - Erick Alves

DROP TABLE Relatorio CASCADE CONSTRAINT;
drop TABLE Usuario cascade CONSTRAINTS;
drop TABLE Regiao CASCADE CONSTRAINT;


create table Regiao
(
    id_reg NUMBER(2) CONSTRAINT id_reg_pk PRIMARY Key,
    nome_regiao VARCHAR2(20) CONSTRAINT regiao_nn Not null,
    horas_sol NUMBER(5,2) CONSTRAINT hora_irrad_nn not null
);

create table Usuario
(
    id_usu number(5) CONSTRAINT id_usu_pk PRIMARY KEY,
    nome_usuario VARCHAR2(150) CONSTRAINT nome_usu_nn not null,
    email VARCHAR2(100) CONSTRAINT email_usu_nn not null,
    senha VARCHAR2(50) CONSTRAINT senha_usu_nn not null
);

CREATE table Relatorio
(
    id_relatorio NUMBER(5) CONSTRAINT id_rel_pk PRIMARY KEY,
    consumo_mensal NUMBER(12,2) CONSTRAINT consu_men_nn not null,
    conta_luz NUMBER(12,2) CONSTRAINT conta_luz_nn not null,
    area_desejada NUMBER(10) CONSTRAINT area_des_nn not null,
    qtd_paineis NUMBER(10) CONSTRAINT qtd_painel_nn not null,
    potencia_total NUMBER(12,2) CONSTRAINT poten_total_nn not null,
    custo_instal NUMBER(12,2) CONSTRAINT custo_isntal_nn not null,
    economia_mensal NUMBER(12,2) CONSTRAINT econ_men_nn not null,
    payback NUMBER(12,2) CONSTRAINT payback_nn not null,
    id_usu NUMBER(5) CONSTRAINT id_usu_fk REFERENCES Usuario,
    id_reg number(2) CONSTRAINT id_reg_fk REFERENCES Regiao
);

commit;

INSERT INTO Regiao (id_reg, nome_regiao, horas_sol) VALUES (1, 'Norte', 4.95);
INSERT INTO Regiao (id_reg, nome_regiao, horas_sol) VALUES (2, 'Nordeste', 6);
INSERT INTO Regiao (id_reg, nome_regiao, horas_sol) VALUES (3, 'Centro Oeste', 5.5);
INSERT INTO Regiao (id_reg, nome_regiao, horas_sol) VALUES (4, 'Sudeste', 5);
INSERT INTO Regiao (id_reg, nome_regiao, horas_sol) VALUES (5, 'Sul', 4.25);

INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (1, 'João Silva', 'joao.silva@email.com', 'senha123');
INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (2, 'Maria Oliveira', 'maria.oliveira@email.com', 'senha456');
INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (3, 'Carlos Souza', 'carlos.souza@email.com', 'senha789');
INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (4, 'Fernanda Costa', 'fernanda.costa@email.com', 'senha321');
INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (5, 'Roberto Lima', 'roberto.lima@email.com', 'senha654');
INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (6, 'Juliana Pereira', 'juliana.pereira@email.com', 'senha987');
INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (7, 'Ricardo Alves', 'ricardo.alves@email.com', 'senha111');
INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (8, 'Patricia Martins', 'patricia.martins@email.com', 'senha222');
INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (9, 'Lucas Santos', 'lucas.santos@email.com', 'senha333');
INSERT INTO Usuario (id_usu, nome_usuario, email, senha) VALUES (10, 'Gabriela Rocha', 'gabriela.rocha@email.com', 'senha444');

INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (1, 350.50, 120.75, 45, 15, 5.4, 25000.00, 500.00, 4.2, 1, 1);
INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (2, 500.25, 180.50, 60, 18, 6.0, 28000.00, 750.00, 3.5, 2, 2);
INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (3, 620.00, 250.00, 75, 20, 6.5, 30000.00, 900.00, 3.0, 3, 3);
INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (4, 280.75, 100.30, 40, 12, 4.8, 22000.00, 450.00, 4.8, 4, 1);
INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (5, 460.00, 190.00, 65, 17, 5.9, 27000.00, 700.00, 3.7, 5, 2);
INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (6, 540.00, 220.00, 70, 19, 6.3, 29000.00, 800.00, 3.3, 6, 3);
INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (7, 380.25, 140.50, 50, 14, 5.0, 24000.00, 600.00, 4.5, 7, 1);
INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (8, 400.75, 150.00, 55, 16, 5.2, 26000.00, 650.00, 4.0, 8, 2);
INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (9, 650.50, 260.00, 80, 22, 6.8, 32000.00, 950.00, 2.9, 9, 3);
INSERT INTO Relatorio (id_relatorio, consumo_mensal, conta_luz, area_desejada, qtd_paineis, potencia_total, custo_instal, economia_mensal, payback, id_usu, id_reg) VALUES (10, 310.00, 130.00, 42, 13, 5.1, 23000.00, 530.00, 4.3, 10, 1);
