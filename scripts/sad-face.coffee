# Commands:
#   sadface/sad face - weep uncontrollably

module.exports = (robot) ->
  robot.hear /sad\s?face/i, (msg) ->
    msg.send "http://i.imgur.com/J2G8R.gif"
