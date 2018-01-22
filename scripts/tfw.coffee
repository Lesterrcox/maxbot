# Description:
#   maxbot knows that feel, bro.
#
# Commands:
#   tfw - maxbot states that it knows that feel, bro.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.hear /^tfw/i, (res) ->
    res.send "I know that feel, bro."
