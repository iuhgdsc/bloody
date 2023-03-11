const express = require('express')
const eventCtrl = require('../controllers/eventCtrl')
const router = express.Router()

router.post('/registerEvent', eventCtrl.createEvent)
router.get('/getEvent', eventCtrl.getEvents)
router.get('/getEventFromUser', eventCtrl.getEventsFromUser)

module.exports = router
