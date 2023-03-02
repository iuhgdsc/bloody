const express = require('express')
const questionCtrl = require('../controllers/questionCtrl')
const router = express.Router()

router.get('/getQuestions', questionCtrl.getQuestions)
router.post('/addQuestion', questionCtrl.createQuestion)

module.exports = router
