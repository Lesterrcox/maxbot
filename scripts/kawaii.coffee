# Description:
#   maxbot peers deep into your soul to discern whether or not you are, in fact, kawaii.
#
# Commands:
#   maxbot am I kawaii - Inquires regarding your kawaii status.
#
# Author:
#   Max Philips

responses = [
  "yes, you are kawaii! (｡◕‿‿◕｡)",
  "yes, you are kawaii! \\(•◡•)/",
  "yes, you are kawaii! ᕙ༼ຈل͜ຈ༽ᕗ",
  "yes, you are kawaii! ᕕ( ᐛ )ᕗ",
  "yes, you are kawaii! ヽ(´ー｀)ノ",
  "yes, you are kawaii! V●ᴥ●V",
  "yes, you are kawaii! ( ˘ ³˘)♥",
  "yes, you are kawaii! ( ✿╹◡╹)",
  "yes, you are kawaii! .+(´^ω^`)+.",
  "yes, you are kawaii! ｜*￣∇￣｜",
  "no, you are not kawaii. ｡゜(｀Д´)゜｡",
  "no, you are not kawaii. (ಥ﹏ಥ)",
  "no, you are not kawaii. (ノಠ益ಠ)ノ",
  "no, you are not kawaii. ლ(ಠ益ಠლ)",
  "no, you are not kawaii. щ（ﾟДﾟщ）",
  "no, you are not kawaii. ヽ༼ ಠ益ಠ ༽ﾉ",
  "no, you are not kawaii. (ノಠ ∩ಠ)ノ彡( \\o°o)\\",
  "no, you are not kawaii. ༼ ༎ຶ ෴ ༎ຶ༽",
  "it's impossible to determine. ¯\\_(ツ)_/¯",
  "don't talk to me or my son ever again."
]

module.exports = (robot) ->

  robot.respond /am i kawaii/i, (res) ->
    res.reply res.random responses

  robot.respond /am i hawaii/i, (res) ->
    if res.message.user.name == 'Kris'
      res.send 'Cowabunga, dude!!'
