const express = require('express');
const router = express.Router();
const AlojamientoService = require('../controllers/AlojamientoService')

router.post('/alojamiento',AlojamientoService.alojamiento);

module.exports = router;