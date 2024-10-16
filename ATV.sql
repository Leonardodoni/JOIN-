-- atv1
select produtos.Nome_Produto, pedidos.Preco_Unit, clientes.Nome,lojas.Loja  from produtos
inner join pedidos on 
produtos.ID_Produto = pedidos.ID_Produto
inner join clientes on 
pedidos.id_Cliente= clientes.ID_Cliente
inner join lojas on 
lojas.ID_Loja = pedidos.ID_Loja;

select clientes.Nome, clientes.Sobrenome,clientes.Data_Nascimento, lojas.Endereco, produtos.Nome_Produto,pedidos.Qtd_Vendida
from produtos
inner join pedidos on  
produtos.ID_Produto = pedidos.ID_Produto
inner join lojas on 
lojas.ID_Loja = pedidos.ID_Loja
inner  join clientes on  
clientes.ID_Cliente = pedidos.ID_Cliente;

select * from clientes;

select * from locais;

select * from lojas;

select * from pedidos;

select * from produtos;

-- Atv2
select * from produtos;
select * from subcategoria;

select produtos.id_produto, produtos.nome_produto, 
subcategoria.nome_subcategoria from produtos
inner join subcategoria on 
produtos.id_subcategoria = subcategoria.id_subcategoria;

-- atv3 1)
SELECT funcionario.nome_funcionario, departamento.nome_depto
FROM funcionario
INNER JOIN departamento ON
funcionario.sigla_depto = departamento.sigla_depto;

-- 2)
SELECT projeto.nome_projeto, departamento.nome_depto, departamento.sigla_depto
FROM funcionario
INNER JOIN departamento ON
departamento.nome_depto = departamento.nome_depto
INNER JOIN projeto ON projeto.nome_projeto = projeto.nome_projeto;

-- 3)
SELECT f.nome_funcionario, p.nome_projeto
FROM funcionario f
INNER JOIN projeto p ON 
 f.codfuncionario = p.codfuncionario
INNER JOIN departamento d ON
f.sigla_depto = d.sigla_depto
WHERE d.nome_depto = 'Vendas';
-- 4. 
SELECT funcionario.nome_funcionario, projeto.nome_projeto 
FROM funcionario 
LEFT JOIN projeto ON funcionario.codfuncionario = projeto.codfuncionario;

-- 5.
SELECT funcionario.nome_funcionario, departamento.nome_depto
FROM funcionario
LEFT JOIN departamento ON funcionario.codfuncionario = departamento.sigla_depto;

-- 6.
SELECT projeto.nome_projeto, funcionario.nome_funcionario FROM projeto
LEFT JOIN funcionario ON projeto.codfuncionario = funcionario.codfuncionario;

-- 7.
SELECT funcionario.nome_funcionario, projeto.nome_projeto FROM funcionario
RIGHT JOIN projeto ON funcionario.codfuncionario = projeto.codfuncionario;

-- 8.
SELECT departamento.nome_depto, funcionario.nome_funcionario FROM departamento
RIGHT JOIN funcionario ON departamento.sigla_depto = funcionario.sigla_depto;
-- 9. 
SELECT projeto.nome_projeto, funcionario.nome_funcionario 
FROM projeto 
RIGHT JOIN funcionario ON 
projeto.codfuncionario = funcionario.codfuncionario;

-- 10. 
SELECT funcionario.nome_funcionario, projeto.nome_projeto FROM projeto 
RIGHT JOIN funcionario ON 
funcionario.codfuncionario = projeto.codfuncionario 
UNION SELECT funcionario.nome_funcionario, projeto.nome_projeto FROM projeto 
LEFT JOIN funcionario ON funcionario.codfuncionario = projeto.codfuncionario; 

-- 11. 
SELECT departamento.nome_depto, funcionario.nome_funcionario FROM funcionario 
RIGHT JOIN departamento ON departamento.sigla_depto = funcionario.sigla_depto 
UNION SELECT departamento.nome_depto, funcionario.nome_funcionario FROM funcionario 
LEFT JOIN departamento ON departamento.sigla_depto = funcionario.sigla_depto;









select * from funcionario;
select * from departamento;












