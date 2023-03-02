const express = require('express')
const eventCtrl = require('../controllers/eventCtrl')
const router = express.Router()

router.post('/registerEvent', eventCtrl.createEvent)
router.get('/getEvent', eventCtrl.getEvents)

module.exports = router
