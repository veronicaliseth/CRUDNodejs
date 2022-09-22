const rolDAO = require('../models/rolDAO')

const getAll = (req,res) => {
    rolDAO.getAll(res, (data) => {
        if (data) {
            console.log('Data =>',data)
            res.send({
                status: false,
                message: 'OK',
                body : data
            })
        } else {
            res.send({
                status: false,
                message: 'no existen Roles en la base de datos'
            })
        }
    })
}

module.exports = {
    getAll
}















