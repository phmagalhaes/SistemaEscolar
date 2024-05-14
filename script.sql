-- Cria a database chamada sistemaEscolar
CREATE DATABASE sistemaEscolar;

-- Seleciona a database sistemaEscolar para ser usada
USE sistemaEscolar;

-- Cria a tabela professores com os campos nome, email e senha
CREATE TABLE professores (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Campo id com incremento automático e chave primária
    nome VARCHAR(100) NOT NULL,         -- Campo nome do tipo string (até 100 caracteres) e não pode ser nulo
    email VARCHAR(100) NOT NULL,        -- Campo email do tipo string (até 100 caracteres) e não pode ser nulo
    senha VARCHAR(100) NOT NULL         -- Campo senha do tipo string (até 100 caracteres) e não pode ser nulo
);

-- Cria a tabela atividades com os campos titulo e turma
CREATE TABLE atividades (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Campo id com incremento automático e chave primária
    titulo VARCHAR(100) NOT NULL,       -- Campo titulo do tipo string (até 100 caracteres) e não pode ser nulo
    turma VARCHAR(50) NOT NULL          -- Campo turma do tipo string (até 50 caracteres) e não pode ser nulo
);

-- Cria a tabela turmas com os campos nome e professor
CREATE TABLE turmas (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Campo id com incremento automático e chave primária
    nome VARCHAR(50) NOT NULL,          -- Campo nome do tipo string (até 50 caracteres) e não pode ser nulo
    professor VARCHAR(100) NOT NULL             -- Campo professor do tipo inteiro que referencia o id da tabela professores
);

-- Insere 3 registros na tabela professores
INSERT INTO professores (nome, email, senha) VALUES
('Maria Silva', 'maria.silva@escola.com', 'senha123'),
('João Santos', 'joao.santos@escola.com', 'senha456'),
('Ana Costa', 'ana.costa@escola.com', 'senha789');

-- Insere 3 registros na tabela turmas
INSERT INTO turmas (nome, professor) VALUES
('Desenvolvimento de sistemas', 'Maria Silva'),
('Mecânica', 'João Santos'),
('Eletroeletrônica', 'Ana Costa');

-- Insere 3 registros na tabela atividades
INSERT INTO atividades (titulo, turma) VALUES
('Lógica de programação - condicionais', 'Desenvolvimento de sistemas'),
('Introdução à Dinâmica: Conceitos e Aplicações Práticas', 'Mecânica'),
('Arduino - funcionamento dos diodos', 'Eletroeletrônica');