const admin = require('firebase-admin')
require('../config/firestoreConfig')
const { v4: uuidv4 } = require('uuid')
const db = admin.firestore()
const questionCtrl = {
  createQuestion: async (req, res) => {
    try {
      const questions = req.body
      questions.forEach(async (question) => {
        await db.collection('questions').doc(uuidv4()).set(question)
      })

      return res.status(200).json({ msg: 'Question created successfully' })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  getQuestions: async (req, res) => {
    try {
      const questions = []
      const snapshot = await db.collection('questions').get()
      snapshot.forEach((doc) => {
        questions.push({
          id: doc.id,
          ...doc.data()
        })
      })
      return res.status(200).json({ questions })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  }
}
module.exports = questionCtrl
