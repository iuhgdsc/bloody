const express = require('express')
const notifyCtrl = require('../controllers/notifyCtrl')
const router = express.Router()

router.post('/createNoti', notifyCtrl.createNotify)
router.get('/getNotiInUser', notifyCtrl.getNotiInUser)

module.exports = router
