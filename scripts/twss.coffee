# Description:
#   Use Skynet to determine if a thing that was said is actually something
#   S.H.E (Silicon Helix Entity) said.
#
# Dependencies:
#   "twss": "0.1.6"
#
# Commands:
#
# Author:
#   Jeremy Mack (mutewinter)
#
# Revised:
#   John Weis (weisjohn)

TWSS_THRESHOLD = 0.9

twss = require('twss')
twss.threshold = TWSS_THRESHOLD

module.exports = (robot) ->

  robot.hear /^(?!smithers)(.*)/i, (msg) ->

    message = msg.match[1]

    probability = twss.probability(message)

    if probability > 0.9
      msg.send "_that's what she said..._"

    console.log "Innuendo Probability for #{message} #{(probability * 100)/100}%"
