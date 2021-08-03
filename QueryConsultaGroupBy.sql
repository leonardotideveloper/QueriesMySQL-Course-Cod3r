select count(*) as 'Quantidade de Estados' from estados

select
	regiao as 'Região',
    sum(populacao) as Total
from estados
group by regiao
order by Total desc