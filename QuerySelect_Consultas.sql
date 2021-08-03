-- Buscando tudo da tabela estados
select * from estados;

-- Buscando coluna nome, sigla da tabela estados
select nome, sigla from estados;

-- Filtrando Busca com ( where/quando )
select sigla, nome as 'Nome do Estado' from estados
	where regiao ='Sul'
    
-- Filtrando Estados que possuir população maior ou igual a 10 milhões
select 
	nome as 'Nome do Estado', 
    regiao, 
    populacao 
from estados
where populacao >= 10
order by populacao desc 
-- Filtrando e utilizando order by e order by desc



