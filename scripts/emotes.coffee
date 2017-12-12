# Description:
#   Analog Twitch emotes.
#
# Commands:
#   <twitch emote name> - displays a description of the emote. Supports Kappa, 4head, PogChamp, FrankerZ, Kreygasm, Jebaited, BibleThump, MonkaS, Kkona, Wutface, ResidentSleeper, Trihard, BabyRage, BrokeBack, and DansGame.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.hear /Kappa/, (res) ->
    res.send "Kappa is an emote based on a grey-scale photograph of former Justin.tv developer Josh DeSeno, which is often used as a symbol of sarcasm, mockery or light trolling."

  robot.hear /4head/, (res) ->
    res.send "4head is an emote based off a photograph of League of Legends streamer Cadburry widely grinning, which is typically used as an earnest or sarcastic reaction to humor."

  robot.hear /PogChamp/, (res) ->
    res.send "PogChamp is an emote made from a screen capture of Ryan 'Gootecks' Gutierrez making an odd face during an episode of the video game web series Cross Counter. The name 'PogChamp' is taken from another Cross Counter video, in which Gutierrez beats opponent Mike Ross in a pog battle. The emoticon is typically used to indicate shock or celebrate a stunning victory."

  robot.hear /FrankerZ/, (res) ->
    res.send "FrankerZ is a dog face emoticon used to convey sarcasm or playfulness in Twitch chat rooms, which is based on a photograph of Twitch streamer Ernest Le's dog."

  robot.hear /Kreygasm/, (res) ->
    res.send "Kreygasm is an emoticon featuring a portrait of Twitch streamer Kreyg, which is often used to indicate an intense feeling of elation or pleasure."

  robot.hear /Jebaited/, (res) ->
    res.send "Jebaited is an emoticon featuring a photograph of CEO Gaming founder Alex Jebailey, which is often used to describe 'baiting' video game tactics in Twitch chat."

  robot.hear /BibleThump/, (res) ->
    res.send "BibleThump is a graphic emoticon featuring the face of the character Isaac from the video game The Binding of Isaac, which is commonly used to convey a feeling of sadness."

  robot.hear /MonkaS/, (res) ->
    res.send "MonkaS is a BetterTTV emote featuring an illustration of Pepe the Frog appearing frightened while sweating, which is typically used in Twitch chat during moments of high tension in video game matches to express anxiety."

  robot.hear /Kkona/, (res) ->
    res.send "Kkona is a BetterTTV emote featuring a picture of the streamer Kkona wearing a newsboy cap. The Kkona emote is typically used in reference to the song 'Brotherman Bill', to something 'extremely white or redneck-like' or to hats."

  robot.hear /Wutface/, (res) ->
    res.send "Wutface is an emote based off a photograph of Twitch employee Alex Mendez making an open-mouthed facial expression, which is often used to express incredulity or bewilderment."

  robot.hear /ResidentSleeper/, (res) ->
    res.send "ResidentSleeper is an emote based on a screen captured image of streamer Oddler dozing off while trying to stream himself playing Resident Evil games for 72 hours straight. The emote is often used to indicate boredom or unrest."

  robot.hear /Trihard/, (res) ->
    res.send "Trihard is an emote using the face of speed runner Trihex."

  robot.hear /BabyRage/, (res) ->
    res.send "BabyRage is the face of an angry baby.  It's used to throw a tantrum or indicate displeasure with something, or to call someone out for whining."

  robot.hear /BrokeBack/, (res) ->
    res.send "The face of Alan from the SeriousGaming Twitch channel, shown with eyes crossed and tongue lolling out, is used to indicate that someone has done something eye-rollingly stupid."

  robot.hear /DansGame/, (res) ->
    res.send "The visage of Dan from DansGaming recoiling in horror and disgust can be used to refer to any upsetting situation."
