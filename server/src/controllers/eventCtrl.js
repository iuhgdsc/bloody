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
      console.log(phone)
      const userRef = db.collection('users')
      const snapshot = await userRef.where('phone', '==', phone).get()
      if (snapshot.empty) {
        return res.status(404).json({ msg: 'User not found' })
      }
      snapshot.forEach(async (doc) => {
        if (doc.data().phone === phone) {
          const events = await db.collection('events').get()
          if (events.empty) {
            return res.status(404).json({ msg: 'Events not found' })
          }
          const eventList = []
          events.forEach((event) => {
            if (event.data().user.phone === phone) eventList.push(event.data())
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
      const id = uuidv4()
      const item = { id: null, ...event }
      item.id = id
      if (item.id === null)
        return res.status(400).json({ msg: 'Invalid event' })
      const idNoti = uuidv4()

      const currentDate = new Date()
      const year = currentDate.getFullYear()
      const month = String(currentDate.getMonth() + 1).padStart(2, '0')
      const day = String(currentDate.getDate()).padStart(2, '0')
      const hours = String(currentDate.getHours()).padStart(2, '0')
      const minutes = String(currentDate.getMinutes()).padStart(2, '0')

      const formattedDate = `${year}-${month}-${day} ${hours}:${minutes}`
      const noti = {
        id: idNoti,
        title: 'Notice of registration of blood donation',
        body: `You have successfully registered to donate blood. Blood donation time: ${item.timeChoose}`,
        phone: item.user.phone,
        createdAt: formattedDate
      }
      await db.collection('notify').doc(idNoti).set(noti)
      await db.collection('events').doc(id).set(item)
      console.log(item)
      console.log(noti)
      return res.status(200).json({ msg: 'Event created successfully' })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  },
  deleteEvent: async (req, res) => {
    try {
      const { id } = req.body

      const rs = await db.collection('events').doc(id).delete()

      return res.status(200).json({ msg: 'Event deleted successfully' })
    } catch (error) {
      return res.status(500).json({ msg: error.message })
    }
  }
}
module.exports = eventCtrl
