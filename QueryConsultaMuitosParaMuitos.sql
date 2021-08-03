create table if not exists empresas (
	id int unsigned not null auto_increment,
    nome varchar(255) not null,
    cnpj int unsigned,
	primary key(id),
    unique key (cnpj)
);
alter table empresas modify cnpj VARCHAR(14);

create table if not exists empresas_unidades (
	empresa_id int unsigned not null,
    cidade_id int unsigned not null,
    sede tinyint(1) not null,
    primary key (empresa_id, cidade_id) 
);

insert into empresas (nome, cnpj)
	values
		('Bradesco', 66117159000107),
        ('Vale', 00119103000175),
		('Cielo', 75539912000135);
        
select * from empresas;
select * from cidades;

insert into empresas_unidades
	(empresa_id, cidade_id, sede)
values
	(1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);
    
select e.nome as Empresas, c.nome as Cidades
from empresas e, empresas_unidades eu, cidades c
where e.id = eu.empresa_id
and c.id = eu.cidade_id
and sede


    
    


        
        