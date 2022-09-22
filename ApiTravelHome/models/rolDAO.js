const bd = require('../configMysql')

module.exports = {

    getAll : (callback) => {
        let sql = 'SELECT * FROM travelhome.rol'
        bd.query(sql, (err, data) => {
            if (err) throw err;
            callback.send(data)
        })
    },

}