const busquedaDAO = require('../models/busquedaDAO')
const bcrypt = require('bcrypt')

const busquedaValidate = (req, res) => {
    busquedaDAO.findByBusqueda(req.params.userBusqueda, (data) =>{
        try {
            if (!data) throw new Err("Busqueda encontrada ")

            res.send({
                status: true,
                message: 'Sin resultado'
            })
        }
        catch(Err) {
            res.send({
                status: false,
                message: 'Busqueda encontrada'
            })
        }
    })
}
module.exports = {
    busquedaValidate
};
