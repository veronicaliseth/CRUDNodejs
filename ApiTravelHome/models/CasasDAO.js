const bd = require('../configMysql')

module.exports = {
insertCasa : (user, okCallback, failCallback) => {
    let sql = 'INSERT INTO travelhome.registrocasa SET ?'
    bd.query(sql, user, (err, data) => {
        if (err)
            return failCallback(err)
        else
            return okCallback(data)
    })
},
}
