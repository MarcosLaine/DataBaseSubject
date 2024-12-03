CREATE DATABASE AMPC;
USE AMPC;

CREATE TABLE Refeicao (
    Nome VARCHAR(100) NOT NULL,
    Qtde_Repete INT NOT NULL,
    Qtde_Crianca INT NOT NULL,
    PRIMARY KEY (Nome)
);

CREATE TABLE Crianca (
    CPF CHAR(11) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    DataNasc DATE NOT NULL,
    Matricula VARCHAR(50) NOT NULL,
    NomeMae VARCHAR(100),
    NomePai VARCHAR(100),
    NumCAPS INT,
    FichaSocio VARCHAR(50),
    Turma VARCHAR(50) NOT NULL,
    PRIMARY KEY (CPF)
);


CREATE TABLE Turma (
    Codigo VARCHAR(50) NOT NULL,
    Qtde_Alunos INT NOT NULL,
    FaixaEtaria VARCHAR(50) NOT NULL,
    CPF_Prof CHAR(11) NOT NULL,
    PRIMARY KEY (Codigo)
);

CREATE TABLE Materia (
    Sigla VARCHAR(10) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Serie VARCHAR(50) NOT NULL,
    PRIMARY KEY (Sigla)
);

CREATE TABLE Professor (
    CPF CHAR(11) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Funcao VARCHAR(50) NOT NULL,
    Telefone VARCHAR(15),
    Endereco VARCHAR(255),
    DataNasc DATE NOT NULL,
    Materia VARCHAR(10) NOT NULL,
    FiscalizaTurma VARCHAR(50),
    PRIMARY KEY (CPF),
    FOREIGN KEY (Materia) REFERENCES Materia(Sigla),
    FOREIGN KEY (FiscalizaTurma) REFERENCES Turma(Codigo)
);


CREATE TABLE Funcionario (
    CPF CHAR(11) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Funcao VARCHAR(50) NOT NULL,
    Telefone VARCHAR(15),
    Endereco VARCHAR(255),
    DataNasc DATE NOT NULL,
    DataAdmissao DATE NOT NULL,
    PRIMARY KEY (CPF)
);


CREATE TABLE Doador (
    ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255),
    Telefone VARCHAR(15),
    CPF_CNPJ CHAR(14) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Doacao (
    Codigo VARCHAR(50) NOT NULL,
    Data DATE NOT NULL,
    Valor DECIMAL(10, 2),
    PRIMARY KEY (Codigo)
);


CREATE TABLE Consome (
    NomeRef VARCHAR(100) NOT NULL,
    CPF_Func CHAR(11) NOT NULL,
    CPF_Crianca CHAR(11) NOT NULL,
    PRIMARY KEY (NomeRef, CPF_Func, CPF_Crianca),
    FOREIGN KEY (NomeRef) REFERENCES Refeicao(Nome),
    FOREIGN KEY (CPF_Crianca) REFERENCES Crianca(CPF)
);



CREATE TABLE Pertence (
    CodTurma VARCHAR(50) NOT NULL,
    CPFAluno CHAR(11) NOT NULL,
    PRIMARY KEY (CodTurma, CPFAluno),
    FOREIGN KEY (CodTurma) REFERENCES Turma(Codigo),
    FOREIGN KEY (CPFAluno) REFERENCES Crianca(CPF)
);


CREATE TABLE Doa (
    ID_Doador INT NOT NULL,
    CodigoDoacao VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Doador, CodigoDoacao),
    FOREIGN KEY (ID_Doador) REFERENCES Doador(ID),
    FOREIGN KEY (CodigoDoacao) REFERENCES Doacao(Codigo)
);


CREATE TABLE Recebe (
    CodDoacao VARCHAR(50) NOT NULL,
    CPFCrianca CHAR(11) NOT NULL,
    PRIMARY KEY (CodDoacao, CPFCrianca),
    FOREIGN KEY (CodDoacao) REFERENCES Doacao(Codigo),
    FOREIGN KEY (CPFCrianca) REFERENCES Crianca(CPF)
);



CREATE TABLE Lecionar (
    CPFProf CHAR(11) NOT NULL,
    SiglaMateria VARCHAR(10) NOT NULL,
    PRIMARY KEY (CPFProf, SiglaMateria),
    FOREIGN KEY (CPFProf) REFERENCES Professor(CPF),
    FOREIGN KEY (SiglaMateria) REFERENCES Materia(Sigla)
);

CREATE TABLE HorarioRefeicao (
    CPFAluno CHAR(11) NOT NULL,
    Cafe TIME,
    Almoco TIME,
    Lanche TIME,
    Jantar TIME,
    PRIMARY KEY (CPFAluno),
    FOREIGN KEY (CPFAluno) REFERENCES Crianca(CPF)
);