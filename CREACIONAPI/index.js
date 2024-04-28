const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const jwt = require('jsonwebtoken');
const app = express();
const port = 3000;

// Configuración de la conexión a la base de datos
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'usuarioslogin'
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
// Configurar middleware para parsear JSON
app.use(express.json());

// Rutas para la lógica de inicio de sesión, registro y borrado de usuarios

// Endpoint para el registro de usuarios
app.post('/registro', (req, res) => {
    const { nombre, email, pass, telefono, rol } = req.body;
    const insertQuery = 'INSERT INTO usuarios (nombre, email, pass, telefono, rol) VALUES (?, ?, ?, ?, ?)';
    
    connection.query(insertQuery, [nombre, email, pass, telefono, rol], (error) => {
        if (error) {
            console.error('Error al registrar usuario: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }
        console.log('Usuario registrado correctamente');
        res.status(201).json({ message: 'Usuario registrado correctamente' });
    });
});

// Endpoint para el inicio de sesión de usuarios
app.post('/inicio-sesion', (req, res) => {
    const { email, pass } = req.body;
    const selectQuery = 'SELECT * FROM usuarios WHERE email = ? AND pass = ?';

    connection.query(selectQuery, [email, pass], (error, results) => {
        if (error) {
            console.error('Error al iniciar sesión: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }

        if (results.length === 0) {
            res.status(401).json({ error: 'Credenciales incorrectas' });
            return;
        }

        // Si las credenciales son válidas, genera un token de sesión
        const usuario = results[0];
        const token = jwt.sign({ id: usuario.id, email: usuario.email }, 'secreto', { expiresIn: '1h' }); // 'secreto' es la clave secreta para firmar el token
        
        // Devuelve el token como parte de la respuesta
        res.status(200).json({ message: 'Inicio de sesión exitoso', token, nombre: usuario.nombre, id: usuario.id, rol: usuario.rol });
    });
});

app.get('/usuarios', (req, res) => {
    connection.query('SELECT * FROM usuarios', (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos de los usuarios de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('No se encontraron usuarios');
            return;
        }
        res.json(results);
    });
});

app.get('/usuarios/:id', (req, res) => {
    const userId = req.params.id; // Obtener el valor del parámetro de la URL

    connection.query('SELECT nombre, email, pass, telefono, rol FROM usuarios WHERE id = ?', [userId], (error, results, fields) => {
        if (error) {
            console.error('Error al obtener los datos de los usuarios de la base de datos: ', error);
            res.status(500).send('Error interno del servidor');
            return;
        }
        if (results.length === 0) {
            res.status(404).send('No se encontraron usuarios');
            return;
        }
        res.json(results);
    });
});


// Endpoint para agregar un equipo favorito a un usuario
app.post('/usuario/:id/equipos-favoritos', (req, res) => {
    const userId = req.params.id;
    const { equipoId } = req.body;

    // Verificar si el usuario existe
    const selectQuery = 'SELECT * FROM usuarios WHERE id = ?';
    connection.query(selectQuery, [userId], (error, results) => {
        if (error) {
            console.error('Error al buscar el usuario: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }

        if (results.length === 0) {
            res.status(404).json({ error: 'Usuario no encontrado' });
            return;
        }

        // Obtener la lista actual de equipos favoritos del usuario
        const usuario = results[0];
        let equiposFavoritos = usuario.equipos_favoritos ? JSON.parse(usuario.equipos_favoritos) : [];
        
        // Verificar si el equipo ya está en la lista de favoritos
        if (equiposFavoritos.includes(equipoId)) {
            res.status(400).json({ error: 'El equipo ya está en la lista de favoritos del usuario' });
            return;
        }

        // Agregar el nuevo equipo a la lista de favoritos
        equiposFavoritos.push(equipoId);
        const updateQuery = 'UPDATE usuarios SET equipos_favoritos = ? WHERE id = ?';
        connection.query(updateQuery, [JSON.stringify(equiposFavoritos), userId], (error) => {
            if (error) {
                console.error('Error al agregar equipo favorito: ', error);
                res.status(500).json({ error: 'Error interno del servidor' });
                return;
            }
            console.log('Equipo favorito agregado correctamente');
            res.status(200).json({ message: 'Equipo favorito agregado correctamente' });
        });
    });
});


// Endpoint para eliminar un equipo favorito de un usuario
app.delete('/usuarios/:id/equipos-favoritos/:equipoId', (req, res) => {
    const userId = req.params.id;
    const equipoId = req.params.equipoId;

    // Verificar si el usuario existe
    const selectQuery = 'SELECT * FROM usuarios WHERE id = ?';
    connection.query(selectQuery, [userId], (error, results) => {
        if (error) {
            console.error('Error al buscar el usuario: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }

        if (results.length === 0) {
            res.status(404).json({ error: 'Usuario no encontrado' });
            return;
        }

        // Obtener la lista actual de equipos favoritos del usuario
        const usuario = results[0];
        let equiposFavoritos = usuario.equipos_favoritos ? JSON.parse(usuario.equipos_favoritos) : [];
        
        // Verificar si el equipo está en la lista de favoritos
        if (!equiposFavoritos.includes(equipoId)) {
            res.status(400).json({ error: 'El equipo no está en la lista de favoritos del usuario' });
            return;
        }

        // Eliminar el equipo de la lista de favoritos
        equiposFavoritos = equiposFavoritos.filter(id => id !== equipoId);
        const updateQuery = 'UPDATE usuarios SET equipos_favoritos = ? WHERE id = ?';
        connection.query(updateQuery, [JSON.stringify(equiposFavoritos), userId], (error) => {
            if (error) {
                console.error('Error al eliminar equipo favorito: ', error);
                res.status(500).json({ error: 'Error interno del servidor' });
                return;
            }
            console.log('Equipo favorito eliminado correctamente');
            res.status(200).json({ message: 'Equipo favorito eliminado correctamente' });
        });
    });
});

// Endpoint para eliminar un usuario
app.delete('/borrarusuarios/:id', (req, res) => {
    const userId = req.params.id;

    // Verificar si el usuario existe
    const selectQuery = 'SELECT * FROM usuarios WHERE id = ?';
    connection.query(selectQuery, [userId], (error, results) => {
        if (error) {
            console.error('Error al buscar el usuario: ', error);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }

        if (results.length === 0) {
            res.status(404).json({ error: 'Usuario no encontrado' });
            return;
        }

        // El usuario existe, proceder a eliminarlo
        const deleteQuery = 'DELETE FROM usuarios WHERE id = ?';
        connection.query(deleteQuery, [userId], (error) => {
            if (error) {
                console.error('Error al eliminar usuario: ', error);
                res.status(500).json({ error: 'Error interno del servidor' });
                return;
            }
            console.log('Usuario eliminado correctamente');
            res.status(200).json({ message: 'Usuario eliminado correctamente' });
        });
    });
});


app.listen(port, () => {
    console.log(`Servidor escuchando en http://localhost:${port}`);
});
