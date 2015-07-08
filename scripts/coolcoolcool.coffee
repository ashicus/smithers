# Cool. Cool cool cool.
module.exports = (robot) ->
  robot.hear /cool cool cool/i, (msg) ->
    msg.send "http://i.imgur.com/EfGnOI4.gif"
