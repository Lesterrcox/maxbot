# Description:
#   Defines words using https://owlbot.info/api/v2/dictionary/<word>.
#
# Commands:
#   maxbot define <word> - Displays owlbot's definition(s) and example(s) for <word>.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.respond /define (.+)$/i, (res) ->

    word = res.match[1]

    if (word.search(/\s/)) != -1
      res.send "I can only define single words :("
      return

    res.http(createUrl(word)).get() (err, response, body) ->

      json = JSON.parse(body)

      res.send "No definition found for #{word}." if json.length is 0

      res.send message(definition, index) for definition, index in JSON.parse(body)

      res.send "3). adjective: oh god, oh god, we're all going to die | Oh God, oh God, we're all going to die?" if word == "interesting"

# Creates the owlbot URL.
createUrl = (word) ->
  "https://owlbot.info/api/v2/dictionary/#{encodeURI(word)}?format=json"

# Builds the returned message.
message = (definition, index) ->

  other_bits = "#{index + 1}). #{definition["type"]}: #{definition["definition"]}"
  example = definition["example"]

  return other_bits if example == null

  [other_bits, example].join(" | ")
