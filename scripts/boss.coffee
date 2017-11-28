# Description:
#   Simulates boss kills from various video games.
#
# Commands:
#   maxbot kill boss <boss> - Simulates a kill of <boss>.
#   maxbot bosses - Lists available bosses.
#
# Author:
#   Max Philips

bosses = [
  {
    name: "General Graardor",
    inputs: [
      "bandos",
      "general graardor",
      "graardor"
    ],
    style: "rs",
    dropTable: {
      always: [
        {
          name: "Big bones",
          quantity: {
            low: 1,
            high: 1
          }
        }
      ],
      table: [
        {
          name: "Rune 2h sword",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.095804743778057
        },
        {
          name: "Rune pickaxe",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.095804743778057
        },
        {
          name: "Rune longsword",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.095804743778057
        },
        {
          name: "Rune sword",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.002463054187192
        },
        {
          name: "Rune platebody",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.095804743778057
        },
        {
          name: "Bandos chestplate",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.002604166666667
        },
        {
          name: "Bandos tassets",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.002604166666667
        },
        {
          name: "Bandos boots",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.002604166666667
        },
        {
          name: "Nature rune",
          quantity: {
            low: 60,
            high: 70
          }
          rate: 0.047902371889029
        },
        {
          name: "Adamantite ore",
          quantity: {
            low: 15,
            high: 20
          }
          rate: 0.095804743778058
        },
        {
          name: "Coal",
          quantity: {
            low: 115,
            high: 120
          }
          rate: 0.095804743778058
        },
        {
          name: "Coins",
          quantity: {
            low: 19581,
            high: 21000
          }
          rate: 0.095804743778058
        },
        {
          name: "Snapdragon seed",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.047902371889029
        },
        {
          name: "Magic logs",
          quantity: {
            low: 15,
            high: 20
          }
          rate: 0.047902371889029
        },
        {
          name: "Super restore(4)",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.047902371889029
        },
        {
          name: "Grimy snapdragon",
          quantity: {
            low: 3,
            high: 3
          }
          rate: 0.047902371889029
        },
        {
          name: "Rare drop table",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.062992125984252
        },
        {
          name: "Bandos hilt",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.001968503937008
        },
        {
          name: "Godsword shard 1",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.00390625
        },
        {
          name: "Godsword shard 2",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.00390625
        },
        {
          name: "Godsword shard 3",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.00390625
        },
        {
          name: "Long bone",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0025
        },
        {
          name: "Curved bone",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0002
        },
        {
          name: "Pet general graardor",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0002
        }
      ]
    }
  },
  {
    name: "Kree'arra",
    inputs: [
      "arma",
      "armadyl",
      "kree",
      "kree'arra"
    ],
    style: "rs",
    dropTable: {
      always: [
        {
          name: "Big bones",
          quantity: {
            low: 1,
            high: 1
          }
        },
        {
          name: "Feather",
          quantity: {
            low: 1,
            high: 15
          }
        }
      ],
      table: [
        {
          name: "Rune crossbow",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.104318537163712
        },
        {
          name: "Rune sword",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.002463054187192
        },
        {
          name: "Black d'hide body",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.104318537163711
        },
        {
          name: "Armadyl helmet",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.002604166666667
        },
        {
          name: "Armadyl chestplate",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.002604166666667
        },
        {
          name: "Armadyl chainskirt",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.002604166666667
        },
        {
          name: "Runite bolts",
          quantity: {
            low: 18,
            high: 25
          }
          rate: 0.104318537163711
        },
        {
          name: "Mind rune",
          quantity: {
            low: 500,
            high: 601
          }
          rate: 0.052159268581856
        },
        {
          name: "Rune arrow",
          quantity: {
            low: 100,
            high: 105
          }
          rate: 0.052159268581856
        },
        {
          name: "Dragon bolts (e)",
          quantity: {
            low: 5,
            high: 15
          }
          rate: 0.052159268581856
        },
        {
          name: "Coins",
          quantity: {
            low: 18000,
            high: 21000
          }
          rate: 0.104318537163711
        },
        {
          name: "Dwarf weed",
          quantity: {
            low: 5,
            high: 22
          }
          rate: 0.104318537163711
        },
        {
          name: "Dwarf weed seed",
          quantity: {
            low: 3,
            high: 3
          }
          rate: 0.104318537163711
        },
        {
          name: "Ranging potion(3)",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.052159268581856
        },
        {
          name: "Super defence(3)",
          quantity: {
            low: 3,
            high: 3
          }
          rate: 0.052159268581856
        },
        {
          name: "Rare drop table",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.062992125984252
        },
        {
          name: "Crystal key",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.015625
        },
        {
          name: "Yew seed",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0078125
        },
        {
          name: "Godsword shard 1",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.00390625
        },
        {
          name: "Godsword shard 2",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.00390625
        },
        {
          name: "Godsword shard 3",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.00390625
        },
        {
          name: "Long bone",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0025
        },
        {
          name: "Armadyl hilt",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.001968503937008
        },
        {
          name: "Curved bone",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0002
        },
        {
          name: "Pet kree'arra",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0002
        }
      ]
    }
  },
  {
    name: "K'ril Tsutsaroth",
    inputs: [
      "zammy",
      "kril",
      "k'ril"
    ],
    style: "rs",
    dropTable: {
      always: [
        {
          name: "Ashes",
          quantity: {
            low: 1,
            high: 1
          }
        }
      ],
      table: [
        {
          name: "Adamant arrow(p++)",
          quantity: {
            low: 295,
            high: 300
          }
          rate: 0.095059374942583
        },
        {
          name: "Rune scimitar",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.047529687471292
        },
        {
          name: "Dragon dagger(p++)",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.047529687471292
        },
        {
          name: "Steam battlestaff",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0078125
        },
        {
          name: "Zamorakian spear",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0078125
        },
        {
          name: "Rune sword",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.002463054187192
        },
        {
          name: "Staff of the dead",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.001968503937008
        },
        {
          name: "Rune platelegs",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.095059374942583
        },
        {
          name: "Adamant platebody",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.095059374942583
        },
        {
          name: "Super attack(3)\n  3 Super strength(3)",
          quantity: {
            low: 3,
            high: 3
          }
          rate: 0.095059374942583
        },
        {
          name: "Super restore(3)\n  3 Zamorak brew(3)",
          quantity: {
            low: 3,
            high: 3
          }
          rate: 0.095059374942583
        },
        {
          name: "Death rune",
          quantity: {
            low: 120,
            high: 124
          }
          rate: 0.095059374942583
        },
        {
          name: "Coins",
          quantity: {
            low: 19632,
            high: 20073
          }
          rate: 0.095059374942582
        },
        {
          name: "Blood rune",
          quantity: {
            low: 80,
            high: 90
          }
          rate: 0.047529687471292
        },
        {
          name: "Grimy lantadyme",
          quantity: {
            low: 7,
            high: 13
          }
          rate: 0.047529687471292
        },
        {
          name: "Lantadyme seed",
          quantity: {
            low: 3,
            high: 3
          }
          rate: 0.047529687471292
        },
        {
          name: "Rare drop table",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.062992125984252
        },
        {
          name: "Godsword shard 1",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.00390625
        },
        {
          name: "Godsword shard 2",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.00390625
        },
        {
          name: "Godsword shard 3",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.00390625
        },
        {
          name: "Zamorak hilt",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.001968503937008
        },
        {
          name: "Pet k'ril tsutsaroth",
          quantity: {
            low: 1,
            high: 1
          }
          rate: 0.0002
        }
      ]
    }
  },
  {
    name: "Ragnaros, the Firelord",
    inputs: [
      "rag",
      "ragnaros"
    ],
    style: "wow",
    total: 100,
    dropTable: [
      {
        name: "Bloodfang Pants",
        rate: 22
      },
      {
        name: "Leggings of Transcendence",
        rate: 22
      },
      {
        name: "Perdition's Blade",
        rate: 22
      },
      {
        name: "Netherwind Pants",
        rate: 21
      },
      {
        name: "Band of Accuria",
        rate: 20
      },
      {
        name: "Dragon's Blood Cape",
        rate: 20
      },
      {
        name: "Legplates of Ten Storms",
        rate: 20
      },
      {
        name: "Cloak of the Shrouded Mists",
        rate: 19
      },
      {
        name: "Dragonstalker's Legguards",
        rate: 19
      },
      {
        name: "Legplates of Wrath",
        rate: 19
      },
      {
        name: "Nemesis Leggings",
        rate: 19
      },
      {
        name: "Onslaught Girdle",
        rate: 19
      },
      {
        name: "Stormrage Legguards",
        rate: 19
      },
      {
        name: "Band of Sulfuras",
        rate: 18
      },
      {
        name: "Choker of the Fire Lord",
        rate: 18
      },
      {
        name: "Crown of Destruction",
        rate: 18
      },
      {
        name: "Essence of the Pure Flame",
        rate: 18
      },
      {
        name: "Judgment Legplates",
        rate: 18
      },
      {
        name: "Malistar's Defender",
        rate: 18
      },
      {
        name: "Bonereaver's Edge",
        rate: 5
      },
      {
        name: "Shard of the Flame",
        rate: 5
      },
      {
        name: "Eye of Sulfuras",
        rate: 4
      },
      {
        name: "Spinal Reaver",
        rate: 4
      }
    ]
  },
  {
    name: "Sha of Anger",
    inputs: [
      "sha",
      "sha of anger"
    ],
    style: "wow",
    total: 3000
    dropTable: [
      {
        name: "Reins of the Heavenly Onyx Cloud Serpent",
        rate: 1
      }
    ]
  }
]

