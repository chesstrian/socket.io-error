express = require 'express'

route = require './route'

app = express()

app.set 'port', process.env.PORT or 3000

app.use '/', route
app.use (req, res) -> res.sendStatus 404

module.exports = app
