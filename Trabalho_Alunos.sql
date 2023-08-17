create database senai_bp;
use senai_bp;

create table cursos(
cod_curso int,
nome_curso varchar(100),
primary key(cod_curso)
);

create table alunos(
cod_aluno int,
nome varchar(45),
sobrenome varchar(45),
data_nascimento DATE,
cod_curso int,
primary key(cod_aluno),
foreign key(cod_curso) references cursos (cod_curso)
);

insert into cursos
values 
(101,'introducao ao desenvolvimento de projeto'),
(102,'inglês técnico aplicado ao desenvolvimento de sistemas'),
(103,'higiene do alimento:microbiologia de alimentos'),
(104,'ferramentas digitais de gestão'),
(105,'introdução a IOT para manunteção industrial'),
(106,'introdução á indústria 4.0'),
(107,'administrador de banco de dados');


select * from cursos;
select * from alunos where cod_aluno = 1100;

insert into alunos 
values
(1100,'Ana Luiza','Ferreira Rosa', '2006-09-25', '107');

select cod_aluno, concat(nome,'',sobrenome) as 'nome completo', data_nascimento 
from alunos where data_nascimento >= '1999_01_01' 
order by data_nascimento;

select count(cod_aluno) 
from alunos where data_nascimento >= '2005-08-17' 
order by data_nascimento;

select count(cod_curso)
from cursos;

select c.cod_curso, c.nome_curso, count(a.cod_curso) as alunos
from alunos a inner join cursos c on c.cod_curso = a.cod_curso
group by c.cod_curso;

select a.cod_aluno, concat (a.nome,' ', a.sobrenome) as 'nome completo',c.cod_curso
from alunos a inner join cursos c on c.cod_curso = a.cod_curso
where c.cod_curso =106;


















