use laliga;
INSERT INTO Jugadores (JugadorID, Nombre, Edad, Nacionalidad, Posicion, Goles, Asistencias, TarjetasAmarillas, TarjetasRojas, PartidosJugados, FotoJugador, EquipoID)
VALUES
(1, 'Marc-André Ter Stegen',  31, 'Alemania', 'Portero', 0, 0, 1, 0, 18, 'JUGADORES/stegen.jpg', 1),
(2, 'Iñaki Peña', 24, 'España', 'Portero', 0, 0, 0, 0, 18, 'JUGADORES/iñaki.jpg', 1),
(3, 'Jules Koundé', 25, 'Francia', 'Defensa Central', 2, 3, 1, 0, 30, 'JUGADORES/kounde.jpg', 1),
(4, 'Ronald Araujo', 24, 'Uruguay', 'Defensa Central', 1, 0, 7, 1, 26, 'JUGADORES/araujo.jpg', 1),
(5, 'Joao Cancelo', 29, 'Portugal', 'Lateral Derecho', 3, 4, 5, 0, 26, 'JUGADORES/cancelo.jpg', 1),
(6, 'Andrea Christensen', 27, 'Dinamarca', 'Defensa Central', 0, 1, 3, 0, 27, 'JUGADORES/christensen.jpg', 1),
(7, 'Alejandro Balde', 20, 'España', 'Lateral Izquierdo', 1, 1, 2, 0, 28, 'JUGADORES/balde.jpg', 1),
(8, 'Marcos Alonso', 33, 'España', 'Lateral Izquierdo', 0, 0, 0, 0, 7, 'JUGADORES/alonso.jpg', 1),
(9, 'Iñigo Martinez', 32, 'España', 'Defensa Central', 0, 0, 2, 0, 13, 'JUGADORES/iñigo.jpg', 1),
(10, 'Pau Cubarsi', 17, 'España', 'Defensa Central', 0, 1, 5, 0, 26, 'JUGADORES/cubarsi.jpg', 1),
(11, 'Ilkay Gündogan', 33, 'Alemania', 'Medio Centro', 5, 10, 2, 0, 35, 'JUGADORES/gundogan.jpg', 1),
(12, 'Frenkie De Jong', 26, 'Holanda', 'Medio Centro', 1, 0, 8, 0, 23, 'JUGADORES/dejong.jpg', 1),
(13, 'Pablo Gavi', 19, 'España', 'Medio Centro', 2, 1, 7, 1, 15, 'JUGADORES/gavi.jpg', 1),
(14, 'Pedri Gonzalez', 21, 'España', 'Medio Centro', 2, 3, 3, 0, 20, 'JUGADORES/pedri.jpg', 1),
(15, 'Oriol Romeu', 32, 'España', 'Medio Centro', 0, 1, 4, 0, 24, 'JUGADORES/oriol.jpg', 1),
(16, 'Sergi Roberto', 32, 'España', 'Medio Centro', 3, 1, 5, 0, 14, 'JUGADORES/roberto.jpg', 1),
(17, 'Fermím López', 20, 'España', 'Medio Centro', 3, 0, 3, 1, 26, 'JUGADORES/fermin.jpg', 1),
(18, 'Robert Lewandowski', 35, 'Polonia', 'Delantero Centro', 15, 5, 4, 0, 32, 'JUGADORES/lewandowski.jpg', 1),
(19, 'Joao Felix', 24, 'Portugal', 'Delantero Centro', 7, 5, 5, 0, 28, 'JUGADORES/joaofelix.jpg', 1),
(20, 'Raphinha', 27, 'Brasil', 'Extremo Derecho', 4, 6, 2, 1, 21, 'JUGADORES/raphinha.jpg', 1),
(21, 'Vitor Roque', 18, 'Brasil', 'Delantero Centro', 2, 0, 2, 1, 7, 'JUGADORES/vitorroque.jpg', 1),
(22, 'Ferran Torres', 23, 'España', 'Extremo Izquierdo', 11, 3, 5, 0, 32, 'JUGADORES/ferran.jpg', 1),
(23, 'Lamine Yamal', 16, 'España', 'Extremo Derecho', 5, 3, 4, 0, 33, 'JUGADORES/lamine.jpg', 1),
-- Real Madrid
(24, 'Thibaut Nicolas Marc Courtois', 31, 'Belgica', 'Portero', 0, 0, 0, 0, 0, 'JUGADORES/courtois.jpg', 2),
(25, 'Kepa Arrizabalaga Revuelta', 29, 'España', 'Portero', 0, 0, 2, 0, 12, 'JUGADORES/kepa.jpg', 2),
(26, 'Andriy Lunin', 25, 'Ucrania', 'Portero', 0, 0, 1, 0, 12, 'JUGADORES/lunin.jpg', 2),
(27, 'Antonio Rüdiger', 30, 'Alemania', 'Defensa Central', 2, 1, 8, 0, 30, 'JUGADORES/rudiger.jpg', 2),
(28, 'David Alaba', 31, 'Austria', 'Defensa Central', 0, 1, 3, 0, 17, 'JUGADORES/alaba.jpg', 2),
(29, 'Éder Militao', 26, 'Brasil', 'Defensa Central', 0, 0, 0, 0, 1, 'JUGADORES/militao.jpg', 2),
(30, 'Dani Carvajal', 32, 'España', 'Lateral Derecho', 3, 2, 4, 0, 27, 'JUGADORES/carvajal.jpg', 2),
(31, 'Ferland Mendy', 28, 'Francia', 'Lateral Izquierdo', 0, 0, 5, 0, 23, 'JUGADORES/mendy.jpg', 2),
(32, 'Nacho', 34, 'España', 'Defensa Central', 0, 0, 2, 2, 27, 'JUGADORES/nacho.jpg', 2),
(33, 'Fran García', 24, 'España', 'Lateral Izquierdo', 0, 4, 1, 0, 24, 'JUGADORES/fran.jpg', 2),
(34, 'Lucas Vazquez', 32, 'España', 'Lateral Derecho', 1, 3, 1, 0, 24, 'JUGADORES/vazquez.jpg', 2),
(35, 'Jude Bellingham', 20, 'Inglaterra', 'Media Punta', 20, 8, 9, 0, 29, 'JUGADORES/jude.jpg', 2),
(36, 'Federico Valverde', 25, 'Uruguay', 'Medio Centro', 1, 3, 1, 0, 35, 'JUGADORES/valverde.jpg', 2),
(37, 'Toni Kross', 34, 'Alemania', 'Medio Centro', 1, 7, 2, 0, 32, 'JUGADORES/kross.jpg', 2),
(38, 'Luka Modriç', 38, 'Croacia', 'Medio Centro', 1, 5, 1, 0, 28, 'JUGADORES/modric.jpg', 2),
(39, 'Aurélien Tchouaméni', 24, 'Francia', 'Medio Centro Defensivo', 2, 1, 7, 0, 25, 'JUGADORES/tchouameni.jpg', 2),
(40, 'Brahim Díaz', 24, 'España', 'Media Punta', 8, 3, 2, 0, 28, 'JUGADORES/brahim.jpg', 2),
(41, 'Eduardo Camavinga', 21, 'Francia', 'Medio Centro', 0, 2, 7, 0, 27, 'JUGADORES/camavinga.jpg', 2),
(42, 'Daniel Ceballos', 27, 'España', 'Medio Centro', 1, 0, 1, 0, 19, 'JUGADORES/ceballos.jpg', 2),
(43, 'Vinicius Júnior', 23, 'Brasil', 'Extremo Izquierdo', 12, 6, 4, 0, 22, 'JUGADORES/vini.jpg', 2),
(44, 'Rodrygo Goes', 23, 'Brasil', 'Extremo Derecho', 13, 7, 2, 0, 35, 'JUGADORES/rodrygo.jpg', 2),
(45, 'Joselu Mato', 33, 'España', 'Delantero Centro', 12, 3, 0, 0, 34, 'JUGADORES/joselu.jpg', 2),
-- Atletico De Madrid
(46, 'Jan Oblak', 31, 'Eslovenia', 'Portero', 0, 0, 1, 0, 35, 'JUGADORES/oblak.jpg', 3),
(47, 'Moldovan', 26, 'Rumania', 'Portero', 0, 0, 0, 0, 24, 'JUGADORES/moldovan.jpg', 3),
(48, 'Nahuel Molina', 25, 'Argentina', 'Lateral Derecho', 2, 4, 3, 0, 32, 'JUGADORES/molina.jpg', 3),
(49, 'Axel Witsel', 35, 'Belgica', 'Defensa Central', 1, 0, 4, 0, 34, 'JUGADORES/witsel.jpg', 3),
(50, 'Mario Hermoso', 28, 'España', 'Defensa Central', 2, 1, 9, 0, 31, 'JUGADORES/hermoso.jpg', 3),
(51, 'José María Giménez', 29, 'Uruguay', 'Defensa Central', 0, 1, 6, 0, 23, 'JUGADORES/gimenez.jpg', 3),
(52, 'Stefan Saviç', 33, 'Montenegro', 'Defensa Central', 0, 0, 5, 1, 20, 'JUGADORES/savic.jpg', 3),
(53, 'Reinildo Mandava', 30, 'Mozambique', 'Lateral Izquierdo', 1, 0, 1, 0, 5, 'JUGADORES/reinildo.jpg', 3),
(54, 'Azpilicueta', 34, 'España', 'Lateral Derecho', 0, 1, 5, 0, 22, 'JUGADORES/azpilicueta.jpg', 3),
(55, 'Gabriel Paulista', 33, 'Brasil', 'Defensa Central', 0, 0, 5, 1, 20, 'JUGADORES/paulista.jpg', 3),
(56, 'Koke', 32, 'Español', 'Medio Centro', 0, 3, 6, 0, 31, 'JUGADORES/koke.jpg', 3),
(57, 'Rodrigo de Paul', 29, 'Argentina', 'Medio Centro', 0, 5, 6, 1, 30, 'JUGADORES/rodrigopaul.jpg', 3),
(58, 'Marcos Llorente', 29, 'España', 'Medio Centro', 4, 5, 3, 0, 34, 'JUGADORES/llorente.jpg', 3),
(59, 'Saúl Ñíguez', 29, 'España', 'Medio Centro', 1, 4, 6, 0, 34, 'JUGADORES/saul.jpg', 3),
(60, 'Thomas Lemar', 28, 'Francia', 'Media Punta', 0, 0, 0, 0, 3, 'JUGADORES/lemar.jpg', 3),
(61, 'Pablo Barrios', 20, 'España', 'Medio Centro', 1, 2, 3, 0, 20, 'JUGADORES/barrios.jpg', 3),
(62, 'Rodrigo Riquelme', 23, 'España', 'Extremo Izquierdo', 3, 3, 1, 0, 29, 'JUGADORES/riquelme.jpg', 3),
(63, 'Angel Correa', 28, 'Argentina', 'Extremo Derecho', 5, 2, 2, 0, 29, 'JUGADORES/correa.jpg', 3),
(64, 'Memphis Depay', 30, 'Holanda', 'Delantero Centro', 7, 2, 1, 0, 20, 'JUGADORES/memphis.jpg', 3),
(65, 'Samuel Lino', 24, 'Brasil', 'Extremo Izquierdo', 6, 5, 2, 0, 28, 'JUGADORES/samulino.jpg', 3),
(66, 'Alvaro Morata', 31, 'España', 'Delantero Centro', 19, 2, 4, 1, 33, 'JUGADORES/morata.jpg', 3),
(67, 'Antoine Griezmann', 32, 'Francia', 'Delantero Centro', 18, 7, 5, 0, 35, 'JUGADORES/griezzman.jpg', 3),
-- Girona FC
(101, 'Gazzaniga', 32, 'Argentina', 'Portero', 0, 0, 2, 0, 24, 'JUGADORES/gazzaniga.jpg', 5),
(102, 'Juan Carlos', 36, 'España', 'Portero', 0, 0, 0, 0, 4, 'JUGADORES/juancarlos.jpg', 5),
(103, 'Daley Blind', 33, 'Holanda', 'Defensa Central', 3, 2, 6, 0, 26, 'JUGADORES/blind.jpg', 5),
(104, 'Miguel Gutierrez', 22, 'España', 'Lateral Izquierdo', 1, 5, 3, 0, 28, 'JUGADORES/miguel.jpg', 5),
(105, 'Arnau Martinez', 20, 'España', 'Lateral Derecho', 0, 3, 4, 0, 20, 'JUGADORES/arnau.jpg', 5),
(106, 'Eric Garcia', 23, 'España', 'Defensa Central', 1, 0, 2, 0, 19, 'JUGADORES/eric.jpg', 5),
(107, 'David López', 34, 'España', 'Defensa Central', 2, 0, 3, 0, 15, 'JUGADORES/david.jpg', 5),
(108, 'Yan Couto', 21, 'Brasil', 'Lateral Derecho', 2, 6, 6, 0, 28, 'JUGADORES/couto.jpg', 5),
(109, 'Juanpe Ramírez', 32, 'España', 'Defensa Central', 0, 0, 4, 0, 14, 'JUGADORES/juanpe.jpg', 5),
(110, 'Aleix García', 26, 'España', 'Medio Centro', 3, 4, 2, 1, 26, 'JUGADORES/aleix.jpg', 5),
(111, 'Yangel Herrera', 26, 'Venezuela', 'Medio Centro', 4, 0, 5, 0, 20, 'JUGADORES/yangel.jpg', 5),
(112, 'Iván Martín', 25, 'España', 'Media Punta', 4, 1, 3, 0, 27, 'JUGADORES/ivan.jpg', 5),
(113, 'Pablo Torre', 20, 'España', 'Media Punta', 1, 1, 0, 0, 20, 'JUGADORES/pablo.jpg', 5),
(114, 'Jhon Solis', 19, 'Colombia', 'Medio Centro', 0, 1, 0, 0, 14, 'JUGADORES/solis.jpg', 5),
(115, 'Tsygankov', 26, 'Ucrania', 'Extremo Derecho', 4, 3, 0, 0, 23, 'JUGADORES/tsygankov.jpg', 5),
(116, 'Artem Dovbyk', 26, 'Ucrania', 'Delantero Centro', 15, 7, 1, 0, 27, 'JUGADORES/dovbyk.jpg', 5),
(117, 'Savinho', 19, 'Brasil', 'Extremo Izquierdo', 7, 7, 4, 0, 28, 'JUGADORES/savinho.jpg', 5),
(118, 'Portu', 31, 'España', 'Extremo Derecho', 4, 6, 1, 0, 27, 'JUGADORES/portu.jpg', 5),
(119, 'Stuani', 37, 'Uruguay', 'Delantero Centro', 12, 2, 7, 0, 27, 'JUGADORES/stuani.jpg', 5),
(120, 'Valery', 24, 'España', 'Extremo Derecho', 4, 1, 1, 0, 25, 'JUGADORES/valery.jpg', 5),

