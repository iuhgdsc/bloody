const express = require('express')
const eventCtrl = require('../controllers/eventCtrl')
const router = express.Router()

router.post('/registerEvent', eventCtrl.regisEvent)
router.get('/getEvent', eventCtrl.getEvents)
router.get('/getEventFromUser', eventCtrl.getEventsFromUser)
router.delete('/deleteEventFromUser', eventCtrl.deleteEvent)

module.exports = router
