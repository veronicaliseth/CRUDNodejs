const express = require('express');
const router = express.Router();
const busquedaService = require('../controllers/busquedaService')

router.post('/busquedaValidate',busquedaService.busquedaValidate);

module.exports = router;