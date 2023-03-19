const express = require('express')
const notifyCtrl = require('../controllers/notifyCtrl')
const router = express.Router()

router.get('/getNotiInUser', notifyCtrl.getNotiInUser)

module.exports = router
