const admin = require('firebase-admin')
require('../config/firestoreConfig')
const { v4: uuidv4 } = require('uuid')
const db = admin.firestore()
const userCtrl = {
  updateUser: async (req, res) => {
    try {
      const user = req.body
      const userRef = db.collection('users')
      const snapshot = await userRef.where('phone', '==', user.phone).get()
      if (snapshot.empty) {
        return res.status(404).json({ msg: 'User not found' })
      }
      snapshot.forEach(async (doc) => {
        if (doc.data().phone === user.phone) {
          await db.collection('users').doc(doc.id).update(user)
        } else {
          return res.status(401).json({ msg: 'Invalid phone' })
        }
      })
      return res.status(200).json({ msg: 'User updated successfully' })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  addUser: async (req, res) => {
    try {
      const user = req.body
      const userRef = db.collection('users')
      const snapshot = await userRef.where('phone', '==', user.phone).get()
      if (snapshot.empty) {
        await db.collection('users').doc(uuidv4()).set(user)
        return res.status(200).json({ msg: 'User added successfully' })
      }
      return res.status(401).json({ msg: 'User already exists' })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  getUser: async (req, res) => {
    try {
      const userRef = db.collection('users')
      console.log(req.query.phone)
      const snapshot = await userRef.where('phone', '==', req.query.phone).get()
      if (snapshot.empty) {
        return res.status(404).json({ msg: 'User not found' })
      }
      let user = {}
      snapshot.forEach((doc) => {
        user = doc.data()
      })
      return res.status(200).json({ user })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  }
}
module.exports = userCtrl
