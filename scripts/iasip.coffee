# Description:
#   Creates "It's Always Sunny in Philadelphia" title cards using http://alexanderlozada.com/iasip/.
#
# Commands:
#   maxbot iasip <text> - Prints a link to an "It's Always Sunny in Philadelphia" title card for <text>.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.respond /iasip (.+)$/i, (res) ->

    res.send "http://alexanderlozada.com/iasip/?#{new Buffer(res.match[1]).toString('base64')}"
