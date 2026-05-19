create database banco_05_03;

use banco_05_03;

create table alunos (
id int auto_increment primary key,
nome varchar (100),
idade int,
curso varchar (100),
data_matricula date
);

INSERT INTO alunos (nome, idade, curso, data_matricula)
VALUE
('Carlos', 20, 'Informática', '2026-12-19'),
('Mariana', 22, 'Administração', '2026-12-14'),
('João', 17, 'Comunicação Visual', '2021-05-04'),
('Nicole', 19, 'Inglês', '2024-01-22'),
('Robson', 24, 'Informática', '2022-06-17'),
('Adriana', 20, 'Comunicação Visual', '2018-04-15'),
('Alexandre', 18, 'Informática', '2017-06-07');

-- Liste todos os alunos da tabela.
select * from alunos;

-- Liste apenas o nome e o curso dos alunos.
select nome, curso from alunos;

-- Liste apenas os alunos com idade maior que 21 anos.
select * from alunos
where idade > 21;

-- Liste os alunos do curso Informática.
select * from alunos
where curso = 'Informática';

-- Atualize a idade do aluno Carlos para 21 anos.
UPDATE alunos
SET idade = 21
where nome = 'Carlos';

select * from alunos;

SET sql_safe_updates = 0;

-- Atualize o curso da Mariana para Sistemas de Informação.
UPDATE alunos
SET curso = 'Sistemas da Informação'
where nome = 'Mariana';

-- Atualize todos os alunos do curso Informática para Desenvolvimento de Sistemas.
UPDATE alunos
SET curso = 'Desenvolvimento de Sistemas'
where curso = 'Informática';

-- Delete o aluno chamado Carlos.
DELETE from alunos
where nome = 'Carlos';

-- Delete os alunos com idade menor que 18.
DELETE from alunos 
where idade < 18;

-- Delete todos os alunos da tabela.
DELETE from alunos
where id in(2,4,5,6,7);

drop database banco_05_03;






