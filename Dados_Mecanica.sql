-- CRIAÇÃO DA BASE DE DADOS PARA MECÂNICA

USE mecanica;

-- DADOS DOS CLIENTES
INSERT INTO cliente (nome_completo, data_de_nasc, nome_social, telefone, tipo_de_cliente, CPF, CNPJ)
VALUES
('João Silva', '1985-04-10', NULL, '11999990001', 'PF', '12345678901', NULL),
('Maria Souza', '1990-07-25', NULL, '21988880002', 'PF', '23456789012', NULL),
('Auto Peças LTDA', NULL, 'Auto Peças LTDA', '31977770003', 'PJ', NULL, '12345678000199'),
('Carlos Mendes', '1988-11-12', NULL, '41966660004', 'PF', '34567890123', NULL),
('Oficina Rápida ME', NULL, 'Oficina Rápida ME', '51955550005', 'PJ', NULL, '98765432000188');

-- DADOS DOS VEÍCULOS
INSERT INTO veiculo (id_veiculo_cliente, placa, modelo)
VALUES
(1, 'ABC1A23', 'Fiat Uno'),
(2, 'BCD2B34', 'Toyota Corolla'),
(3, 'CDE3C45', 'Volkswagen Gol'),
(4, 'DEF4D56', 'Chevrolet Onix'),
(5, 'EFG5E67', 'Honda Civic');

-- DADOS DOS MECÂNICOS
INSERT INTO mecanico (nome, especialidade)
VALUES
('Pedro Santos', 'Motor'),
('Lucas Almeida', 'Freios'),
('Rafael Lima', 'Suspensão'),
('Tiago Costa', 'Elétrica'),
('Felipe Ramos', 'Transmissão');

-- DADOS DOS SERVIÇOS
INSERT INTO servico (descricao, preco)
VALUES
('Troca de óleo', 120.00),
('Alinhamento e balanceamento', 180.00),
('Troca de pastilhas de freio', 250.00),
('Revisão elétrica', 300.00),
('Substituição de embreagem', 450.00);

-- DADOS DAS ORDENS DE SERVIÇOS
INSERT INTO ordem_servico (id_os_veiculo, id_os_mecanico, data_emissao, status_os)
VALUES
(1, 1, '2025-11-01', 'CONCLUÍDA'),
(2, 2, '2025-11-02', 'ABERTA'),
(3, 3, '2025-11-03', 'CONCLUÍDA'),
(4, 4, '2025-11-04', 'ABERTA'),
(5, 5, '2025-11-05', 'CONCLUÍDA');