create database ex30;

use ex30;

create table revisao (
	id int auto_increment primary key,
    nome varchar(50),
    idade int,
    curso varchar(50),
    nota decimal(4,2),
    cidade varchar(50)
);

drop table revisao;
INSERT INTO revisao (nome, idade, curso, nota, cidade)
value
('Pedro Cardoso', 25, 'Informática', 7.5, 'São Roque'),
('Miguel Costa', 15, 'Informática', 4.5, 'Osasco'),
('Paulo Ananias', 17, 'Informática', 2.5, 'São Roque'),
('Ana Andrade', 23, 'Informática', 10, 'Osasco'),
('Alysson Argent', 22, 'Informática', 9, 'São Paulo'),
('Scott MaCall', 20, 'Logística', 8.5, 'Osasco'),
('Isaac Lahey', 14, 'Logística', 6.5, 'São Roque'),
('Melissa Silva', 25, 'Logística', 10, 'São Paulo'),
('Maria Alves', 22, 'Administração', 7, 'Barueri'),
('Nicole Pereira', 17, 'Administração', 10, 'Osasco'),
('Milena Dutra', 23, 'Administração', 5, 'Barueri'),
('Lucas de Mello', 17, 'Administração', 5.5, 'Osasco'),
('Carlos Tesla', 19, 'Comunicação Visual', 7.5, 'Barueri'),
('Ellon Drunk', 21, 'Comunicação Visual', 9.5, 'São Paulo'),
('Spider Silva', 25, 'Comunicação Visual', 1.5, 'São Paulo');

-- Básicos com WHERE
-- 1. Selecione todos os alunos.
select * from revisao;

-- 2. Mostre apenas os alunos do curso de Informática.
select * from revisao
where curso = 'Informática';

-- 3. Liste os alunos com idade maior que 20.
select * from revisao
where idade > 20;

-- 4. Mostre alunos com nota maior que 7.
select * from revisao
where nota > 7;

-- 5. Liste alunos da cidade de São Paulo.
select * from revisao 
where cidade = 'São Paulo';

-- WHERE com AND
-- 6. Alunos do curso Administração com nota maior que 7.
select * from revisao
where curso = 'Administração' and nota > 7;

-- 7. Alunos com idade maior que 18 e da cidade de Osasco.
select * from revisao
where idade > 18 and cidade = 'Osasco';

-- 8. Alunos de Informática com nota menor que 7.
select * from revisao
where curso = 'Informática' and nota > 7;

-- 9. Alunos com idade maior que 20 e nota maior que 8.
select * from revisao
where idade > 20 and nota > 8;

-- 10. Alunos de Logística com idade menor que 22.
select * from revisao
where curso = 'Logística' and idade < 22;

-- WHERE com OR
-- 11. Alunos do curso Administração ou Informática.
select * from revisao
where curso = 'Administração' or curso = 'Informática';

-- 12. Alunos com nota menor que 6 ou idade maior que 22.
select * from revisao
where nota < 6 or idade > 22;

-- 13. Alunos de São Paulo ou Barueri.
select * from revisao
where cidade = 'São Paulo' or cidade = 'Barueri';

-- 14. Alunos com idade menor que 18 ou nota maior que 9.
select * from revisao
where idade < 18 or nota > 9;

-- 15. Alunos de Logística ou com nota acima de 8.
select * from revisao
where curso = 'Logística' or nota > 8;

-- WHERE com NOT
-- 16. Alunos que não são de Informática.
select * from revisao
where curso != 'Informática';

-- 17. Alunos que não são de São Paulo.
select * from revisao
where cidade != 'São Paulo';

-- 18. Alunos que não têm nota maior que 7.
select * from revisao
where not nota >= 7.1;

-- 19. Alunos que não estão em Administração.
select * from revisao
where curso != 'Administração';

-- 20. Alunos que não têm idade menor que 20.
select * from revisao
where not idade < 20;

-- BETWEEN
-- 21. Alunos com idade entre 18 e 21.
select * from revisao
where idade between 18 and 21;

-- 22. Alunos com nota entre 7 e 9.
select * from revisao
where nota between 7 and 9;

-- 23. Alunos com idade entre 20 e 23.
select * from revisao
where idade between 20 and 23;

-- 24. Alunos com nota entre 5 e 8.
select * from revisao
where nota between 5 and 8;

-- 25. Alunos com idade entre 17 e 19 e curso Informática.
select * from revisao
where idade between 17 and 19 and curso = 'Informática';

-- ORDER BY
-- 26. Liste todos os alunos ordenados por nome (A-Z).
select * from revisao 
order by nome;

-- 27. Liste alunos ordenados por idade (decrescente).
select * from revisao
order by idade desc;

-- 28. Liste alunos ordenados por nota (maior para menor).
select * from revisao
order by nota desc;

-- 29. Liste alunos de Administração ordenados por nota.
select * from revisao
where curso = 'Administração' order by nota;

-- 30. Liste alunos de São Paulo ordenados por idade crescente.
select * from revisao
where cidade = 'São Paulo' order by idade asc;

set sql_safe_updates=0;