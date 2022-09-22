const PersonalDAO = require('../models/PersonalDAO')

const personalValidate = (req, res) =>{
    console.log('PersonalDAO')
    const personal = {
        Name:req.body.Name,
        Last_name:req.body.Last_name,
        Phone_number:req.body.Phone_number,
        Postal_code:req.body.Postal_code,
    }
    PersonalDAO.insertPersonal(personal,(data) =>{
        res.send({
            status: true,
            message: 'Datos insertado correctamente'
        })
    },err =>{
        res.send({
            status: false,
            message: 'Ha ocurrido un error'
        })
    })
}
const paymentValidate = (req, res )=>{
    const payment = {
        Card: req.body.Card,
        Cvv: req.body.Cvv,
        Expiration_date: req.body.Expiration_date,
        Holder_name: req.body.Holder_name
    }
    PersonalDAO.insertPayment(payment,(data)=>{
        res.send({
            status: true,
            message: 'Datos insertado correctamente'
        })
    },err =>{
        res.send({
            status: false,
            message: 'Ha ocurrido un error'
        })
    })
}
module.exports = {
    personalValidate,
    paymentValidate
}