-- Athletic Club
(121, 'Unai Simón', 26, 'España', 'Portero', 0, 0, 2, 0, 24, 'JUGADORES/BILBAO/unai.jpg', 6),
(122, 'Julen Agirrezabala', 23, 'España', 'Portero', 0, 0, 0, 0, 7, 'JUGADORES/BILBAO/julen.jpg', 6),
(123, 'Dani Vivian', 24, 'España', 'Defensa Central', 0, 1, 6, 0, 27, 'JUGADORES/BILBAO/vivian.jpg',6),
(124, 'Yuri', 34, 'España', 'Lateral Izquierdo', 3, 1, 2, 0, 23, 'JUGADORES/BILBAO/yuri.jpg', 6),
(125, 'De Marcos', 34, 'España', 'Lateral Derecho', 1, 5, 3, 0, 20, 'JUGADORES/BILBAO/marcos.jpg', 6),
(126, 'Aitor Paredes', 23, 'España', 'Defensa Central', 1, 0, 4, 0, 27, 'JUGADORES/BILBAO/paredes.jpg', 6),
(127, 'Iñigo Lekue', 30, 'España', 'Lateral Derecho', 0, 3, 3, 0, 22, 'JUGADORES/BILBAO/lekue.jpg', 6),
(128, 'Yeray', 29, 'España', 'Defensa Central', 0, 0, 1, 0, 9, 'JUGADORES/BILBAO/yeray.jpg', 6),
(129, 'Oihan Sancet', 23, 'España', 'Media Punta', 4, 6, 4, 2, 28, 'JUGADORES/BILBAO/sancet.jpg', 6),
(130, 'Mikel Vesga', 30, 'España', 'Medio Centro Defensivo', 3, 1, 2, 0, 21, 'JUGADORES/BILBAO/vesga.jpg', 6),
(131, 'Ruiz de Galarreta', 30, 'España', 'Medio Centro', 1, 2, 5, 0, 22, 'JUGADORES/BILBAO/galarreta.jpg', 6),
(132, 'Iker Muniain', 31, 'España', 'Media Punta', 2, 0, 1, 0, 18, 'JUGADORES/BILBAO/muniain.jpg', 6),
(133, 'Ander Herrera', 34, 'España', 'Medio Centro', 0, 2, 3, 0, 21, 'JUGADORES/BILBAO/herrera.jpg', 6),
(134, 'Beñat Prados', 23, 'España', 'Medio Centro', 0, 0, 2, 0, 20, 'JUGADORES/BILBAO/prados.jpg', 6),
(135, 'Unai Gómez', 20, 'España', 'Media Punta', 2, 0, 2, 0, 22, 'JUGADORES/BILBAO/unaigomez.jpg', 6),
(136, 'Iñaki Williams', 29, 'Ghana', 'Extremo Derecho', 9, 4, 3, 0, 24, 'JUGADORES/BILBAO/iñaki.jpg', 6),
(137, 'Nico Williams', 21, 'España', 'Extremo Izquierdo', 5, 9, 4, 0, 24, 'JUGADORES/BILBAO/nico.jpg', 6),
(138, 'Gorka Guruzeta', 27, 'España', 'Delantero Centro', 10, 2, 2, 0, 25, 'JUGADORES/BILBAO/guruzeta.jpg', 6),
(139, 'Alex Berenguer', 28, 'España', 'Extremo Izquierdo', 5, 2, 2, 0, 25, 'JUGADORES/BILBAO/berenguer.jpg', 6),
(140, 'Asier Villalibre', 26, 'España', 'Delantero Centro', 7, 1, 0, 0, 18, 'JUGADORES/BILBAO/villalibre.jpg', 6),
(141, 'Raúl García', 37, 'España', 'Delantera Centro', 0, 1, 3, 0, 14, 'JUGADORES/BILBAO/raul.jpg', 6),

