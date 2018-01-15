# Description:
#   Allows indulgence of consuming non-nutritive materials.
#
# Commands:
#   maxbot i'm eating <item> - Informs maxbot that you are eating <item>.
#   maxbot i'm done eating - Informs maxbot that you are not currently eating any items.
#   maxbot what is <user> eating? - maxbot displays what item, if any, <user> is currently eating.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.respond /i'm eating (.+)$/i, (res) ->
    user = res.message.user.name.toLowerCase()
    previousFood = robot.brain.get("#{user}-pica")

    if !(previousFood is null)
      res.send "You were previously eating #{previousFood}."

    food = res.match[1]

    robot.brain.set("#{user}-pica", food)
    res.send "You are now eating #{food}."

  robot.respond /i'm done eating$/i, (res) ->
    user = res.message.user.name.toLowerCase()

    robot.brain.remove("#{user}-pica")
    res.send "You are no longer eating anything."

  robot.respond /what is (\w+) eating\??$/i, (res) ->
    user = res.match[1]
    food = robot.brain.get("#{user}-pica")

    if food is null
      res.send "#{user} is not eating anything right now."
    else
      res.send "#{user} is eating #{food}."
