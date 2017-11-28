# Description:
#   Interacts with the Old School RuneScape Hi Scores API.
#
# Commands:
#   maxbot rs <player> - Displays <player>'s Old School RuneScape hi scores, level only.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.respond /rs (.{2,12})$/i, (res) ->
    player = res.match[1]

    res.http(createUrl(player)).get() (err, response, body) ->
      res.send "Personal scores for #{player}\n#{prettyPrint(body)}"

# Creates the OSRS hi scores URL.
createUrl = (player) ->
  "http://services.runescape.com/m=hiscore_oldschool/index_lite.ws?player=#{encodeURI(player)}"

# Pretty prints the response body.
prettyPrint = (body) ->
  stats = body.split("\n")

  overall      = "     Overall: #{level(stats[0])}"
  attack       = "      Attack: #{level(stats[1])}"
  defence      = "     Defence: #{level(stats[2])}"
  strength     = "    Strength: #{level(stats[3])}"
  hitpoints    = "   Hitpoints: #{Math.max(10, level(stats[4]))}"
  ranged       = "      Ranged: #{level(stats[5])}"
  prayer       = "      Prayer: #{level(stats[6])}"
  magic        = "       Magic: #{level(stats[7])}"
  cooking      = "     Cooking: #{level(stats[8])}"
  woodcutting  = " Woodcutting: #{level(stats[9])}"
  fletching    = "   Fletching: #{level(stats[10])}"
  fishing      = "     Fishing: #{level(stats[11])}"
  firemaking   = "  Firemaking: #{level(stats[12])}"
  crafting     = "    Crafting: #{level(stats[13])}"
  smithing     = "    Smithing: #{level(stats[14])}"
  mining       = "      Mining: #{level(stats[15])}"
  herblore     = "    Herblore: #{level(stats[16])}"
  agility      = "     Agility: #{level(stats[17])}"
  thieving     = "    Thieving: #{level(stats[18])}"
  slayer       = "      Slayer: #{level(stats[19])}"
  farming      = "     Farming: #{level(stats[20])}"
  runecraft    = "   Runecraft: #{level(stats[21])}"
  hunter       = "      Hunter: #{level(stats[22])}"
  construction = "Construction: #{level(stats[23])}"
  combat       = "      Combat: #{combatStats(Number(level(stats[2])), Math.max(10, level(stats[4])), Number(level(stats[6])), Number(level(stats[1])), Number(level(stats[3])), Number(level(stats[5])), Number(level(stats[7])))}"

  " #{attack} #{hitpoints} #{mining}\n #{strength} #{agility} #{smithing}\n #{defence} #{herblore} #{fishing}\n #{ranged} #{thieving} #{cooking}\n #{prayer} #{crafting} #{firemaking}\n #{magic} #{fletching} #{woodcutting}\n #{runecraft} #{slayer} #{farming}\n#{construction} #{hunter} #{overall}\n #{combat}"

# Returns the level from a line of OSRS hi scores: <rank>,<level>,<experience>.
level = (line) ->
  pad2(line.split(',')[1])

# Pads a number with 2 spaces.
pad2 = (number) ->
  padX(number, 2)

# Pads a number with X spaces.
padX = (number, x) ->
  number += ''
  pads = x - number.length
  if (pads > 0) then new Array(pads + 1).join(' ') + number else number

# Calculates a player's combat level and guesses their account build.
combatStats = (def, hp, pray, atk, str, range, mage) ->
  base  = 0.25 * (def + hp + Math.floor(pray / 2.0))
  melee = 0.325 * (atk + str)
  range = 0.325 * (Math.floor(range / 2.0) + range)
  mage  = 0.325 * (Math.floor(mage / 2.0) + mage)

  combatLevel = Math.floor(base + Math.max(melee, range, mage))

  offense = "main"
  defense = ""

  if atk in [1..39] and str > 59 then offense = "obby"
  if atk in [40..49] then offense = "f2p"
  if atk in [50..59] then offense = "gmaul"
  if atk in [60..74] then offense = "dragon"
  if atk is 75 then offense = "ags"

  if def is 1 then defense = "pure"
  if def in [2..19] then defense = "pure (scuffed)"
  if def in [20..29] then defense = "initiate pure"
  if def in [30..39] then defense = "addy daddy"
  if def in [40..41] then defense = "rune pure"
  if def is 42 then defense = "voider"
  if def in [43..44] then defense = "voider (scuffed)"
  if def is 45 then defense = "zerker"
  if def in [46..69] then defense = "zerker (scuffed)"
  if def in [70..74] then defense = "barrows pure"
  if def is 75 then defense = "tank"

  if combatLevel is 3.0
    offense = "skiller"
    defense = ""

  trim("#{combatLevel} #{offense} #{defense}")

# Trims a string of beginning and ending whitespace.
trim = (input) ->
  input.replace /^\s+|\s+$/g, ""
