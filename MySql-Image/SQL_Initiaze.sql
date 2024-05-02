create database pessoa;
use pessoa;

CREATE TABLE pessoas(
    PessoaID int AUTO_INCREMENT,
    PrimeiroNome varchar(100) not null ,
    UltimoNome varchar(100) not null,
    primary key (PessoaID)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

insert into pessoas(primeironome, ultimonome) values
('Lucas', 'Alberto'), ('João', 'Batista');