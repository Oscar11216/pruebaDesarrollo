const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors');

/*
*RUTAS 
*/

const users = require('./routes/usersRoutes');
const port = process.env.Port || 3000;

app.use(logger('dev')); // posibles errones de nuestro backend
app.use(express.json()); // para parsear las respuestas que se resivan en formato json
app.use(express.urlencoded({
    extended : true
}));

app.use(cors());
app.disable('x-powered-by'); // temas de seguridad
app.set('post',port);

// llamando a las rutas
users(app);

server.listen(3000, '192.168.101.4' || 'localhost', function() {
    console.log('Aplicacion de nodejs ' + port + ' iniciada....');
});

app.get('/', (req, res)=>{
    res.send('Ruta raiz del backend');
});

// Manejo de errores 
app.use((err, req,res,next)=> {
    console.log(err);
    res.status(err.status || 500).send(err.stack);
});

module.exports ={
    app : app,
    server : server
}