const credentials = require('../firestore.json')
const { initializeApp, cert } = require('firebase-admin/app')

const initFirestore = initializeApp({
  credentials: cert({
    projectId: credentials.project_id,
    clientEmail: credentials.client_email,
    privateKey: JSON.parse(
      '{"privateKey": "' + credentials.private_key.replace(/\n/g, '\\n') + '"}'
    ).privateKey
  }),
  projectId: credentials.project_id
})

module.exports = initFirestore
