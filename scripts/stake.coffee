# Description:
#   Run maxed stakes in the Old School RuneScape Duel Arena.
#
# Commands:
#   maxbot stake <user> - Simulates a maxed stake against <user>.
#
# Author:
#   Max Philips

hits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

module.exports = (robot) ->

  robot.respond /stake (\w+)$/i, (res) ->

    stakerHp = 99
    staker = "#{pad30(res.message.user.name)}: #{stakerHp}"
    
    stakeeHp = 99
    stakee = "#{pad30(res.match[1])}: #{stakeeHp}"

    pid = res.random [0, 1]

    while true
      if pid is 0
        if stakerHp is 0
          res.send staker
          res.send stakee
          res.send "You lost!"
          break

        hit = damage()
        stakeeHp = Math.max(0, stakeeHp - hit)
        stakee = stakee.concat(" -#{pad2(hit)}|#{pad2(stakeeHp)}")

      if stakeeHp is 0
        res.send staker
        res.send stakee
        res.send "You have won!"
        break

      hit = damage()
      stakerHp = Math.max(0, stakerHp - hit)
      staker = staker.concat(" -#{pad2(hit)}|#{pad2(stakerHp)}")

      if pid is 1
        if stakerHp is 0
          res.send staker
          res.send stakee
          res.send "You lost!"
          break

        hit = damage()
        stakeeHp = Math.max(0, stakeeHp - hit)
        stakee = stakee.concat(" -#{pad2(hit)}|#{pad2(stakeeHp)}")

# Calculates damage dealt to a naked champion wielding an Abyssal Tentacle in Controlled mode by a naked champion
# wielding an Abyssal Tentacle in Controlled mode.
damage = () ->
  return 0 if Math.random() > 0.792160163530331
  hits[Math.floor(Math.random() * hits.length)]

# Pads the argument with 2 spaces.
pad2 = (arg) ->
  padX(arg, 2)

# Pads the argument with 30 spaces.
pad30 = (arg) ->
  padX(arg, 30)

# Pads the argument with X spaces.
padX = (arg, x) ->
  arg += ''
  pads = x - arg.length
  if (pads > 0) then new Array(pads + 1).join(' ') + arg else arg
