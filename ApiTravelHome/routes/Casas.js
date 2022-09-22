const express = require('express');
const router = express.Router();
const CasasService = require('../controllers/CasasService')

router.post('/register',CasasService.register);

module.exports = router;