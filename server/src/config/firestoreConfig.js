const { initializeApp, cert } = require('firebase-admin/app')
require('dotenv').config()

const initFirestore = initializeApp({
  credentials: cert({
    projectId: process.env.PROJECT_ID,
    clientEmail: process.env.CLIENT_EMAIL,
    privateKey: JSON.parse(
      '{"privateKey": "' + process.env.PRIVATE_KEY.replace(/\n/g, '\\n') + '"}'
    ).privateKey
  }),
  projectId: process.env.PROJECT_ID
})

module.exports = initFirestore
