const bd = require('../configMysql')

module.exports = {
    insertHuespedes : (huesped, callback) =>{
        let sql = 'SINSERT INTO travelhome.alojamiento SET ?'
        bd.query(sql,huesped, (err, data) =>{
            if (err)
                return failCallback(err)
            else
                return okCallback(data)
        })
    },
}