create database db_projetos_somar;
use db_projetos_somar;

create table logins (
id_logins int not null auto_increment primary key,
nome_user varchar(45) not null,
cpf_user varchar(11) not null,
email_user varchar(45) not null,
senha_user varchar(45) not null
);

create table ODs(
 id_ods int not null auto_increment primary key,
 nome_ods varchar(45)
);

create table parceiros (
id_parceiros int not null auto_increment primary key,
nome_parceiro varchar(45) not null
);

create table projetos(
id_projetos int not null auto_increment primary key,
nome_projeto varchar(45) not null,
cidade_projeto varchar(45) not null,
descricao_projeto longtext not null,
objetivo_projeto varchar(45) not null,
chave_midias varchar(120),
login_criador_projeto int not null,
ods_id int not null,
foreign key (login_criador_projeto) references logins(id_logins),
foreign key (ods_id) references ODs(id_ods)
);

create table projetos_com_parceiros(
projetos_id int not null,
parceiros_id int not null,
foreign key (projetos_id) references projetos(id_projetos),
foreign key (parceiros_id) references parceiros(id_parceiros)
);


insert into logins values (null,'lucas pedroso1','xxxxxxxxxxx','pedrosolucas1745@gmail.com','teste'),
(null,'lucas pedroso2','11111111111','pedrosolucas2002@outlook.com','teste'),
(null,'lucas pedroso3','22222222222','lucaspedroso1167@outlook.com','teste');

insert into ODs values  (null,'Erradicação da pobreza'),
					    (null,'Fome zero e agricultura sustentável'),
                        (null,'Saúde e bem-estar'),
                        (null,'Educação de qualidade'),
                        (null,'Igualdade de gênero'),
                        (null,'Água potável e saneamento'),
                        (null,'Energia limpa e acessível'),
                        (null,'Trabalho decente e crescimento econômico'),
                        (null,'Industria,Inovação e Infrestutura'),
                        (null,'Redução das desigualdades'),
                        (null,'Cidade e comunidades sustentáveis'),
                        (null,'Consumo e produção responsaveis'),
                        (null,'Ação contra a mudança global do clima'),
                        (null,'Vida na água'),
                        (null,'Vida terrestre'),
                        (null,'Paz, justiça e instituições eficazes'),
                        (null,'Parceria e meios de implementação');
                        
insert into projetos values (null,'Tramandai mais verde','tramandai/RS','descrição do projeto','fazer com que tramandai se torne mais verde',null,1,15),
							(null,'Erradicação da pobreza em tramndai/RS','tramandai/RS','descrição do projeto','fazer com que tramandai mais rica',null,1,1),
                            (null,'Tramandai fome zero e agricultura sustentavel','tramandai/RS','descrição do projeto','fazer com que tramandai tenha menos fome',null,2,2),
                            (null,'Tramandai mais saudável','tramandai/RS','descrição do projeto','fazer com que tramandai se torne maid saudavel',null,3,3);

select cpf_user, senha_user, id_logins from logins where cpf_user = 'xxxxxxxxxxx' and senha_user = 'teste';
select * from ODs;
select * from logins;
select * from projetos;
select * from projetos where login_criador_projeto = 1;
drop database db_projetos_somar;