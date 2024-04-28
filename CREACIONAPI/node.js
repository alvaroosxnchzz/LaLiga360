const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
const port = 3500;

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'laliga'
});

connection.connect((err) => {
    if (err) {
        console.error('Error de conexión a la base de datos: ', err);
        return;
    }
    console.log('Conexión a la base de datos establecida');
});
// Permitir solicitudes CORS
app.use(cors());

app.get('/datos', (req, res) => {
    connection.query('SELECT Nombre, Abrebiatura, Puntos, PartidosJugados, PartidosGanados, PartidosEmpatados, PartidosPerdidos, GolesFavor, GolesContra, Escudo, EquipoID FROM Equipos ORDER BY Puntos DESC', (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        res.json(results);
    });
});

app.get('/equipo/:nombre', (req, res) => {
    const nombreEquipo = req.params.nombre;
    connection.query('SELECT * FROM Equipos WHERE Nombre = ?', [nombreEquipo], (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos del equipo de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('Equipo no encontrado');
            return;
        }
        res.json(results[0]);
    });
});

app.get('/jugadores/:EquipoID', (req, res) => {
    const idEquipo = req.params.EquipoID;
    connection.query('SELECT * FROM Jugadores WHERE EquipoID = ?', [idEquipo], (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos de los jugadores de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('Equipo no encontrado');
            return;
        }
        res.json(results);
    });
});

app.get('/jugador/:id', (req, res) => {
    const jugadorId = req.params.id;
    connection.query('SELECT * FROM Jugadores WHERE JugadorID = ?', [jugadorId], (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos del jugador de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('Jugador no encontrado');
            return;
        }
        res.json(results[0]);
    });
});

app.get('/ranking', (req, res) => {
    connection.query('SELECT Nombre, FotoJugador, Goles FROM Jugadores ORDER BY Goles DESC', (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos de los jugadores de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('Jugadores no encontrados');
            return;
        }
        res.json(results);
    });
});

app.get('/jugadores-espanoles', (req, res) => {
    connection.query('SELECT JugadorID, Nombre, FotoJugador, Goles, PartidosJugados, Edad, Posicion FROM Jugadores WHERE Nacionalidad = "España" ORDER BY Posicion DESC', (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos de los jugadores españoles de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('No se encontraron jugadores españoles');
            return;
        }
        res.json(results);
    });
});

app.get('/jugadoresasist', (req, res) => {
    connection.query('SELECT * FROM Jugadores ORDER BY Asistencias DESC', (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos de los jugadores de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('Jugadores no encontrados');
            return;
        }
        res.json(results);
    });
});

app.get('/jugadores-amarillas', (req, res) => {
    connection.query('SELECT * FROM Jugadores ORDER BY TarjetasAmarillas DESC', (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos de los jugadores de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('Jugadores no encontrados');
            return;
        }
        res.json(results);
    });
});

app.get('/jugadores-rojas', (req, res) => {
    connection.query('SELECT * FROM Jugadores ORDER BY TarjetasRojas DESC', (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos de los jugadores de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('Jugadores no encontrados');
            return;
        }
        res.json(results);
    });
});




app.listen(port, () => {
    console.log(`Servidor backend corriendo en http://localhost:${port}`);
});
