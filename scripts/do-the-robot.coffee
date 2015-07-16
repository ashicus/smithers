# Commands:
#   sadface/sad face - weep uncontrollably

images = [
  'http://i.imgur.com/z8ooLEI.gif'
  'http://a.dilcdn.com/bl/wp-content/uploads/sites/2/2014/12/taylor-swift-robot-gif.gif'
  'http://ak-hdl.buzzfed.com/static/2014-08/18/18/enhanced/webdr09/anigif_enhanced-14381-1408400869-6.gif'
  'https://s3.amazonaws.com/bdcwire-static-content/uploads/2014/04/VC0JE.gif'
  'http://media.giphy.com/media/uWc0OvZ8nNwfS/giphy.gif'
  'http://www.gifbin.com/bin/052009/1243608790_robot-dance.gif'
  'http://www.gifbin.com/bin/082014/1408554671_john_mccain_does_the_robot_dance.gif'
  'http://www.reactiongifs.us/wp-content/uploads/2015/01/cyberman_dance_doctor_who.gif'
  'http://www.reactiongifs.us/wp-content/uploads/2015/02/do_the_robot_futurama.gif'
  'http://i.imgur.com/W4n0lTA.gif'
  'http://i.imgur.com/ViTFK.gif'
  'http://pixel.nymag.com/imgs/daily/vulture/2015/03/09/kanye-gif/kanye-dance-3.nocrop.w529.h554.2x.gif'
  'http://media1.giphy.com/media/KFDiNwiiIAU9i/giphy.gif'
  'http://media0.giphy.com/media/qkiBNxylHwVoY/giphy.gif'
]

module.exports = (robot) ->
  robot.hear /(do|dance)( the robot)?/i, (msg) ->
    msg.send msg.random images
