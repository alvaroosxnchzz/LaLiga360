DROP DATABASE IF EXISTS LaLiga;
CREATE DATABASE LaLiga;
USE LaLiga;

-- Tabla para Entrenadores
CREATE TABLE Entrenadores (
    EntrenadorID INT PRIMARY KEY AUTO_INCREMENT,
    NombreEntrenador VARCHAR(100),
    Nacionalidad VARCHAR(100),
    FechaNacimiento VARCHAR(50),
    FotoEntrenador VARCHAR(200)
);

-- Tabla para Equipos
CREATE TABLE Equipos (
    EquipoID INT PRIMARY KEY AUTO_INCREMENT,
    Abrebiatura VARCHAR(3),
    Nombre VARCHAR(100),
    Posicion INT,
    Puntos INT,
    PartidosJugados INT,
    PartidosGanados INT,
    PartidosEmpatados INT,
    PartidosPerdidos INT,
    GolesFavor INT,
    GolesContra INT,
    Ciudad VARCHAR(100),
    Fundacion INT,
    Estadio VARCHAR(150),
    Escudo VARCHAR(200),
    FotoEstadio VARCHAR(200),
    FotoLiga VARCHAR(200),
    EntrenadorID INT,
    FOREIGN KEY (EntrenadorID) REFERENCES Entrenadores(EntrenadorID)
);

-- Tabla para Jugadores
CREATE TABLE Jugadores (
    JugadorID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Edad INT,
    Nacionalidad VARCHAR(100),
    Posicion VARCHAR(100),
    Goles INT,
    Asistencias INT,
    TarjetasAmarillas INT,
    TarjetasRojas INT,
    PartidosJugados INT,
    FotoJugador VARCHAR(200),
    EquipoID INT,
    FOREIGN KEY (EquipoID) REFERENCES Equipos(EquipoID)
);