-- Betis
(142, 'Rui Silva', 30, 'Portugal', 'Portero', 0, 0, 3, 0, 24, 'JUGADORES/BETIS/silva.jpg', 7),
(143, 'Claudio Bravo', 40, 'Chile', 'Portero', 0, 0, 1, 0, 10, 'JUGADORES/BETIS/bravo.jpg', 7),
(144, 'Germán Pezzella', 32, 'Argentina', 'Defensa Central', 1, 0, 7, 0, 32, 'JUGADORES/BETIS/pezzella.jpg', 7),
(145, 'Marc Bartra', 33, 'Argentina', 'Defensa Central', 0, 0, 2, 0, 4, 'JUGADORES/BETIS/bartra.jpg', 7),
(146, 'Abner Vinicius', 23, 'Brasil', 'Lateral Izquierdo', 0, 1, 4, 0, 23, 'JUGADORES/BETIS/abner.jpg', 7),
(147, 'Juan Miranda', 24, 'España', 'Lateral Izquierdo', 1, 2, 6, 0, 20, 'JUGADORES/BETIS/miranda.jpg', 7),
(148, 'Sabaly', 30, 'Senegal', 'Lateral Derecha', 0, 1, 0, 0, 4, 'JUGADORES/BETIS/sabaly.jpg', 7),
(149, 'Sokratis', 35, 'Grecia', 'Defensa Central', 0, 0, 5, 0, 9, 'JUGADORES/BETIS/sokratis.jpg', 7),
(150, 'Héctor Bellerín', 28, 'España', 'Lateral Derecho', 0, 0, 0, 1, 23, 'JUGADORES/BETIS/bellerin.jpg', 7), 
(151, 'Chadi Riad', 20, 'Marruecos', 'Defensa Central', 0, 0, 0, 0, 18, 'JUGADORES/BETIS/chadi.jpg', 7),
(152, 'Guido Rodriguez', 29, 'Argentina', 'Medio Centro Defensivo', 1, 1, 8, 0, 19, 'JUGADORES/BETIS/guido.jpg', 7),
(153, 'Isco', 31, 'España', 'Media Punta', 7, 5, 8, 0, 29, 'JUGADORES/BETIS/isco.jpg', 7),
(154, 'William Carvalho', 31, 'Portugal', 'Medio Centro', 0, 4, 1, 0, 19, 'JUGADORES/BETIS/carvalho.jpg', 7),
(155, 'Marc Roca', 27, 'España', 'Medio Centro', 4, 3, 7, 0, 32, 'JUGADORES/BETIS/roca.jpg', 7),
(156, 'Johnny Cardoso', 22, 'Estados Unidos', 'Medio Centro', 0, 1, 1, 0, 6, 'JUGADORES/BETIS/cardoso.jpg', 7),
(157, 'Pablo Fornals', 27, 'España', 'Media Punta', 1, 0, 1, 0, 26, 'JUGADORES/BETIS/fornals.jpg', 7),
(158, 'Nabil Fekir', 30, 'Francia', 'Media Punta', 0, 2, 0, 0, 12, 'JUGADORES/BETIS/fekir.jpg', 7),
(159, 'Rodri', 23, 'España', 'Media Punta', 3, 2, 0, 0, 24, 'JUGADORES/BETIS/rodri.jpg', 7),
(160, 'Ayoze Pérez', 30, 'España', 'Extremo Izquierdo', 6, 2, 4, 0, 26, 'JUGADORES/BETIS/ayoze.jpg', 7),
(161, 'Willian José', 32, 'Brasil', 'Delantero Centro', 11, 3, 1, 1, 30, 'JUGADORES/BETIS/willian.jpg', 7),
(162, 'Aitor Ruibal', 27, 'España', 'Delantero Centro', 3, 3, 6, 0, 23, 'JUGADORES/BETIS/ruibal.jpg', 7),
(163, 'Chimy Ávila', 30, 'Argentina', 'Delantero Centro', 2, 3, 4, 2, 21, 'JUGADORES/BETIS/chimy.jpg', 7),
(164, 'Ez Abde', 22, 'Marruecos', 'Extremo Izquierdo', 5, 0, 1, 0, 28, 'JUGADORES/BETIS/abde.jpg', 7),
(165, 'Assane Diao', 18, 'España', 'Extremo Derecho', 6, 0, 6, 0, 30, 'JUGADORES/BETIS/diao.jpg', 7),
(166, 'Bakambu', 32, 'República Democratica Del Congo', 'Delantero Centro', 2, 0, 2, 0, 17, 'JUGADORES/BETIS/bakambu.jpg', 7),

