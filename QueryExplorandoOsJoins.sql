-- Criando tabela Prefeitos 
create table if not exists prefeitos (
	id int unsigned not null auto_increment,
    nome varchar(255) not null,
    cidade_id int unsigned,
    primary key (id),
    unique key (cidade_id),
    foreign key (cidade_id) references cidades (id)
);

insert into prefeitos
		(nome, cidade_id)
	values
		('Rodrigo Neves', 2),
        ('Raquel lyra', 3),
        ('Zenaldo Coutinho', null);
        
insert into prefeitos
		(nome, cidade_id)
	values
        ('Rafael Greca', null);
        
select * from cidades;
select * from prefeitos;
select * from cidades c inner join prefeitos p on c.id = p.cidade_id;
select * from cidades c left join prefeitos p on c.id = p.cidade_id;
select * from cidades c right join prefeitos p on c.id = p.cidade_id;

 -- select * from cidades c full join prefeitos p on c.id = p.cidade_id;
 -- resolvendo a ausencia do full join no MySQL
select * from cidades c left join prefeitos p on c.id = p.cidade_id
 union
select * from cidades c right join prefeitos p on c.id = p.cidade_id;

        
        
        