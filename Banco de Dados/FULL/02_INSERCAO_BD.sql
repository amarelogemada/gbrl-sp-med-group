INSERT INTO CLINICAS
VALUES
	('Vida e Sa�de' , 'Rua Bar�o de Limeira, 539' , '03125120' , '1155674322' , 'SP Medical Group LTDA' , '38343987000101')
	,
	('Bem Viver' , 'Rua Tobias Barreto, 2200' , '03134130' , '1155694330' , 'SP Medical Group LTDA' , '38343987000102'); 


INSERT INTO ESPECIALIDADES
VALUES
	('Cl�nica Geral')
	,
	('Oftalmologia')
	,
	('Otorrinlaringologia')
	,
	('Pediatria')
	,
	('Geriatria');

INSERT INTO METODOS_TERAPEUTICOS
VALUES
	('Homeopatia')
	,
	('Medicina Ayurveda')
	,
	('Reiki')
	,
	('Microfisioterapia');

INSERT INTO USUARIOS_TIPOS
VALUES
	('ADMINISTRADOR')
	,
	('PACIENTE')
	,
	('M�DICO');

INSERT INTO GENEROS
VALUES
	('Mulher cisg�nero')
	,
	('Mulher transg�nero')
	,
	('Homem cisg�nero')
	,
	('Homem transg�nero')
	,
	('Outros');

INSERT INTO STATUS_CONSULTAS
VALUES
	('Confirmada')
	,
	('Cancelada')
	,
	('Finalizada')
	,
	('Retorno');

INSERT INTO USUARIOS
VALUES

	('admin@admin.com', '12345','1')
	,
	('carlos@email.com', '12345','2')
	,
	('marilucia@email.com', '1236','3');

INSERT INTO MEDICOS
VALUES
	('Maria Lucia','3', '12345678901','1','2');

INSERT INTO PRONTUARIOS
VALUES
	('1', '1,60','50Kg', 'N�o tomou vacina contra febre amarela');

INSERT INTO PACIENTES
VALUES
	('Carlos Roberto', '2', '402345670', '33845634520' , '12-04-2010' , 'Rua Prestes, 500', '03231100' , '1155636512' , '1');

INSERT INTO CONSULTAS
VALUES
	('1','3','2','20-02-2019', '12:00','1', 'Precisa de atendimento com urg�ncia')

INSERT INTO PRONTUARIOS_CONSULTAS
VALUES
	('1', '3')

INSERT INTO MEDICOS_CLINICAS
VALUES
	('1', '2')