# Description:
#   Looks up Magic: the Gathering cards using the Deckbrew API.
#
# Commands:
#   maxbot mtg <card> - Queries Deckbrew by name for <card>. Displays one textual spoiler per search - an exact card name match for the search term if present or the first card result otherwise. When 15 or fewer cards match the search term, displays their names in a list.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.respond /mtg (.*)$/i, (res) ->
    name = res.match[1]

    if name
      res.http("https://api.deckbrew.com/mtg/cards?name=#{name}").get() (err, response, body) ->
        json = JSON.parse(body)

        if json.length is 0
          res.send ">> No cards match \"#{name}\"."
          return

        if json.length is 1
          res.send card(json[0])
          return

        if json.length > 1
          otherCards = []
          requestedCard = ''

          for result in json
            if result.name.toLowerCase() is res.match[1].toLowerCase()
              requestedCard = result
              continue

            otherCards.push result.name

          if requestedCard is ''
            requestedCard = json[0]
            otherCards.splice(0, 1)

          res.send card(requestedCard)

          if otherCards.length is 1
            res.send ">> #{otherCards.length} other card matches \"#{name}\": #{otherCards.join("; ")}."
          else if otherCards.length < 16
            res.send ">> #{otherCards.length} other cards match \"#{name}\": #{otherCards.join("; ")}."
          else if otherCards.length < 99
            res.send ">> #{otherCards.length} other cards match \"#{name}\"."
          else
            # Deckbrew paginates at 100
            res.send ">> 100 or more other cards match \"#{name}\"."

# Builds a textual representation of a card
card = (json) ->
  typeLine = (capitalize(type) for type in json.types).join(" ")
  supertypes = (capitalize(supertype) for supertype in json.supertypes).join(" ") if json.supertypes
  typeLine = supertypes + " " + typeLine if supertypes
  subtypes = (capitalize(subtype) for subtype in json.subtypes).join(" ") if json.subtypes
  typeLine = typeLine + " - " + subtypes if subtypes

  text = json.text.replace /\n/g, "\n  | "

  power = json.power
  toughness = json.toughness
  pt = ""
  pt = "\n  | #{power}/#{toughness}" if power && toughness

  "  | #{json.name} #{json.cost}\n  | #{typeLine}\n  | #{text}#{pt}\n"

# Capitalizes a word
capitalize = (word) ->
  word[0].toUpperCase() + word[1..-1].toLowerCase()
