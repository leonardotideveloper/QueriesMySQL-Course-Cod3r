-- Utilizando update para fazer atualização
-- Sempre utilizar where para não ser demitido
update estados
set nome = 'Maranhão'
where sigla = 'MA'

select nome from estados
where sigla = 'MA'

update estados
	set 
		nome = 'Paraná', 
		populacao = 11.32
where sigla = 'PR'

select 
	nome as 'Nome do Estado',
    sigla as 'UF',
	populacao as 'População' from estados
where sigla = 'PR'