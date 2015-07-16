# bullshit
#
# Commands:

module.exports = (robot) ->
  robot.hear /(that's|such|what) bullshit/i, (msg) ->
    msg.send "http://www.gifwave.com/media/37901_bullshit.gif"
