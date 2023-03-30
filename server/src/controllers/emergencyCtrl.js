const admin = require('firebase-admin')
require('../config/firestoreConfig')
const { v4: uuidv4 } = require('uuid')
const db = admin.firestore()
const emergencyCtrl = {
  createEmergency: async (req, res) => {
    try {
      const emergency = req.body
      await emergency.forEach((element) => {
        db.collection('emergencies')

          .doc(uuidv4())
          .set({ id: uuidv4(), ...element })
      })
      return res.status(200).json({ msg: 'emergency created successfully' })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },

  getEmergencies: async (req, res) => {
    try {
      const emergencys = await db.collection('emergencies').get()
      if (emergencys.empty) {
        return res.status(404).json({ msg: 'emergencies not found' })
      }
      const emergencyList = []
      emergencys.forEach((emergency) => {
        emergencyList.push(emergency.data())
      })
      return res
        .status(200)
        .json({ msg: 'emergencies found', emergencies: emergencyList })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  getNewEmergencies: async (req, res) => {
    try {
      const emergencys = await db.collection('emergencies').get()
      if (emergencys.empty) {
        return res.status(404).json({ msg: 'emergencies not found' })
      }
      const emergencyList = []
      emergencys.forEach((emergency) => {
        if (emergency.data().avatar == null)
          emergencyList.push(emergency.data())
      })
      return res
        .status(200)
        .json({ msg: 'emergencies found', emergencies: emergencyList })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  }
}
module.exports = emergencyCtrl
