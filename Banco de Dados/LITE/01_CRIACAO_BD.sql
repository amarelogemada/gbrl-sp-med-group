CREATE DATABASE SPMEDGROUP_MANHA_LITE

USE SPMEDGROUP_MANHA_LITE


--Criando tabelas base
CREATE TABLE CLINICAS (
	ClinicaId INT IDENTITY PRIMARY KEY
	,
	NomeFantasia VARCHAR(250) NOT NULL
	,
	Endereco VARCHAR(250) NOT NULL
	,
	CEP VARCHAR(8) NOT NULL
	,
	Telefone VARCHAR(11) NOT NULL
	,
	RazaoSocial VARCHAR(250) NOT NULL
	,
	CNPJ VARCHAR(14) NOT NULL UNIQUE
	,
);

CREATE TABLE ESPECIALIDADES (
	EspecialidadeId INT IDENTITY PRIMARY KEY
	,
	EspecialidadeNome VARCHAR(250) UNIQUE
);

CREATE TABLE USUARIOS_TIPOS (
	UsuarioTipoId INT IDENTITY PRIMARY KEY
	,
	UsuarioTipo VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE STATUS_CONSULTAS (
	StatusId INT PRIMARY KEY IDENTITY
	,
	StatusTipo VARCHAR(30) NOT NULL UNIQUE
);

--Criando tabelas com dependÍncia de outras tabelas (com chaves estrangeiras)
CREATE TABLE USUARIOS (
	UsuarioId INT IDENTITY PRIMARY KEY
	,
	Email VARCHAR(250) NOT NULL UNIQUE
	,
	Senha VARCHAR(250) NOT NULL
	,
	IdUsuariosTipos INT FOREIGN KEY REFERENCES USUARIOS_TIPOS(UsuarioTipoId)
);

CREATE TABLE MEDICOS (
	MedicoId INT IDENTITY PRIMARY KEY
	,
	MedicoNome VARCHAR(250) NOT NULL
	,
	IdMedicoUsuario INT FOREIGN KEY REFERENCES USUARIOS(UsuarioId)
	,
	CRM VARCHAR(12) NOT NULL UNIQUE
	,
	IdMedicoEspecialidade INT FOREIGN KEY REFERENCES ESPECIALIDADES(EspecialidadeId)
	,
);


CREATE TABLE PRONTUARIOS (
	ProntuarioId INT PRIMARY KEY IDENTITY
	,
	Altura VARCHAR(10)
	,
	PesoAtual VARCHAR(10)
	,
	ObservacoesProntuario TEXT
);

CREATE TABLE PACIENTES (
	PacienteId INT PRIMARY KEY IDENTITY
	,
	PacienteNome VARCHAR(250) NOT NULL
	,
	IdPacienteUsuario INT FOREIGN KEY REFERENCES USUARIOS(UsuarioId)
	,
	RG VARCHAR(10) NOT NULL UNIQUE
	,
	CPF VARCHAR(11) NOT NULL UNIQUE
	,
	DataNascimento DATE NOT NULL
	,
	Endereco VARCHAR(250) NOT NULL
	,
	CEP VARCHAR(8) NOT NULL
	,
	Telefone VARCHAR(11) NOT NULL
	,
	IdPacienteProntuario INT FOREIGN KEY REFERENCES PRONTUARIOS(ProntuarioId)
);

CREATE TABLE CONSULTAS (
	ConsultaId INT PRIMARY KEY IDENTITY
	,
	IdConsultaMedico INT FOREIGN KEY REFERENCES MEDICOS(MedicoId)
	,
	IdConsultaPaciente INT FOREIGN KEY REFERENCES PACIENTES(PacienteId)
	,
	DataConsulta DATE NOT NULL
	,
	HoraConsulta TIME NOT NULL
	,
	IdConsultaStatus INT FOREIGN KEY REFERENCES STATUS_CONSULTAS(StatusId)
	,
	ObservacoesConsulta TEXT
);