CREATE DATABASE CONCESIONARIO_AGUILERA
USE CONCESIONARIO_AGUILERA

CREATE TABLE Persona (
    IDPersona INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Estado VARCHAR(50)
);

CREATE TABLE Empleado (
    IDEmpleado INT PRIMARY KEY,
    IDPersona INT,
    Puesto VARCHAR(50),
    Salario DECIMAL(10, 2),
    FechaContratacion DATE,
    FOREIGN KEY (IDPersona) REFERENCES Persona(IDPersona)
);

INSERT INTO Persona VALUES
    (1, 'Jorge', 'P�rez', 'Activo'),
    (2, 'Mar�a', 'Gonz�lez', 'Activo'),
    (3, 'Pedro', 'Mart�nez', 'Inactivo'),
    (4, 'Ana', 'L�pez', 'Activo'),
    (5, 'Carlos', 'S�nchez', 'Inactivo'),
    (6, 'Laura', 'Rodr�guez', 'Activo'),
    (7, 'Diego', 'Fern�ndez', 'Activo'),
    (8, 'Sof�a', 'D�az', 'Inactivo'),
    (9, 'Pablo', 'G�mez', 'Activo'),
    (10, 'Elena', 'Ruiz', 'Activo');

INSERT INTO Empleado VALUES
    (1, 1, 'Gerente General', 12000, '2020-01-15'),
    (2, 2, 'Gerente de Ventas', 10000, '2020-03-20'),
    (3, 3, 'Analista Financiero', 8500, '2020-05-10'),
    (4, 4, 'Recepcionista', 5500, '2020-06-05'),
    (5, 5, 'Contador', 7100, '2020-07-12'),
    (6, 6, 'Gerente de Servicio', 6400, '2020-08-25'),
    (7, 7, 'Asistente de Ventas', 5300, '2020-09-30'),
    (8, 8, 'T�cnico de Reparaci�n', 5000, '2020-10-17'),
    (9, 9, 'Vendedor 1', 6000, '2020-11-22'),
    (10, 10, 'Vendedor 2', 6000, '2020-12-01');

	Select * from Empleado;