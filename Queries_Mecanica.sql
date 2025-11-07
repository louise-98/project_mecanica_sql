-- CRIAÇÃO DE CONSULTAS (QUERIES) PARA MECÂNICA

USE mecanica;

-- RECUPERAÇÃO DE TODOS OS DADOS INSERIDOS NAS TABELAS COM "SELECT" STATEMENT:
SELECT * FROM cliente;
SELECT * FROM veiculo;
SELECT * FROM mecanico;
SELECT * FROM servico;
SELECT * FROM ordem_servico;

-- RECUPERAÇÕES SIMPLES COM "SELECT" STATEMENT:
-- Retornar os nomes e telefones de todos os clientes cadastrados
SELECT nome_completo, telefone FROM cliente;

-- FILTROS COM "WHERE":
-- Listar apenas os mecânicos especializados em 'Suspensão'
SELECT nome, especialidade FROM mecanico
		WHERE especialidade = 'Suspensão';

-- EXPRESSÕES PARA GERAR ATRIBUTOS DERIVADOS:
-- Criar um atributo derivado (preco_com_taxa), acrescentando 10% ao valor do preco
SELECT descricao, preco, (preco * 1.1) AS preco_com_taxa FROM servico;

-- ORDENAÇÃO DOS DADOS COM "ORDER BY":
-- Mostrar os clientes ordenados pela data de nascimento (do mais velho ao mais novo)
SELECT nome_completo, data_de_nasc FROM cliente
		ORDER BY data_de_nasc ASC;

-- CONDIÇÕES DE FILTROS AOS GRUPOS COM "HAVING":
-- Exibir apenas os mecânicos que possuem mais de 1 ordem de serviço
SELECT id_os_mecanico, COUNT(*) AS total_servicos FROM ordem_servico
		GROUP BY id_os_mecanico
				HAVING COUNT(*) > 1;
                
-- JUNÇÕES ENTRE TABELAS COM "JOIN":
-- Vincular clientes e mecânicos por meio das ordens de serviço
SELECT c.nome_completo AS cliente, m.nome AS mecanico, o.status_os FROM ordem_servico o
		JOIN veiculo v ON o.id_os_veiculo = v.id_veiculo
		JOIN cliente c ON v.id_veiculo_cliente = c.id_cliente
		JOIN mecanico m ON o.id_os_mecanico = m.id_mecanico;