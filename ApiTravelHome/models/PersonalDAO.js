const bd = require('../configMysql')

module.exports = {
    insertPersonal : (personal, okCallback, failCallback) => {
        let sql = 'INSERT INTO travelhome.personaldata SET ?'
        bd.query(sql, personal, (err, data) => {
            if (err)
                return failCallback(err)
            else
                return okCallback(data)
        })
    },

    insertPayment : (payment, okCallback, failCallback) =>{
        let sql = 'INSERT INTO travelhome.payment SET ?'
        bd.query(sql, payment, (err,data) =>{
            if (err)
                return failCallback(err)
            else
                return okCallback(data)
        })
    }
}