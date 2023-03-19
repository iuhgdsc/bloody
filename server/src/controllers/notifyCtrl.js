const admin = require('firebase-admin')
require('../config/firestoreConfig')
const { v4: uuidv4 } = require('uuid')
const db = admin.firestore()
const notiCtrl = {
  getNotiInUser: async (req, res) => {
    try {
      const phone = req.query.phone
      console.log(phone)
      const userRef = db.collection('users')
      const snapshot = await userRef.where('phone', '==', phone).get()
      if (snapshot.empty) {
        return res.status(404).json({ msg: 'User not found' })
      }
      snapshot.forEach(async (doc) => {
        if (doc.data().phone === phone) {
          const notis = await db.collection('notify').get()
          if (notis.empty) {
            return res.status(404).json({ msg: 'Notify not found' })
          }
          const notiList = []
          notis.forEach((noti) => {
            if (noti.data().phone === phone) notiList.push(noti.data())
          })

          return res.status(200).json({ msg: 'Notify found', notify: notiList })
        } else {
          return res.status(401).json({ msg: 'Invalid phone' })
        }
      })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  }
}
module.exports = notiCtrl
