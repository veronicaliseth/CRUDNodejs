const mysql = require('mysql');

const config = {
    host : 'localhost',
    user : 'user.nodejs',
    database: 'travelhome',
    password: 'valkiria1234',
    insecureAuth: true,
};

const conn = mysql.createConnection(config);

conn.connect(function(err) {
    if (err) throw err;
    console.log('Conexión a la base de datos exitosa!');
});

module.exports = conn;