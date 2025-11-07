-- CRIAÇÃO DO BANCO DE DADOS PARA MECÂNICA

CREATE DATABASE IF NOT EXISTS mecanica;
USE mecanica;

-- CRIAÇÃO DAS TABELAS, INCLUINDO A VERIFICAÇÃO DO TIPO DE CLIENTE (PJ OU PF):

-- CRIAÇÃO DA TABELA CLIENTE
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    data_de_nasc DATE,
    nome_social VARCHAR(150),
    telefone VARCHAR(20),
    tipo_de_cliente ENUM('PJ', 'PF') NOT NULL,
    CPF CHAR(11),
    CNPJ VARCHAR(14),
    CONSTRAINT check_tipo_de_cliente CHECK (
        (tipo_de_cliente = 'PF' AND CPF IS NOT NULL AND CNPJ IS NULL)
        OR
        (tipo_de_cliente = 'PJ' AND CNPJ IS NOT NULL AND CPF IS NULL)
	),
	CONSTRAINT unique_cpf UNIQUE (CPF),
    CONSTRAINT unique_cnpj UNIQUE (CNPJ)
);

-- CRIAÇÃO DA TABELA VEÍCULO
CREATE TABLE veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo_cliente INT NOT NULL,
    placa VARCHAR(10) NOT NULL,
    modelo VARCHAR(50),
	CONSTRAINT unique_placa UNIQUE (placa),
    CONSTRAINT fk_cliente_veiculo FOREIGN KEY (id_veiculo_cliente) references cliente(id_cliente)
		ON UPDATE CASCADE
);

-- CRIAÇÃO DA TABELA MECÂNICO
CREATE TABLE mecanico (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100)
);

-- CRIAÇÃO DA TABELA SERVIÇO
CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(300) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);    

-- CRIAÇÃO DA TABELA ORDEM DE SERVIÇO
CREATE TABLE ordem_servico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    id_os_veiculo INT NOT NULL,
    id_os_mecanico INT NOT NULL,
    data_emissao DATE NOT NULL,
    status_os ENUM('ABERTA', 'CONCLUÍDA') DEFAULT 'ABERTA',
    CONSTRAINT fk_veiculo_os FOREIGN KEY (id_os_veiculo) references veiculo(id_veiculo)
		ON DELETE CASCADE,
	CONSTRAINT fk_mecanico_os FOREIGN KEY (id_os_mecanico) references mecanico(id_mecanico)
		ON DELETE CASCADE
);

ALTER TABLE cliente AUTO_INCREMENT=1;
ALTER TABLE veiculo AUTO_INCREMENT=1;
ALTER TABLE mecanico AUTO_INCREMENT=1;
ALTER TABLE servico AUTO_INCREMENT=1;
ALTER TABLE ordem_servico AUTO_INCREMENT=1;

show tables;

show databases;

use information_schema;

show tables;

desc referential_constraints;
select * from referential_constraints where constraint_schema = 'mecanica';

drop database mecanica;