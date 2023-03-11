const express = require('express')
const userCtrl = require('../controllers/userCtrl')
const router = express.Router()

router.post('/updateUser', userCtrl.updateUser)
router.post('/addUser', userCtrl.addUser)
router.get('/getUser', userCtrl.getUser)

module.exports = router
