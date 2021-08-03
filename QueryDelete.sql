use wm; -- Usando o banco wm

-- Inseriando dados na tabela estados e conferindo o comportamento do auto increment
insert into estados (id, nome, sigla, regiao, populacao)
	values(1000, 'Novo', 'NV', 'Sul', 2.54)

insert into estados (nome, sigla, regiao, populacao)
	values('Mais Novo', 'MN', 'Norte', 2.51)
    
select * from estados

-- Deletando coluna com o delete e where filtrando pela sigla
delete from estados
	where sigla = 'NV'
delete from estados
	where sigla = 'MN'
