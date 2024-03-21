CREATE DATABASE EMPRESAJORGE
use EMPRESAJORGE

CREATE TABLE PERSONA (
IDPERSONA INT IDENTITY (1,1) NOT NULL,
NOMBRE NVARCHAR (50) NOT NULL,
APELLIDO NVARCHAR (50) NOT NULL,
ESTADO NVARCHAR (20) NOT NULL,
PRIMARY KEY (IDPERSONA),
);

CREATE TABLE EMPLEADO (
IDEMPLEADO INT IDENTITY (1,1) NOT NULL,
IDPERSONA INT NOT NULL,
PUESTO NVARCHAR (50) NOT NULL,
SALARIO NVARCHAR (50) NOT NULL,
FECHA_CONTRATACION DATETIME NOT NULL,
PRIMARY KEY (IDEMPLEADO),
FOREIGN KEY (IDPERSONA) REFERENCES PERSONA (IDPERSONA)
);


insert into PERSONA values('Pedro' ,'Fernandez','Activo');
insert into PERSONA values('Adrian' ,'Jerez','Inactivo');
insert into PERSONA values('Jorge' ,'Pantoja','Activo');
insert into PERSONA values('Gerardo' ,'Gomez','Activo');
insert into PERSONA values('Hugo' ,'Pacheco','Activo');
insert into PERSONA values('Karen' ,'Vargas','Activo');
insert into PERSONA values('Luis' ,'Castro','Inactivo');
insert into PERSONA values('Pablo' ,'Leon','Activo');
insert into PERSONA values('Kevin' ,'Castillo','Inactivo');
insert into PERSONA values('Jhon' ,'Cenna','Activo');
insert into PERSONA values('Ernesto' ,'Alvarez','Activo');

SELECT * FROM PERSONA

insert into EMPLEADO values (1, 'Gerente','12000', '2022-02-01 14:00:00');
insert into EMPLEADO values (2, 'Supervisor', '9000', '2022-02-23 13:50:00');
insert into EMPLEADO values (3, 'Asesor Financiero', '8400', '2022-03-15 09:20:00');
insert into EMPLEADO values (4, 'Director de Recursos Humanos', '5539', '2022-05-20 18:25:00');
insert into EMPLEADO values (5, 'Mantenimiento', '2664', '2022-05-21 15:30:00');
insert into EMPLEADO values (6, 'Vendedor 1', '7655', '2022-06-06 16:45:00');
insert into EMPLEADO values (7, 'Vendedor 2', '7655', '2022-06-06 12:32:00');
insert into EMPLEADO values (8, 'Vendedor 3', '9048', '2022-08-14 12:01:00');
insert into EMPLEADO values (9, 'Vendedor 4', '3590', '2022-09-30 11:28:00');
insert into EMPLEADO values (10, 'Mecanico', '4916', '2022-10-29 14:11:00');
insert into EMPLEADO values (11, 'Mecanico', '9719', '2022-12-27 10:15:00');

SELECT * FROM EMPLEADO