const express = require('express')
const router = express.Router()
const PersonaService = require('../controllers/PersonalService')

router.post('/personalValidate',PersonaService.personalValidate)
router.post('/paymentValidate',PersonaService.paymentValidate)

module.exports = router;