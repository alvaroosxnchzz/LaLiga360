const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const cors = require('cors'); 
const app = express();
const port = 6800;

// Configuración de la conexión a la base de datos
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456', // Cambia esto por tu contraseña de MySQL
    database: 'foro' // Nombre de la base de datos que creaste
});

connection.connect((err) => {
    if (err) {
        console.error('Error de conexión a la base de datos: ', err);
        return;
    }
    console.log('Conexión a la base de datos establecida');
});

app.use(cors());

app.use(bodyParser.json());

// Endpoint para la creación de un nuevo hilo
app.post('/hilos', (req, res) => {
    const { title, description, content } = req.body;
    const insertQuery = 'INSERT INTO threads (title, description, content) VALUES (?, ?, ?)';
    
    connection.query(insertQuery, [title, description, content], (error) => {
        if (error) {
            console.error('Error al crear un nuevo hilo: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }
        console.log('Hilo creado correctamente');
        res.status(201).json({ message: 'Hilo creado correctamente' });
    });
});

// Endpoint para eliminar un hilo
app.delete('/hilos/:id', (req, res) => {
    const threadId = req.params.id;
    const deleteQuery = 'DELETE FROM threads WHERE id = ?';

    connection.query(deleteQuery, [threadId], (error) => {
        if (error) {
            console.error('Error al eliminar el hilo: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }
        console.log('Hilo eliminado correctamente');
        res.status(200).json({ message: 'Hilo eliminado correctamente' });
    });
});

// Endpoint para obtener todos los hilos de discusión
app.get('/threads', (req, res) => {
    connection.query('SELECT * FROM threads', (error, results) => {
        if (error) {
            console.error('Error al obtener los hilos de discusión: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }
        res.json(results);
    });
});

// Endpoint para obtener un hilo específico por su ID
app.get('/threads/:id', (req, res) => {
    const threadId = req.params.id;
    const selectQuery = 'SELECT * FROM threads WHERE id = ?';

    connection.query(selectQuery, [threadId], (error, results) => {
        if (error) {
            console.error('Error al obtener el hilo de discusión por ID: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }
        if (results.length === 0) {
            res.status(404).json({ error: 'Hilo no encontrado' });
            return;
        }
        const thread = results[0];
        res.json(thread);
    });
});


// Endpoint para crear un nuevo hilo de discusión
app.post('/threadscrear', (req, res) => {
    const { title, description } = req.body;
    const insertQuery = 'INSERT INTO threads (title, description) VALUES (?, ?)';

    connection.query(insertQuery, [title, description], (error) => {
        if (error) {
            console.error('Error al crear un nuevo hilo de discusión: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }
        console.log('Nuevo hilo de discusión creado correctamente');
        res.status(201).json({ message: 'Nuevo hilo de discusión creado correctamente' });
    });
});

// Iniciar el servidor
app.listen(port, () => {
    console.log(`Servidor escuchando en http://localhost:${port}`);
});
