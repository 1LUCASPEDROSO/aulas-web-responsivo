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

drop database db_projetos_somar;