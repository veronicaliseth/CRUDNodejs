const CasasDAO = require('../models/CasasDAO')

const register = (req, res) => {
    console.log('Registar Casa => in' + req.body)
    const casa = {
        ciudad : req.body.ciudad,
        ubicacion : req.body.ubicacion,
        lugar : req.body.lugar,
        numero : req.body.numero,
    }
    CasasDAO.insertCasa(casa, (data) => {
        res.send({
            status: true,
            message: 'Casa registrada exitosamente'
        })
    }, err => {
        res.send({
            status:false,
            message: 'Ha ocurrido un error al registrar la casa',
        })
    })
}

module.exports = {
    register
}