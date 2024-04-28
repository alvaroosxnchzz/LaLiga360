use laliga;

INSERT INTO Equipos (EquipoID, Nombre, Abrebiatura, Posicion, Puntos, PartidosJugados, PartidosGanados, PartidosEmpatados, PartidosPerdidos, GolesFavor, GolesContra, Ciudad, Fundacion, Estadio, Escudo, FotoEstadio, FotoLiga, EntrenadorID)
VALUES
    (1, 'Barcelona', 'BCF', 2, 67, 30, 20, 7, 3, 61, 20,  'Barcelona', 1899, 'Spotify Camp Nou', 'ESCUDOS/barcelona.png', 'ESTADIOS/campnou.jpg', 'ESCUDOS/LaLiga.png', 1),
    (2, 'Real Madrid', 'RMF', 1, 75, 30, 23, 6, 1, 66, 20, 'Madrid', 1902, 'Santiago Bernabeu', 'ESCUDOS/madrid.png', 'ESTADIOS/bernabeu.jpg', 'ESCUDOS/LaLiga.png', 2),
    (3, 'Atlético de Madrid', 'ATM', 4, 58, 30, 18, 4, 8, 56, 35, 'Madrid', 1903, 'Wanda Metropolitano', 'ESCUDOS/atletico.png', 'ESTADIOS/metropolitano.jpg', 'ESCUDOS/LaLiga.png', 3),
    (4, 'Cadíz', 'CAD', 18, 25, 30, 2, 8, 20, 30, 60, 'Cádiz', 1910, 'Nuevo Mirandilla', 'ESCUDOS/cadiz.png', 'ESTADIOS/mirandilla.jpg', 'ESCUDOS/LaLiga.png', 4),
    (5, 'Girona', 'GIR', 3, 65, 30, 20, 5, 5, 62, 36, 'Girona', 1930, 'Montilivi', 'ESCUDOS/girona.png', 'ESTADIOS/montilivi.jpg', 'ESCUDOS/LaLiga.png', 5),
    (6, 'Athletic Club de Bilbao', 'ATH', 5, 56, 30, 16, 8, 6, 50, 35, 'Bilbao', 1898, 'San Mamés', 'ESCUDOS/bilbao.png', 'ESTADIOS/sanmames.jpg', 'ESCUDOS/LaLiga.png', 6),
    (7, 'Real Betis', 'BET', 8, 42, 30, 11, 6, 13, 36, 43, 'Sevilla', 1907, 'Benito Villamarín', 'ESCUDOS/betis.png', 'ESTADIOS/benitovillamarin.jpg', 'ESCUDOS/LaLiga.png', 7),
    (8, 'Real Sociedad', 'RSO', 6, 49, 30, 13, 10, 7, 43, 31, 'San Sebastián', 1909, 'Anoeta', 'ESCUDOS/real.png', 'ESTADIOS/realsociedad.jpg', 'ESCUDOS/LaLiga.png', 8),
    (9, 'Union Deportiva Las Palmas', 'UDL', 12, 37, 30, 10, 7, 13, 29, 33, 'Las Palmas De Gran Canaria', 1949, 'Gran Canaria', 'ESCUDOS/palmas.png', 'ESTADIOS/grancanaria.jpg', 'ESCUDOS/LaLiga.png', 9),
    (10, 'Valencia CF', 'VCF', 7, 44, 30, 12, 8, 10, 33, 32, 'Valencia', 1919, 'Mestalla', 'ESCUDOS/valencia.png', 'ESTADIOS/mestalla.jpg', 'ESCUDOS/LaLiga.png', 10),
    (11, 'Getafe CF', 'GET', 11, 38, 30, 9, 11, 10, 37, 43, 'Getafe', 1983, 'Coliseum Alfonso Pérez', 'ESCUDOS/getafe.png', 'ESTADIOS/coliseum.jpg', 'ESCUDOS/LaLiga.png', 11),
    (12, 'Osasuna', 'OSA', 9, 39, 30, 11, 6, 13, 36, 43, 'Pamplona', 1920, 'El Sadar', 'ESCUDOS/osasuna.png', 'ESTADIOS/elsadar.jpg', 'ESCUDOS/LaLiga.png', 12),
    (13, 'Deportivo Alavés', 'ALA', 13, 32, 30, 8, 8, 14, 26, 36, 'Vitoria', 1921, 'Mendizorroza', 'ESCUDOS/alaves.png', 'ESTADIOS/mendizorroza.jpg', 'ESCUDOS/LaLiga.png', 13),
    (14, 'Villarreal FC', 'VIL', 10, 38, 30, 10, 8, 12, 48, 53, 'Villarreal', 1923, 'Estadio de la Cerámica', 'ESCUDOS/villarreal.png', 'ESTADIOS/laceramica.jpg', 'ESCUDOS/LaLiga.png', 14),
    (15, 'Rayo Vallecano', 'RAY', 16, 30, 30, 6, 12, 12, 25, 35, 'Puente de Vallecas', 1924, 'Vallecas', 'ESCUDOS/rayo.png', 'ESTADIOS/vallecas.jpg', 'ESCUDOS/LaLiga.png', 15),
    (16, 'Sevilla FC', 'SEV', 14, 31, 30, 7, 10, 13, 37, 44, 'Sevilla', 1890, 'Ramón Sánchez Pizjuán', 'ESCUDOS/sevilla.png', 'ESTADIOS/sanchezpizjuan.jpg', 'ESCUDOS/LaLiga.png', 16),
    (17, 'Mallorca', 'MLL', 15, 31, 30, 6, 13, 11, 25, 35, 'Palma de Mallorca', 1916, 'Estadi Mallorca Son Moix', 'ESCUDOS/mallorca.png', 'ESTADIOS/sonmoix.jpg', 'ESCUDOS/LaLiga.png', 17),
    (18, 'RC Celta', 'CEL', 17, 28, 30, 6, 10, 14, 32, 44, 'Vigo', 1923, 'Abanca Balaídos', 'ESCUDOS/celta.png', 'ESTADIOS/balaidos.jpg', 'ESCUDOS/LaLiga.png', 18),
    (19, 'Granada CF', 'GRA', 19, 14, 30, 2, 8, 20, 30, 60,  'Granada', 1931, 'Nuevo Los Cármenes', 'ESCUDOS/granada.png', 'ESTADIOS/nuevocarmenes.jpg', 'ESCUDOS/LaLiga.png', 19),
    (20, 'Almería', 'ALM', 20, 13, 30, 1, 10, 19, 28, 60, 'Almeria', 1989, 'Juegos del Mediterráneo', 'ESCUDOS/almeria.png', 'ESTADIOS/almeria.jpg', 'ESCUDOS/LaLiga.png', 20);
