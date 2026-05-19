/*Criar o banco de dados*/
create database escola_db1;

/*Selecionar o banco de dados*/
use escola_db1;

/*Criar a tabela e suas colunas*/
create table aluno (
	id int auto_increment primary key,
    nome varchar (100),
    idade int,
    curso varchar (100),
    periodo varchar (100)
    );
    
	/*Inserir as informações na tabela*/
    INSERT INTO aluno (nome, idade, curso, periodo)
    VALUES
    ('Sonia Abrakadabr',24,'Administração','Tarde'),
    ('Reinildo Saliba',21,'Inglês','Tarde'),
	('Kauahn Antoniel',19, 'Informatica', 'Manha'),
    ('Lucas Silva',16,'Comunicação Audiovisual','tarde'),
    ('Rosanete Cunha',22,'Comunicação Audiovisual','Noite'),
    ('Salazar Rabbit', 15, 'Robótica', 'Noite');
    
	/*Mostrar a tabela*/
    select * from aluno;
    
    /*Mostrar apenas as colunas pedidas*/
    select nome, curso from aluno;
    
    /*Atualizar os dados da tabela referente ao ID solicitado*/
    UPDATE aluno
    set idade = 20
    where id=3;
    
    update aluno
    set curso= 'informática', periodo= 'manha'
    where id= 2;
    
    update aluno
    set curso= 'Inglês'
    where id = 4;
    
    /*Deletar o ID selecionado na tabela*/
    delete from aluno
    where id in(1);
    
    /*Mostrar apenas a coluna e o conteúdo selecionado*/
    select * from aluno
    where periodo = ('Noite');
    
    select * from aluno
    where curso= 'informática';
    
    /*Deletar todas as informações inseridas na tabela, mas mantendo a estrutuda da mesma*/
    delete from aluno
    where id;
    
    /*Apagar a tabeka inteira*/
    drop table aluno;
    
  
    
    