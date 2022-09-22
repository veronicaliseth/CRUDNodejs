const AlojamientoDAO = require('../models/AlojamientoDAO')

const alojamiento = (req, res) => {
    console.log('Alojamiento => in')
    const huesped = {
        huespedes:req.body.huespedes,
        adultos:req.body.adultos,
        ninos:req.body.ninos,
        servicios:req.body.servicios,
        fecha: req.body.fecha,
    }
    AlojamientoDAO.insertHuespedes(huesped,(data) =>{
        res.send({
            status: true,
            message: 'Accion correcta'
        })
    }, err => {
        res.send({
            status: false,
            message: 'No se ha completado la accion'
        })
    })
}

module.exports = {
    alojamiento
}