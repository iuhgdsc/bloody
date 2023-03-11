const authRoute = require('./authRoute')
const eventRoute = require('./eventRoute')
const userRoute = require('./userRoute')
const questionRoute = require('./questionRoute')
const emergencyRoute = require('./emergencyRoute')

const routes = [authRoute, eventRoute, userRoute, questionRoute, emergencyRoute]

module.exports = routes
