# Description:
#   Rolls a standard Mattel Magic 8-Ball.
#
# Commands:
#   maxbot 8ball - rolls a Magic 8-Ball.
#
# Author:
#   Max Philips

answers = [
  "IT IS CERTAIN"
  "IT IS DECIDEDLY SO",
  "WITHOUT A DOUBT",
  "YES DEFINITELY",
  "YOU MAY RELY ON IT",
  "AS I SEE IT, YES",
  "MOST LIKELY",
  "OUTLOOK GOOD",
  "YES",
  "SIGNS POINT TO YES",
  "REPLY HAZY TRY AGAIN",
  "ASK AGAIN LATER",
  "BETTER NOT TELL YOU NOW",
  "CANNOT PREDICT NOW",
  "CONCENTRATE AND ASK AGAIN",
  "DON'T COUNT ON IT",
  "MY REPLY IS NO",
  "MY SOURCES SAY NO",
  "OUTLOOK NOT SO GOOD",
  "VERY DOUBTFUL"
]

module.exports = (robot) ->

  robot.respond /8ball/i, (res) ->
    res.reply res.random answers
