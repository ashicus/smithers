# Description:
#   Hubot magic 8-ball
#
# Dependencies:
#   magicball
#
# Configuration:
#   None
#
# Commands:
#   hubot x ? - Hubot checks your question with the magic 8-ball
#
# Author:
#   spoike

magicball = require 'magicball'

module.exports = (robot) ->

  robot.respond /magic eight(\ ?)ball$/i, (msg) ->
    msg.reply "Ball reads: _\"#{magicball.ask()}\"_"
