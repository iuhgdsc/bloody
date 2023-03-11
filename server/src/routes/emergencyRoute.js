const express = require('express')
const emergencyCtrl = require('../controllers/emergencyCtrl')
const router = express.Router()

router.post('/createEmergency', emergencyCtrl.createEmergency)
router.get('/getEmergencies', emergencyCtrl.getEmergencies)
router.get('/getNewEmergencies', emergencyCtrl.getNewEmergencies)

module.exports = router
