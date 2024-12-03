INSERT INTO Refeicao (Nome, Qtde_Repete, Qtde_Crianca)
VALUES
('Café da Manhã', 1, 50),
('Almoço', 2, 60),
('Lanche', 1, 45),
('Jantar', 1, 40);

INSERT INTO Crianca (CPF, Nome, DataNasc, Matricula, NomeMae, NomePai, NumCAPS, FichaSocio, Turma)
VALUES
('11111111111', 'Ana Silva', '2020-05-15', 'MAT001', 'Maria Silva', 'João Silva', 1, 'SOC001', 'TURMA01'),
('22222222222', 'Lucas Pereira', '2015-03-10', 'MAT002', 'Patrícia Pereira', NULL, 2, 'SOC002', 'TURMA02'),
('33333333333', 'Beatriz Santos', '2012-11-08', 'MAT003', 'Mariana Santos', 'Roberto Santos', 3, 'SOC003', 'TURMA03'),
('44444444444', 'João Costa', '2009-07-20', 'MAT004', 'Sandra Costa', NULL, 4, 'SOC004', 'TURMA04'),
('55555555555', 'Sofia Almeida', '2007-02-17', 'MAT005', 'Renata Almeida', 'Paulo Almeida', 1, 'SOC005', 'TURMA05');


INSERT INTO Turma (Codigo, Qtde_Alunos, FaixaEtaria, CPF_Prof)
VALUES
('TURMA01', 10, '1-3 anos', '12345678900'),
('TURMA02', 15, '4-6 anos', '23456789011'),
('TURMA03', 20, '7-9 anos', '34567890122'),
('TURMA04', 18, '10-12 anos', '45678901233'),
('TURMA05', 12, '13-15 anos', '56789012344');


INSERT INTO Materia (Sigla, Nome, Serie)
VALUES
('MAT001', 'Educação Infantil', '1º Ano'),
('MAT002', 'Alfabetização', '2º Ano'),
('MAT003', 'Matemática', '3º Ano'),
('MAT004', 'Ciências', '4º Ano'),
('MAT005', 'História', '5º Ano');

INSERT INTO Professor (CPF, Nome, Funcao, Telefone, Endereco, DataNasc, Materia, FiscalizaTurma)
VALUES
('12345678900', 'Carlos Oliveira', 'Professor de Educação Infantil', '31988880000', 'Rua A, 100', '1985-04-10', 'MAT001', 'TURMA01'),
('23456789011', 'Fernanda Souza', 'Professora de Alfabetização', '31988881111', 'Rua B, 200', '1990-07-15', 'MAT002', 'TURMA02'),
('34567890122', 'Marcos Lima', 'Professor de Matemática', '31988882222', 'Rua C, 300', '1980-02-20', 'MAT003', 'TURMA03'),
('45678901233', 'Juliana Alves', 'Professora de Ciências', '31988883333', 'Rua D, 400', '1978-11-25', 'MAT004', 'TURMA04'),
('56789012344', 'André Mendes', 'Professor de História', '31988884444', 'Rua E, 500', '1975-08-30', 'MAT005', 'TURMA05');

INSERT INTO Funcionario (CPF, Nome, Funcao, Telefone, Endereco, DataNasc, DataAdmissao)
VALUES
('12345678901', 'Roberto Souza', 'Cozinheiro', '31988885555', 'Rua F, 600', '1982-06-15', '2020-01-01'),
('12345678902', 'Juliana Costa', 'Auxiliar de Limpeza', '31988886666', 'Rua G, 700', '1990-03-10', '2021-05-10'),
('12345678903', 'Fernando Lima', 'Motorista', '31988887777', 'Rua H, 800', '1975-12-20', '2019-08-15');

INSERT INTO Doador (Nome, Endereco, Telefone, CPF_CNPJ)
VALUES
('Empresa XYZ', 'Avenida Principal, 1000', '31999990000', '12345678000101'),
('João Batista', 'Rua das Flores, 200', '31999991111', '98765432100'),
('Maria Clara', 'Rua do Sol, 300', '31999992222', '65432198700'),
('Associação ABC', 'Avenida Secundária, 500', '31999993333', '11122233000144');

INSERT INTO Doacao (Codigo, Data, Valor)
VALUES
('DOA001', '2024-01-01', 150.00),
('DOA002', '2024-01-15', 200.00),
('DOA003', '2024-02-01', 250.00),
('DOA004', '2024-02-15', 100.00);

INSERT INTO Consome (NomeRef, CPF_Func, CPF_Crianca)
VALUES
('Café da Manhã', '12345678901', '11111111111'),
('Almoço', '12345678901', '11111111111'),
('Lanche', '12345678902', '22222222222'),
('Jantar', '12345678903', '33333333333');

INSERT INTO Pertence (CodTurma, CPFAluno)
VALUES
('TURMA01', '11111111111'),
('TURMA02', '22222222222'),
('TURMA03', '33333333333'),
('TURMA04', '44444444444'),
('TURMA05', '55555555555');

INSERT INTO Doa (ID_Doador, CodigoDoacao)
VALUES
(1, 'DOA001'),
(2, 'DOA002'),
(3, 'DOA003'),
(4, 'DOA004');

INSERT INTO Recebe (CodDoacao, CPFCrianca)
VALUES
('DOA001', '11111111111'),
('DOA002', '22222222222'),
('DOA003', '33333333333'),
('DOA004', '44444444444');

INSERT INTO Lecionar (CPFProf, SiglaMateria)
VALUES
('12345678900', 'MAT001'),
('23456789011', 'MAT002'),
('34567890122', 'MAT003'),
('45678901233', 'MAT004'),
('56789012344', 'MAT005');

INSERT INTO HorarioRefeicao (CPFAluno, Cafe, Almoco, Lanche, Jantar)
VALUES
('11111111111', '07:30:00', '12:00:00', '15:00:00', '18:30:00'),
('22222222222', '07:45:00', '12:15:00', '15:15:00', '18:45:00'),
('33333333333', '08:00:00', '12:30:00', '15:30:00', '19:00:00'),
('44444444444', '08:15:00', '12:45:00', '15:45:00', '19:15:00'),
('55555555555', '08:30:00', '13:00:00', '16:00:00', '19:30:00');




