const express = require('express')
require('./config/firestoreConfig')

const app = express()
const routes = require('./routes')
const cors = require('cors')
require('dotenv').config()
const { Storage } = require('@google-cloud/storage')

app.use(function (req, res, next) {
  res.header('Access-Control-Allow-Origin', '*')
  res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE')
  res.header('Access-Control-Allow-Headers', 'Content-Type')
  next()
})

app.use(cors())

app.use(express.json())
app.use(express.urlencoded({ extended: false }))

app.use('/api', routes)
app.get('/', (req, res) => res.send('Hello World!'))

function main(projectId) {
  async function authenticateImplicitWithAdc() {
    const storage = new Storage({
      projectId
    })
    const [buckets] = await storage.getBuckets()
    console.log('Buckets:')

    for (const bucket of buckets) {
      console.log(`- ${bucket.name}`)
    }

    console.log('Listed all storage buckets.')
  }

  authenticateImplicitWithAdc()
}

process.on('unhandledRejection', (err) => {
  console.error(err.message)
  process.exitCode = 1
})

main(process.env.PROJECT_ID)

const PORT = process.env.PORT || 5000

app.listen(PORT, () => console.log(`Server started on port ${PORT}`))