-- Real Sociedad
-- Real Sociedad
(167, 'Alex Remiro', 28, 'España', 'Portero', 0, 0, 2, 1, 34, 'JUGADORES/SOCIEDAD/remiro.jpg', 8),
(168, 'Le Normand', 27, 'España', 'Defensa Central', 1, 0, 11, 0, 32, 'JUGADORES/SOCIEDAD/lenormand.jpg', 8),
(169, 'Igor Zubeldia', 26, 'España', 'Defensa Central', 0, 2, 12, 0, 35, 'JUGADORES/SOCIEDAD/zubeldia.jpg', 8),
(170, 'Hamari Traoré', 32, 'Malí', 'Lateral Derecho', 0, 2, 7, 0, 28, 'JUGADORES/SOCIEDAD/hamari.jpg', 8),
(171, 'Aihen Muñoz', 26, 'España', 'Lateral Izquierdo', 0, 3, 3, 0, 29, 'JUGADORES/SOCIEDAD/aihen.jpg', 8),
(172, 'Kieran Tierney', 26, 'Escocia', 'Lateral Izquierdo', 0, 1, 1, 0, 17, 'JUGADORES/SOCIEDAD/tierney.jpg', 8),
(173, 'Jon Pacheco', 23, 'España', 'Defensa Central', 0, 1, 6, 0, 20, 'JUGADORES/SOCIEDAD/pacheco.jpg', 8),
(174, 'Zubimendi', 25, 'España', 'Medio Centro Defensivo', 4, 1, 3, 0, 38, 'JUGADORES/SOCIEDAD/zubimendi.jpg', 8),
(175, 'Mikel Merino', 27, 'España', 'Medio Centro', 5, 5, 11, 0, 34, 'JUGADORES/SOCIEDAD/merino.jpg', 8),
(176, 'Brais Méndez', 27, 'España', 'Media Punta', 6, 6, 7, 0, 27, 'JUGADORES/SOCIEDAD/brais.jpg', 8),
(177, 'Zakharyan', 20, 'Rusia', 'Media Punta', 2, 2, 2, 0, 34, 'JUGADORES/SOCIEDAD/zakharyan.jpg', 8),
(178, 'Turrientes', 22, 'España', 'Medio Centro', 0, 1, 3, 0, 28, 'JUGADORES/SOCIEDAD/turrientes.jpg', 8),
(179, 'Oyarzabal', 23, 'España', 'Extremo Izquierdo', 13, 1, 2, 0, 32, 'JUGADORES/SOCIEDAD/oyarzabal.jpg', 8),
(180, 'Take Kubo', 22, 'Japón', 'Extremo Derecho', 7, 4, 3, 0, 31, 'JUGADORES/SOCIEDAD/kubo.jpg', 8),
(181, 'Umar Sadiq', 27, 'Nigeria', 'Delantero Centro', 2, 1, 3, 0, 33, 'JUGADORES/SOCIEDAD/umarsadiq.jpg', 8),
(182, 'Barrenetxea', 22, 'España', 'Extremo Izquierdo', 4, 2, 2, 0, 29, 'JUGADORES/SOCIEDAD/barrenetxea.jpg', 8),
(183, 'Carlos Fernandez', 27, 'España', 'Delantero Centro', 3, 1, 5, 0, 16, 'JUGADORES/SOCIEDAD/carlosfernandez.jpg', 8),

