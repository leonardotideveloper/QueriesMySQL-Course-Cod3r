create table if not exists cidades (
	id int unsigned not null auto_increment,
    nome varchar(255) not null,
    estado_id int unsigned not null,
    area decimal(10, 2),
    primary key(id),
    foreign key (estado_id) references estados(id)
);

insert into cidades(nome, area, estado_id)
	values('Campinas', 795, 25)

insert into cidades(nome, area, estado_id)
	values('Niterói', 133.9, 19)

insert into 
	cidades(nome, area, estado_id)
		values (
        'Caruaru', 
         920.6, 
		(select id from estados where sigla = 'PE'))
         
insert into 
	cidades(nome, area, estado_id)
		values (
        'Juazeiro do Norte', 
         248.2, 
		(select id from estados where sigla = 'CE'))
select * from cidades