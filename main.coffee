s_io = require 'socket.io'

app = require './app'
port = app.get 'port'

server = app.listen port, ->
  console.log 'Express server listening on port %s', server.address().port

io = s_io.listen server
io.use (data, next) ->
  next new Error 'You cannot connect'
io.on 'connection', (socket) ->
  socket.send 'You have been connected, this should not happen'