-- Cadiz CF
(184, 'Conan Ledesma', 31, 'Argentina', 'Portero', 0, 0, 0, 0, 21, 'JUGADORES/CADIZ/ledesma.jpg', 4),
(185, 'David Gil', 30, 'España', 'Portero', 0, 0, 1, 0, 6, 'JUGADORES/CADIZ/davidgil.jpg', 4),
(186, 'Luis Hernández', 34, 'España', 'Defensa Central', 1, 0, 4, 0, 9, 'JUGADORES/CADIZ/luishernandez.jpg', 4),
(187, 'Iza Carcelén', 30, 'España', 'Lateral Derecho', 0, 0, 2, 0, 24, 'JUGADORES/CADIZ/carcelen.jpg', 4),
(188, 'Fali', 30, 'España', 'Defensa Central', 0, 0, 10, 0, 22, 'JUGADORES/CADIZ/fali.jpg', 4),
(189, 'Javier Hernández', 25, 'España', 'Lateral Izquierdo', 0, 1, 5, 0, 18, 'JUGADORES/CADIZ/javihernandez.jpg', 4),
(190, 'Lucas Pires', 22, 'Brasil', 'Lateral Izquierdo', 1, 0, 4, 0, 20, 'JUGADORES/CADIZ/lucaspires.jpg', 4),
(191, 'Victor Chust', 23, 'España', 'Defensa Central', 0, 0, 2, 1, 11, 'JUGADORES/CADIZ/chust.jpg', 4),
(192, 'Momo Mbaye', 25, 'Senegal', 'Defensa Central', 0, 0, 2, 0, 5, 'JUGADORES/CADIZ/momo.jpg', 4),
(193, 'Zaldua', 31, 'España', 'Lateral Derecho', 0, 0, 0, 0, 9, 'JUGADORES/CADIZ/zaldua.jpg', 4),
(194, 'Ruben Alcaraz', 32, 'España', 'Medio Centro', 2, 0, 12, 0, 23, 'JUGADORES/CADIZ/alcaraz.jpg', 4),
(195, 'Gonzalo Escalante', 30, 'Argentina', 'Medio Centro', 0, 2, 1, 1, 17, 'JUGADORES/CADIZ/escalante.jpg', 4),
(196, 'Álex Fernández', 31, 'España', 'Medio Centro', 0, 0, 2, 0, 20, 'JUGADORES/CADIZ/alexfernandez.jpg', 4),
(197, 'Kouame', 27, 'Malí', 'Medio Centro Defensivo', 1, 0, 2, 1, 17, 'JUGADORES/CADIZ/kouame.jpg', 4),
(198, 'San Emeterio', 26, 'España', 'Medio Centro', 2, 0, 1, 1, 5, 'JUGADORES/CADIZ/sanemeterio.jpg', 4),
(199, 'José Mari Martin', 36, 'España', 'Medio Centro Defensivo', 0, 0, 1, 0, 5, 'JUGADORES/CADIZ/josemari.jpg', 4),
(200, 'Chris Ramos', 27, 'España', 'Delantero Centro', 5, 1, 2, 0, 25, 'JUGADORES/CADIZ/chrisramos.jpg', 4),
(201, 'Darwin Machís', 31, 'Venezuela', 'Extremo Izquierdo', 3, 0, 0, 1, 16, 'JUGADORES/CADIZ/machis.jpg', 4),
(202, 'Roger Martí', 33, 'España', 'Delantero Centro', 2, 2, 2, 0, 16, 'JUGADORES/CADIZ/rogermarti.jpg', 4),
(203, 'Rubén Sobrino', 32, 'España', 'Delantero Centro', 0, 0, 6, 1, 21, 'JUGADORES/CADIZ/sobrino.jpg', 4),
(204, 'Ivan Alejo', 29, 'España', 'Extremo Derecho', 0, 2, 13, 0, 22, 'JUGADORES/CADIZ/alejo.jpg', 4),
(205, 'Maxi Gomez', 27, 'Uruguay', 'Delantero Centro', 0, 0, 2, 0, 22, 'JUGADORES/CADIZ/maxigomez.jpg', 4),
(206, 'Juan Miguel Jimenez', 30,  'España', 'Extremo Izquierdo', 1, 2, 3, 0, 19, 'JUGADORES/CADIZ/juanmi.jpg', 4),
(207, 'Robert Navarro', 21, 'España', 'Extremo Izquierdo', 0, 1, 0, 1, 16, 'JUGADORES/CADIZ/robertnavarro.jpg', 4),
(208, 'Sergi Guardiola', 32, 'España', 'Delantero Centro', 0, 0, 1, 0, 15, 'JUGADORES/CADIZ/sergiguardiola.jpg', 4),
(209, 'Brian Ocampo', 24, 'Uruguay', 'Extremo Izquierdo', 0, 0, 1, 0, 11, 'JUGADORES/CADIZ/brianocampo.jpg', 4),

