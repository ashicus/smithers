# Commands:
#   sadface/sad face - weep uncontrollably

images = [
  'http://media.giphy.com/media/P0JxT7Ouam532/giphy.gif'
  'http://media.tumblr.com/tumblr_lt0yp5AWXv1qcesuu.gif'
  'http://33.media.tumblr.com/daec3d94a6ea5758f953eaade8991175/tumblr_nc15s1LeUj1taudcyo1_500.gif'
  'http://i.imgur.com/J2G8R.gif'
]

module.exports = (robot) ->
  robot.hear /sad\s?face/i, (msg) ->
    msg.send msg.random images
