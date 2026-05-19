-- Nome: Pedro Henrique Alves Cardoso
-- Turma: Informática deallocate prepare
create database escola6;

use escola6;

#Criação de tabela
CREATE TABLE alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    curso VARCHAR(50),
    idade INT,
    nota DECIMAL(4,2),
    cidade VARCHAR(50)
);

#Inserção de Dados
INSERT INTO alunos (nome, curso, idade, nota, cidade) VALUES
('Ana', 'Administração', 17, 8.5, 'São Paulo'),
('Carlos', 'Informática', 18, 7.0, 'Diadema'),
('Marina', 'Administração', 16, 9.2, 'São Paulo'),
('Lucas', 'RH', 17, 6.8, 'Santo André'),
('Fernanda', 'Informática', 18, 8.9, 'São Bernardo'),
('João', 'RH', 19, 5.5, 'Diadema'),
('Paula', 'Administração', 17, 7.7, 'São Paulo'),
('Ricardo', 'Informática', 16, 9.5, 'Santo André'),
('Juliana', 'RH', 18, 8.0, 'Diadema'),
('Bruno', 'Administração', 19, 6.5, 'São Bernardo');

-- 1. Mostre a quantidade total de alunos cadastrados.
select * from alunos;
select count(id) as Alunos from alunos;

-- 2. Mostre a média das notas dos alunos.
select round(avg(nota),2) as Alunos_Notas from alunos;

-- 3. Mostre a maior nota da tabela.
select max(nota) as Maior_Nota from alunos;

-- 4. Mostre a menor nota da tabela.
select min(nota) as Menor_Nota from alunos;

-- 5. Mostre a soma de todas as notas dos alunos.
select sum(nota) as Soma_Notas from alunos;

-- 6. Mostre a média de idade dos alunos.
select round(avg(idade),2) as Media_Idade from alunos;

-- 7. Mostre quantos alunos existem em cada curso.
select curso as Cursos, count(*) as Alunos_Cursos 
from alunos
group by curso;


-- 8. Mostre a média das notas por curso.
select curso as Cursos, round(avg(nota),2) as Medias_Cursos
from alunos
group by curso;

-- 9. Mostre a maior nota de cada curso.
select curso as Cursos, max(nota) as Nota_Máxima
from alunos
group by curso;

-- 10. Mostre a menor idade por curso.
select curso as Cursos, min(idade) as Menor_Idade
from alunos
group by curso;

-- 11. Mostre a soma das notas agrupadas por cidade.
select cidade as Cidades, sum(nota) as Notas_por_Cidade
from alunos
group by cidade;

-- 12. Mostre quantos alunos existem em cada cidade.
select cidade as Cidades, count(*) as Alunos_Cidades
from alunos
group by cidade;

-- 13. Mostre a média das notas apenas dos alunos de Informática.
select round(avg(nota),2) as Medias_Info
from alunos
where curso = 'Informática';

-- 14. Mostre a quantidade de alunos com nota maior que 7.
select curso as Cursos, count(*) as Notas_Maior7 
from alunos
where nota > 7
group by curso; 

-- 15. Mostre a média das notas por curso, exibindo apenas cursos com média maior que 7.5.
select curso as Cursos, round(avg(nota),2) as Medias_Cursos_Maior7
from alunos
group by curso
having avg(nota) > 7.5;