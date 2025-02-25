create database escuelita;

go;

use escuelita;

CREATE TABLE Persona(
  CURP CHAR(18) NOT NULL PRIMARY KEY,
  Nombre nvarchar(50) NOT NULL,
  Direccion nvarchar(100) NULL,
  Nacimiento DATE NOT NULL,
);

CREATE TABLE Carrera (
  Clave CHAR(13) NOT NULL PRIMARY KEY,
  Nombre varchar(60) NOT NULL,
);

CREATE TABLE Alumno (
  CURP CHAR(18) NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Persona(CURP),
  NumeroDeControl char(8) NOT NULL UNIQUE
  ClaveCarrera CHAR(13) FOREIGN KEY REFERENCES Carrera(Clave)
);
