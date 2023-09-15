create database escola_sql_ana_luiza;
use escola_sql_ana_luiza;

create table alunos(
aluno_id integer not null primary key,
nome varchar(50),
data_nascimento date,
endereco varchar(255),
telefone varchar (15)
);

INSERT INTO Alunos (aluno_id, nome, data_nascimento, endereco, telefone)values
 (1, 'João Silva', '1995-03-15', 'Rua A, 123', '(11) 1234-5678'),
 (2, 'Maria Santos', '1998-06-22', 'Av. B, 456', '(11) 9876-5432'),
 (3, 'Carlos Oliveira', '1997-01-10', 'Rua C, 789', '(11) 5678-1234'),
 (4, 'Ana Pereira', '1999-09-05', 'Av. D, 987', '(11) 4321-8765'),
 (5, 'Pedro Rodrigues', '1996-07-18', 'Rua E, 654', '(11) 3456-7890'),
 (6, 'Sara Costa', '2000-04-30', 'Av. F, 321', '(11) 8765-4321');



create table professores(
professor_id integer not null primary key,
nome varchar(255),
data_contratacao date
);

INSERT INTO Professores (professor_id, nome, data_contratacao)values
 (1, 'Ana Lima', '2010-08-15'),
 (2, 'José Santos', '2005-04-20'),
 (3, 'Márcio Oliveira', '2012-11-10'),
 (4, 'Cláudia Pereira', '2014-03-25'),
 (5, 'Fernanda Rodrigues', '2018-09-08'),
 (6, 'Ricardo Costa', '2019-12-01');

create table disciplinas(
disciplina_id integer not null primary key,
nome_disciplina varchar (255),
codigo_disciplina varchar(10),
carga_horaria integer
);

INSERT INTO Disciplinas (disciplina_id, nome_disciplina, codigo_disciplina, carga_horaria)values
 (1, 'Programação em C', 'PC101', 60),
 (2, 'Banco de Dados', 'BD201', 45),
 (3, 'Desenvolvimento Web', 'DW301', 75),
 (4, 'Algoritmos Avançados', 'AA401', 60),
 (5, 'Inteligência Artificial', 'IA501', 90),
 (6, 'Segurança da Informação', 'SI601', 45);

create table turmas(
turma_id integer not null primary key,
ano_escolar integer,
disciplina_id integer,
professor_id integer,

foreign key(professor_id) references professores(professor_id),
foreign key(disciplina_id) references disciplinas(disciplina_id)
);

INSERT INTO Turmas (turma_id, ano_escolar, disciplina_id, professor_id)values
 (101, 2023, 1, 1),
 (102, 2023, 2, 2),
 (103, 2023, 3, 3),
 (104, 2023, 4, 4),
 (105, 2023, 5, 5),
 (106, 2023, 6, 6);

create table notas(
nota_id integer not null primary key,
data_avaliacao date,
nota float,
aluno_id integer,
disciplina_id integer,

foreign key(aluno_id) references alunos(aluno_id),
foreign key(disciplina_id) references disciplinas(disciplina_id)
);

INSERT INTO Notas (nota_id, aluno_id, disciplina_id, data_avaliacao, nota)values

 (1, 1, 1, '2023-03-10', 85),
 (2, 2, 1, '2023-03-10', 78),
 (3, 3, 1, '2023-03-10', 92),
 (4, 4, 2, '2023-03-15', 88),
 (5, 5, 2, '2023-03-15', 95),
 (6, 6, 2, '2023-03-15', 75);


create table presenca(
presenca_id integer not null primary key,
data_aula date,
presenca varchar (8),
turma_id integer,
aluno_id integer,

foreign key(turma_id) references turmas(turma_id),
foreign key(aluno_id) references alunos(aluno_id)
);

INSERT INTO Presenca (presenca_id, aluno_id, turma_id, data_aula, presenca)values
 (1, 1, 101, '2023-03-10', 'presente'),
 (2, 2, 101, '2023-03-10', 'presente'),
 (3, 3, 101, '2023-03-10', 'presente'),
 (4, 4, 102, '2023-03-15', 'ausente'),
 (5, 5, 102, '2023-03-15', 'presente'),
 (6, 6, 102, '2023-03-15', 'presente');
 
 -- Qual é o nome do professor que ministra a disciplina com código "BD201"?

 
 
 -- Para a disciplina com código "PC101", obtenha a lista de alunos que obtiveram notas maiores que 80. 
 select disciplinas.codigo_disciplina,alunos.nome from disciplinas inner join notas on disciplinas.disciplina_id= notas.disciplina_id 
 inner join alunos on notas.nota_id=alunos.aluno_id where nota >80 and codigo_disciplina = 'PC101';
 
-- Liste todos os alunos que não têm notas registradas.

select alunos.nome,notas.nota from alunos inner join notas on alunos.aluno_id = notas.aluno_id where nota  is null;

-- https://forms.gle/Q1ngf5Nw1f6fpjYg9

