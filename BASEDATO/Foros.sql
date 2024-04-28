DROP DATABASE IF EXISTS foro;
CREATE DATABASE foro;
USE foro;
CREATE TABLE threads (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  content TEXT,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar un thread sobre el líder actual de LaLiga
INSERT INTO threads (title, description, content) VALUES ('El líder actual de LaLiga', 'Discusión sobre el equipo que lidera la clasificación', '¿Qué opinas sobre el rendimiento del líder actual de LaLiga? ¿Crees que mantendrá su posición hasta el final de la temporada?');

-- Insertar un thread sobre el clásico español
INSERT INTO threads (title, description, content) VALUES ('El clásico español: Real Madrid vs Barcelona', 'Debate sobre el enfrentamiento más emblemático de LaLiga', '¿Cuál ha sido tu momento favorito en los enfrentamientos entre Real Madrid y Barcelona en LaLiga? ¿Qué esperas del próximo clásico?');

-- Insertar un thread sobre el máximo goleador de LaLiga
INSERT INTO threads (title, description, content) VALUES ('El máximo goleador de LaLiga', 'Hablemos sobre el jugador que lidera la tabla de goleadores', '¿Quién crees que será el máximo goleador de LaLiga al final de la temporada? ¿Por qué?');

-- Insertar un thread sobre el equipo revelación de LaLiga
INSERT INTO threads (title, description, content) VALUES ('El equipo revelación de LaLiga', 'Análisis del rendimiento sorprendente de un equipo en la temporada', '¿Cuál crees que es el equipo revelación de esta temporada en LaLiga? ¿Qué aspectos destacarías de su juego?');

-- Insertar un thread sobre la lucha por la permanencia en LaLiga
INSERT INTO threads (title, description, content) VALUES ('Lucha por la permanencia en LaLiga', 'Discusión sobre los equipos que luchan por mantenerse en la máxima categoría', '¿Qué equipos crees que estarán en la zona de descenso al final de la temporada? ¿Quiénes lograrán mantenerse en LaLiga?');

