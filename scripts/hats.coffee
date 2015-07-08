module.exports = (robot) ->
  robot.hear /hats\!/i, (msg) ->
    msg.send ":will: :amanda: :scott: :harold: :noelle:"
