const admin = require('firebase-admin')
require('../config/firestoreConfig')
const { v4: uuidv4 } = require('uuid')
const db = admin.firestore()
const eventCtrl = {
  createEvent: async (req, res) => {
    try {
      const event = req.body
      await db
        .collection('regis_events')
        .doc(uuidv4())
        .set({ id: uuidv4(), ...event })
      return res.status(200).json({ msg: 'Event created successfully' })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  getEventsFromUser: async (req, res) => {
    try {
      const { phone } = req.body
      //get all event of user
      const userRef = db.collection('users')
      const snapshot = await userRef.where('phone', '==', phone).get()
      if (snapshot.empty) {
        return res.status(404).json({ msg: 'User not found' })
      }
      snapshot.forEach(async (doc) => {
        if (doc.data().phone === phone) {
          const events = await db.collection('regis_events').get()
          if (events.empty) {
            return res.status(404).json({ msg: 'Events not found' })
          }
          const eventList = []
          events.forEach((event) => {
            eventList.push(event.data())
          })
          return res
            .status(200)
            .json({ msg: 'Events found', events: eventList })
        } else {
          return res.status(401).json({ msg: 'Invalid phone' })
        }
      })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  getEvents: async (req, res) => {
    try {
      const events = await db.collection('regis_events').get()
      if (events.empty) {
        return res.status(404).json({ msg: 'Events not found' })
      }
      const eventList = []
      events.forEach((event) => {
        eventList.push(event.data())
      })
      return res.status(200).json({ msg: 'Events found', events: eventList })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  regisEvent: async (req, res) => {
    try {
      // address, bloodGroup, name, phone, time, contactPerson,answers
      const event = req.body
      console.log(event)
      await db
        .collection('events')
        .doc(uuidv4())
        .set({ id: uuidv4(), ...event })
      return res.status(200).json({ msg: 'Event created successfully' })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  }
}
module.exports = eventCtrl
