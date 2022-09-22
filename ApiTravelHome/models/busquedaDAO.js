const bd = require('../configMysql')

module.exports = {
    findByBusqueda: (userBusqueda, callback) => {
        let sql = 'SELECT * FROM registrocasa WHERE userBusqueda=?'
        bd.query(sql, userBusqueda, (err, data) => {
            if (err) throw err

            if (data.length > 0)
                callback(data[0]) //Enviar el primer registro de la consulta
            else
                callback(null)
        })
    },
}