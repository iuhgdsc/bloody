const admin = require('firebase-admin')
require('../config/firestoreConfig')
const { v4: uuidv4 } = require('uuid')
const db = admin.firestore()
const authCtrl = {
  register: async (req, res) => {
    try {
      const user = req.body
      await db.collection('users').doc(uuidv4()).set(user)
      return res.status(200).json({ msg: 'User created successfully' })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  login: async (req, res) => {
    try {
      const token = uuidv4()
      const user = req.body
      const userRef = db.collection('users')
      const snapshot = await userRef.where('phone', '==', user.phone).get()
      if (snapshot.empty) {
        return res.status(404).json({ msg: 'User not found' })
      }
      snapshot.forEach((doc) => {
        if (doc.data().phone === user.phone) {
          db.collection('users').doc(doc.id).update({ token: token })
          return res.status(200).json({ msg: 'User logged in successfully' })
        } else {
          return res.status(401).json({ msg: 'Invalid phone' })
        }
      })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  logout: async (req, res) => {
    try {
      const phone = req.body.phone
      const userRef = db.collection('users')
      const snapshot = await userRef.where('phone', '==', phone).get()
      if (snapshot.empty) {
        return res.status(404).json({ msg: 'User not found' })
      }
      snapshot.forEach((doc) => {
        if (doc.data().phone === phone) {
          db.collection('users').doc(doc.id).update({ token: '' })
          return res.status(200).json({ msg: 'User logged out successfully' })
        } else {
          return res.status(401).json({ msg: 'Invalid phone' })
        }
      })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  }
}
module.exports = authCtrl