-- Union Deportiva las Palmas
(210, 'Alvaro Valles', 26, 'España', 'Portero', 0, 0, 2, 1, 31, 'JUGADORES/PALMAS/valles.jpg', 9),
(211, 'Sergi Cardona', 24, 'España', 'Lateral Izquierdo', 1, 2, 9, 0, 30, 'JUGADORES/PALMAS/cardona.jpg', 9),
(212, 'Mika Marmol', 22, 'España', 'Defensa Central', 0, 1, 4, 1, 30, 'JUGADORES/PALMAS/marmol.jpg', 9),
(213, 'Alex Suarez', 31, 'España', 'Defensa Central', 1, 0, 7, 0, 28, 'JUGADORES/PALMAS/suarez.jpg', 9),
(214, 'Saul Coco', 25, 'Guinea Ecuatorial', 'Defensa Central', 1, 0, 5, 1, 25, 'JUGADORES/PALMAS/saul.jpg', 9),
(215, 'Julian Araujo', 22, 'Mexico', 'Lateral Derecho', 2, 0, 4, 1, 25, 'JUGADORES/PALMAS/julian.jpg', 9),
(216, 'Kirian Rodriguez', 28, 'España', 'Medio Centro', 6, 2, 7, 0, 32, 'JUGADORES/PALMAS/kirian.jpg', 9),
(217, 'Javi Muñoz', 29, 'España', 'Medio Centro', 2, 3, 6, 0, 31, 'JUGADORES/PALMAS/javi.jpg', 9),
(218, 'Alberto Moleiro', 20, 'España', 'Media Punta', 3, 4, 0, 0, 25, 'JUGADORES/PALMAS/moleiro.jpg', 9),
(219, 'Enzo Loiodice', 23, 'Francia', 'Medio Centro', 0, 0, 2, 0, 33, 'JUGADORES/PALMAS/loiodice.jpg', 9),
(220, 'Maximo Perrone', 21, 'Argentina', 'Medio Centro Defensivo', 0, 0, 6, 0, 28, 'JUGADORES/PALMAS/perrone.jpg', 9),
(221, 'Munir el Haddadi', 28, 'Marruecos', 'Extremo Derecho', 4, 2, 3, 0, 33, 'JUGADORES/PALMAS/munir.jpg', 9),
(222, 'Sandro Ramirez', 28, 'España', 'Delantero Centro', 1, 3, 2, 0, 21, 'JUGADORES/PALMAS/sandro.jpg', 9),
(223, 'Sory Kaba', 28, 'Guinea', 'Delantero Centro', 3, 2, 3, 0, 27, 'JUGADORES/PALMAS/kaba.jpg', 9),
(224, 'Marc Cardona', 28, 'España', 'Delantero Centro', 3, 2, 4, 0, 23, 'JUGADORES/PALMAS/marc.jpg', 9),
(225, 'Marvin Park', 23, 'España', 'Extremo Derecho', 0, 2, 5, 0, 27, 'JUGADORES/PALMAS/marvin.jpg', 9),
(226, 'Pejiño', 27, 'España', 'Extremo Izquierdo', 2, 0, 1, 0, 19, 'JUGADORES/PALMAS/pejiño.jpg', 9);













