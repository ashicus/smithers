# Cool. Cool cool cool.
# Commands:
#   cool cool (cool?) - show Abed

module.exports = (robot) ->
  robot.hear /cool cool\s?cool/i, (msg) ->
    msg.send "http://i.imgur.com/EfGnOI4.gif"
