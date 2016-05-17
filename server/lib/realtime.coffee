
RealtimeAdapter     = require 'cozy-realtime-adapter'
remoteAccess        = require 'lib/remote_access'


module.exports = (app, callback) ->

    realtime = RealtimeAdapter app.server, []
    realtime.on 'device.*', (event, id) ->
        remoteAccess.updateCredentials (err) ->
            console.log(err) if err?