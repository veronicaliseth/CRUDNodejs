const express = require('express');
const router = express.Router();
const rolsService = require('../controllers/rolsService')

router.post('/getAll',rolsService.getAll);

module.exports = router;


