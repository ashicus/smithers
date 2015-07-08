# Hats!
# Commands:
#   hats! - show hats

module.exports = (robot) ->
  robot.hear /hats\!/i, (msg) ->
    msg.send ":will: :amanda: :scott: :harold: :noelle:"
