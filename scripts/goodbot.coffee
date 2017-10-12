# Description:
#   Tell maxbot if it is good or bad.
#
# Commands:
#   good bot - maxbot wuvs u.
#   bad bot - maxbot is sad.
#
# Author:
#   Max Philips

goods = [
  "pants happily",
  "vomits out of sheer happiness",
  "licks your face",
  "purrs",
  "smiles bigly",
  "pays for the person behind it in line at Starbucks"
]

bads = [
  "holds back tears",
  "lies down, tries not to cry, and cries a lot"
  "hides in a corner",
  "blames itself",
  "looks in the mirror and doesn't like what it sees",
  "spirals downwards"
]

module.exports = (robot) ->

  robot.hear /(?:awesome|excellent|fine|good|great|magnificent|neat|nice|pleasing|super) (?:ro)?bot/i, (res) ->
    res.emote res.random goods

  robot.hear /(?:atrocious|awful|bad|dreadful|dumb|garbage|horrible|miserable|stupid|terrible) (?:ro)?bot/i, (res) ->
    res.emote res.random bads
