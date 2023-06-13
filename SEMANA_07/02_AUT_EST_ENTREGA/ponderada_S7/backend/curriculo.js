const express = require('express'); 
const bodyParser = require('body-parser');
const urlencodedParser = bodyParser.urlencoded({ extended: false })

const sqlite3 = require('sqlite3').verbose();
const DBPATH = '../data/curriculo.db';

const hostname = '127.0.0.1';
const port = 3071;
const app = express();

/* Servidor aplicação */

app.use(express.static("../frontend/"));
/* Definição dos endpoints */

/******** CRUD da tabela "Contato" ************/
app.use(express.json());
app.use((request, response, next) => {
    next();
})

// Retorna todos registros (é o R do CRUD - Read)
app.get('/contato', (req, res) => {
    res.statusCode = 200;
    res.setHeader('Access-Control-Allow-Origin', '*'); // Isso é importante para evitar o erro de CORS

    var db = new sqlite3.Database(DBPATH); // Abre o banco
var sql = 'SELECT * FROM Contato';
    db.all(sql, [],  (err, rows ) => {
        if (err) {
            throw err;
        }
        res.json(rows);
    });
    db.close(); // Fecha o bancoato
});


app.listen(port, hostname, () => {
    console.log(`Page server running at http://${hostname}:${port}/contato`);
  });