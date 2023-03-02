const authRoute = require('./authRoute')
const eventRoute = require('./eventRoute')
const userRoute = require('./userRoute')
const questionRoute = require('./questionRoute')

const routes = [authRoute, eventRoute, userRoute, questionRoute]

module.exports = routes