module.exports = (robot) ->
  robot.respond /bosses$/i, (res) ->
    message = ["These bosses are available to kill via `maxbot kill boss <boss>`:"]

    for boss in bosses
      inputs = boss["inputs"].join(", ")
      message.push("Boss: #{boss["name"]}; Inputs: #{inputs}")

    res.send message.join("\n  ")

  robot.respond /kill boss (.+)$/i, (res) ->
    bossToKill = ""

    for boss in bosses
      for input in boss["inputs"]
        bossToKill = boss if input is res.match[1].replace /\s+$/g, ""

    if bossToKill["style"] is "rs"
      res.send rsLoot(bossToKill)
    else
      res.send wowLoot(bossToKill, bossToKill["total"])

rsLoot = (boss) ->
  items = ["#{boss["name"]} dropped:"]

  for tableEntry in boss["dropTable"]["always"]
    items.push(rsItem(tableEntry["name"], tableEntry["quantity"]["low"], tableEntry["quantity"]["high"]))

  roll = Math.random()

  for tableEntry in boss["dropTable"]["table"]
    roll = roll - tableEntry["rate"]
    if roll <= 0
      items.push(rsItem(tableEntry["name"], tableEntry["quantity"]["low"], tableEntry["quantity"]["high"]))
      break

  items.join("\n  ")

rsItem = (name, low, high) ->
  "#{low + Math.floor(Math.random() * (high - low))} #{name}"

wowLoot = (boss, total) ->
  items = ["#{boss["name"]} dropped:"]

  for tableEntry in boss["dropTable"]
    roll = Math.floor(Math.random() * total) + 1
    items.push(tableEntry["name"]) if roll <= tableEntry["rate"]

  items.push("Pity gold") if items.length is 1

  items.join("\n  ")

tableTest = (boss) ->
  total = 0

  for tableEntry in boss["dropTable"]["table"]
    total = total + tableEntry["rate"]

  total
