# Description:
#   Watch your language!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   whitman, jan0sch

module.exports = (robot) ->

  words = [
    'arse',
    'ass',
    'asshole',
    'bastard',
    'bitch',
    'bitches',
    'bugger',
    'bollocks',
    'bullshit',
    'cock',
    'cunt',
    'damn',
    'damnit',
    'dammit',
    'dick',
    'douche',
    'fuck',
    'fucked',
    'fucker',
    'fuckers',
    'fucking',
    'hell',
    'piss',
    'scheisse',
    'shit',
    'wank'
  ]

  responses = [
    'That\'s a dollar in the swear jar!',
    'Hey now, language!',
    'Watch those dirty words!',
    'Tsk tsk.'
  ]

  swearjar = {}
  robot.brain.on 'loaded', ->
    robot.brain.lastAccessed = new Date()
    # console.log(robot.brain);
    swearjar = robot.brain.data.swearjar ||= {}
    # console.log(swearjar);

  regex = new RegExp('(?:^|\\s)(' + words.join('|') + ')(?:\\s|\\.|\\?|!|$)', 'i');

  robot.hear regex, (msg) ->
    user_name = msg.message.user.name
    swearjar[user_name] = swearjar[user_name]+1 or 1;
    response = "#{msg.random responses} <br />#{user_name} owes $#{swearjar[user_name]}.00 to the swear jar."

    robot.brain.data.swearjar = swearjar
    robot.brain.emit 'save'
    # console.log(robot.brain);
    # robot.brain.close()

    msg.send response
